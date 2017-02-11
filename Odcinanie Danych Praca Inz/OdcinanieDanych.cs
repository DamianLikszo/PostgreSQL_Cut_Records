using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.ComponentModel;
using System.Windows.Forms;

namespace Odcinanie_Danych_Praca_Inz
{
    class TableCut
    {
        public enum Types { Brak, Pozycja, Zlecenie, Pracownik, Kartoteka, Towar };

        public string name;
        public string colUniRow;
        public Types type;
        
        public TableCut(string name, string uni, Types type)
        {
            this.name = name;
            this.colUniRow = uni;
            this.type = type;
        } 
    }

    public class OdcinanieDanych
    {
        private Ustawienia _oUstawienia;
        private PostgreSQL _pgSql;

        private string _cError;

        private int _countAllRec;           // wszystkie rekordy w bazie
        private int _countDeletedRec;       // rekordy usunięte
        private int _countProblemRec;       // rekordy których nie udało się usunąć

        private int _sumDeletedRec;         // suma rekordów usuniętych
        private int _sumProblemRec;         // suma rekordów których nie udało się usunąć

        private int _sqlLimit;              // limit paczki rekordów
        
        public string Error { get { return this._cError; } }

        public OdcinanieDanych(Ustawienia oUstawienia, ProgressBar pgbTables, ProgressBar pgbRecords, Label labTable)
        {
            this._oUstawienia = oUstawienia;
            this._pgSql = oUstawienia.pgSql;
            this._sqlLimit = oUstawienia.partLimit;
        }

        /// <summary>
        /// Zapoczatkowanie procesu odcinania danych
        /// </summary>
        /// <returns>Listę odciętych wartości z poszczególnych tabel (zlecenia, kartoteki towarów, pracownicy)</returns>
        public bool OdetnijDane(BackgroundWorker worker)
        {
            string cPathTmp;
            List<TableCut> aTabels = new List<TableCut>();

            this._countAllRec = 0;
            this._countDeletedRec = 0;
            this._countProblemRec = 0;

            this._sumDeletedRec = 0;
            this._sumProblemRec = 0;

            List<RowObject> aRecords;
            this._error("", true);
            int nLimit = this._sqlLimit;
            ProgressBarStruct oProgressBarStruct = new ProgressBarStruct();
            
            // Wybrane tabele do odcięcia danych
            aTabels.Add(new TableCut(this._oUstawienia.tabPozycji, this._oUstawienia.kolPozId, TableCut.Types.Pozycja));
            aTabels.Add(new TableCut(this._oUstawienia.tabZlecen, this._oUstawienia.kolZlecId, TableCut.Types.Zlecenie));
            aTabels.Add(new TableCut(this._oUstawienia.tabKartotek, this._oUstawienia.kolKartId, TableCut.Types.Kartoteka));
            aTabels.Add(new TableCut(this._oUstawienia.tabTowarow, this._oUstawienia.kolTowId, TableCut.Types.Towar));
            aTabels.Add(new TableCut(this._oUstawienia.tabPracownikow, this._oUstawienia.kolPracId, TableCut.Types.Pracownik));

            this._export("-- EXPORT ( "+ DateTime.Now +" )");
            this._log("/*****************************************************************************/");
            this._log("//            Rozpoczęcie Odcianania danych - " + DateTime.Now + "            //");
            this._log("/*****************************************************************************/");
            
            this._log("// Sprawdzenie połączenia z bazą: ", false);
            if (this._pgSql.PingConnection())
                this._log(" OK ");
            else
            {
                this._log(" BŁĄD ");
                this._error("Błąd połączenia z bazą danych.");
                return (false);
            }

            cPathTmp = Path.GetTempFileName();

            foreach (TableCut table in aTabels)
            {
                this._countAllRec = this._pgSql.GetCountRecords(table.name);
                this._countDeletedRec = 0;
                this._countProblemRec = 0;
                oProgressBarStruct.sumAllRec += this._countAllRec;
                oProgressBarStruct.labTab = table.name;

                oProgressBarStruct.records = 0;
                oProgressBarStruct.tables++;
                worker.ReportProgress(0, oProgressBarStruct);
                
                this._log("-------------------------------------------------------------------------------");
                this._log("* TABELA: " + table.name + " ( " + DateTime.Now + " ) | " + this._countAllRec.ToString() + " rekordów");
                this._tmpexport(cPathTmp, "-- TABLE: " + table.name);

                if (this._countAllRec == 0)
                {
                    this._log("Brak rekordów w tabeli");
                    continue;
                }

                // Pobieramy liste rekordów do operacji
                while ((aRecords = this._getRecordsCut(table, nLimit)).Count  > 0)
                {
                    
                    // usunięcie rekordów
                    if (!this._deleteRecords(table, ref aRecords))
                        this._error("Nie usunięto niektórych rekordów. Sprawdź logi operacji.");

                    //tworzenie eksportu
                    this._createExport(table, aRecords, cPathTmp);                   

                    oProgressBarStruct.records = (int)(((this._countDeletedRec) / (float)this._countAllRec ) * 100);
                    oProgressBarStruct.sumDeletedRec = this._sumDeletedRec;
                    oProgressBarStruct.sumProblemRec = this._sumProblemRec;
                    worker.ReportProgress(0, oProgressBarStruct);

                    if (worker.CancellationPending)
                        break;

                    System.Threading.Thread.Sleep(1000);

                    //wyjście jeżeli nie ma już rekordów lub error
                    if (aRecords.Count != this._sqlLimit)
                        break;
                }

                oProgressBarStruct.records = 100;
                worker.ReportProgress(0, oProgressBarStruct);

                this._log("-------------------------------------------------------------------------------");
                this._log("Ilość rekordów: " + this._countAllRec.ToString());
                this._log("Ilość rekordów usuniętych: " + this._countDeletedRec.ToString());
                this._log("Ilość rekordów, których nie udało się usunąć: " + this._countProblemRec.ToString());

                if (worker.CancellationPending)
                {
                    this._error("");
                    this._error("Przerwano operację.");
                    this._error("Sprawdź w logach, które rekordy zostały  już usunięte lub zaimportuj do bazy plik eksportu.");
                    break;
                }
            }

            // Przeładowanie eksportu
            this._przeładujExport(cPathTmp);
            File.Delete(cPathTmp);

            this._log("/*****************************************************************************/");
            this._log("//              Koniec Odcianania danych - " + DateTime.Now + "               //");
            this._log("/*****************************************************************************/");

            return (true);
        }

        /// <summary>
        /// Pobranie listy rekordów do usunięcia
        /// </summary>
        /// <param name="table">nazwa tabeli w bazie danych, z której pochodzą rekordy</param>
        /// <param name="nLimit">limit rekordów</param>
        /// <param name="nOffset">od którego numeru rekordu zacząć</param>
        /// <returns>Lista rekordów do usunięcia</returns>
        private List<RowObject> _getRecordsCut(TableCut table, int nLimit)
        {
            List<RowObject> aRecords;
            
            switch (table.type)
            {
                case TableCut.Types.Pozycja:
                    aRecords = this._pgSql.GetRecordsCutPositions(table.name, this._oUstawienia, nLimit);
                    break;
                case TableCut.Types.Zlecenie:
                    aRecords = this._pgSql.GetRecordsCutOrders(table.name, this._oUstawienia, nLimit);
                    break;
                case TableCut.Types.Pracownik:
                    aRecords = this._pgSql.GetRecordsCutEmployees(table.name, this._oUstawienia, nLimit);
                    break;
                case TableCut.Types.Kartoteka:
                    aRecords = this._pgSql.GetRecordsCutQuantity(table.name, this._oUstawienia, nLimit);
                    break;
                case TableCut.Types.Towar:
                    aRecords = this._pgSql.GetRecordsCutProducts(table.name, this._oUstawienia, nLimit);
                    break;
                default:
                    aRecords = new List<RowObject>();
                    break;
            }

            return aRecords;
        }

        /// <summary>
        /// Przygotowanie rokordów do eksportu
        /// </summary>
        /// <param name="table">nazwa tabeli w bazie danych, z której pochodzą rekordy</param>
        /// <param name="aRecords">lista rekordów do eksportu</param>
        /// <param name="cPathTmp">ścieżka do pliku tmp</param>
        private void _createExport(TableCut table, List<RowObject> aRecords, string cPathTmp)
        {
            string export = "";
            List<string> aValues = new List<string>();

            foreach (RowObject row in aRecords)
            {
                aValues.Clear();

                foreach (object value in row.aCols.Values)
                {
                    if (System.DBNull.Value.Equals(value))
                        aValues.Add("null");
                    else
                        aValues.Add("'" + value.ToString().Replace(',', '.') + "'");
                }

                export += "INSERT INTO " + table.name + " (" + String.Join(", ", row.aCols.Keys) + ") VALUES (" + String.Join(", ", aValues) + ");\n";
            }

            this._tmpexport(cPathTmp, export);

            return;
        }

        /// <summary>
        /// Usunięcie wybranych rekordów
        /// </summary>
        /// <param name="table">nazwa tabeli w bazie danych, z której pochodzą rekordy</param>
        /// <param name="aRecords">referencja do listy rekordów</param>
        /// <returns>Czy udąło się usunąć wszystkie rekordy</returns>
        private bool _deleteRecords(TableCut table, ref List<RowObject> aRecords)
        {
            List<RowObject> aDeleted = this._pgSql.DeleteRecords(table.name, table.colUniRow, aRecords);
            bool lContains, lRet = true;

            int item1, item2;

            foreach (RowObject row in aRecords.ToList())
            {
                item1 = Convert.ToInt32(row.aCols[table.colUniRow]);
                this._log("- " + table.colUniRow + " == " + item1.ToString() + " : ", false);
                lContains = false;

                foreach (RowObject rowdel in aDeleted)
                {
                    item2 = Convert.ToInt32(rowdel.aCols[table.colUniRow]);
                    if (item2 == item1)
                    {
                        lContains = true;
                        break;
                    }
                }
                
                if (lContains)
                {
                    this._log(" USUNIĘTO");
                    this._countDeletedRec++;
                    this._sumDeletedRec++;
                }
                else
                {
                    this._log(" NIE MOŻNA USUNĄĆ REKORDU ( " + this._pgSql.Error + ")");
                    aRecords.Remove(row);
                    this._countProblemRec++;
                    this._sumProblemRec++;
                    lRet = false;
                }
            }

            return (lRet);
        }

        /// <summary>
        /// Metoda przepisuje plik tymczasowy z eksportem w odwrotnej kolejności
        /// </summary>
        /// <param name="cPathTmp">ścieżka do pliku tymczasowego</param>
        /// <returns>czy operacja powiodła się poprawnie</returns>
        private bool _przeładujExport(string cPathTmp)
        {
            string[] aLines;

            try
            {
                aLines = File.ReadAllLines(cPathTmp);
                aLines.Reverse(); 
            }
            catch (Exception)
            {
                MessageBox.Show("Nie można przeładować pliku eksportu.");
                throw;
            }

            foreach (string line in aLines)
            {
                this._export(line);
            }
            
            return (true);
        }

        private void _tmpexport(string cPath, string cExport)
        {
            if (!File.Exists(cPath))
                File.Create(cPath).Dispose();
            
            using (StreamWriter file = new StreamWriter(cPath, true))
            {
                file.WriteLine(cExport);
            }
            
            return;
        }

        /// <summary>
        /// Wpisanie w plik eksportu komendy sql
        /// </summary>
        /// <param name="cExport">Komenda sql</param>
        private void _export(string cExport)
        {
            string cPath = this._oUstawienia.pathEksport;
            
            if (!File.Exists(cPath))
                File.Create(cPath).Dispose();

            using (StreamWriter file = new StreamWriter(cPath, true))
            {
                file.WriteLine(cExport);

                file.Close();
            }
            
            return;
        }

        /// <summary>
        /// Wpisanie w dziennik logów podanych informacji
        /// </summary>
        /// <param name="cLog">treść wpisu</param>
        /// <param name="lNewLine">czy wpis ma zakończyć linię (domyślnie TAK)</param>
        private void _log(string cLog, bool lNewLine = true)
        {
            string cPath = this._oUstawienia.pathLogi;


            if (!File.Exists(cPath))
                File.Create(cPath).Dispose();
            
            if (lNewLine)
                cLog += "\n";

            using (StreamWriter file = new StreamWriter(cPath, true))
            {
                file.Write(cLog);

                file.Close();
            }
            
            return;
        }

        private void _error(string cError, bool lClear = false)
        {
            if (lClear)
                this._cError = "";
            else
                this._cError += cError+"\n";

            return;
        }
    }
}
