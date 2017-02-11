using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Npgsql;

namespace Odcinanie_Danych_Praca_Inz
{
    public class PostgreSQL
    {
        public string db_host = "";
        public string db_port = "";
        public string db_user = "";
        public string db_password = "";
        public string db_database = "";

        private NpgsqlConnection _objDb = null;
        private string _cError = "";
        private bool _lConnected = false;

        public string Error { get { return this._cError; } }

        public PostgreSQL(string host, string port, string user, string password, string database)
        {
            this.db_host = host;
            this.db_port = port;
            this.db_user = user;
            this.db_password = password;
            this.db_database = database;
        }
        
        public bool PingConnection( bool lClose = true)
        {
            bool lRet = false;

            if ((lRet = this.Connection()) && lClose)
                this.Close();

            return (lRet);
        }

        public List<string> GeColumns(string cTable)
        {
            string zapytanie = "SELECT column_name FROM information_schema.columns WHERE TABLE_NAME='" + cTable + "';";
            List<string> aColumns = new List<string>();

            if (cTable == String.Empty)
            {
                return (aColumns);
            }

            foreach (RowObject item in this._ListObjectsComand(zapytanie))
            {
                aColumns.Add(item.sRead("column_name"));
            }

            return aColumns;
        }

        public List<string> GetTables()
        {
            string zapytanie = "SELECT table_name FROM information_schema.tables WHERE table_type='BASE TABLE' AND table_schema='public' ;";
            List<string> aTables = new List<string>();

            foreach (RowObject item in this._ListObjectsComand(zapytanie))
            {
                aTables.Add(item.sRead("table_name"));
            }

            return aTables;
        }
       
        public List<RowObject> GetRecordsCutQuantity( string cTable, Ustawienia oUstawienia, int nLimit)
        {
            string zapytanie = "SELECT t1.* FROM " + cTable + " AS t1";
            zapytanie += " LEFT JOIN " + oUstawienia.tabTowarow + " AS t2 ON t1." + oUstawienia.kolKartTowar + " = t2." + oUstawienia.kolTowId;
            zapytanie += " WHERE t1." + oUstawienia.kolKartDataEdycji + " < '" + oUstawienia.dataUsun.ToString("yyyy-MM-dd") + "' AND t1." + oUstawienia.kolKartStan + " = 0";
            zapytanie += " LIMIT " + nLimit.ToString() + ";";

            return (this._ListObjectsComand(zapytanie));
        }

        public List<RowObject> GetRecordsCutEmployees( string cTable, Ustawienia oUstawienia, int nLimit )
        {
            string zapytanie = "SELECT t1.* FROM " + cTable + " AS t1";
            zapytanie += " LEFT JOIN " + oUstawienia.tabZlecen + " AS t2 ON t1." + oUstawienia.kolPracId + " = t2." + oUstawienia.kolZlecPrac;
            zapytanie += " WHERE t2." + oUstawienia.kolZlecPrac + " IS NULL AND t1." + oUstawienia.kolPracDataZakonczenia + " < '" + oUstawienia.dataUsun.ToString("yyyy-MM-dd") + "'";
            zapytanie += " LIMIT " + nLimit.ToString() + ";";

            return (this._ListObjectsComand(zapytanie));
        }

        public List<RowObject> GetRecordsCutOrders( string cTable, Ustawienia oUstawienia, int nLimit )
        {
            string zapytanie = "SELECT t1.* FROM " + cTable + " AS t1";
            zapytanie += " LEFT JOIN " + oUstawienia.tabPozycji + " AS t2 ON t1." + oUstawienia.kolZlecId + " = t2." + oUstawienia.kolPozZlecen;
            zapytanie += " WHERE t2." + oUstawienia.kolPozZlecen + " IS NULL";
            zapytanie += " AND t1." + oUstawienia.kolZlecDataZak + " < '" + oUstawienia.dataUsun.ToString("yyyy-MM-dd") + "'"; 
            zapytanie += " LIMIT " + nLimit.ToString() + ";";

            return (this._ListObjectsComand(zapytanie));
        }

        public List<RowObject> GetRecordsCutProducts(string cTable, Ustawienia oUstawienia, int nLimit )
        {
            string zapytanie = "SELECT t1.* FROM " + cTable + " AS t1";
            zapytanie += " LEFT JOIN " + oUstawienia.tabKartotek + " AS t2 ON t1." + oUstawienia.kolTowId + " = t2." + oUstawienia.kolKartTowar;
            zapytanie += " LEFT JOIN " + oUstawienia.tabPozycji + " AS t3 ON t1." + oUstawienia.kolTowId + " = t3." + oUstawienia.kolPozTowar;
            zapytanie += " WHERE t2." + oUstawienia.kolKartTowar + " IS NULL AND t3." + oUstawienia.kolPozTowar + " IS NULL ";
            zapytanie += " AND t1." + oUstawienia.kolTowDataEdycji + " < '" + oUstawienia.dataUsun.ToString("yyyy-MM-dd") + "'";
            zapytanie += " LIMIT " + nLimit.ToString() + ";";

            return (this._ListObjectsComand(zapytanie));
        }

        public List<RowObject> GetRecordsCutPositions(string cTable, Ustawienia oUstawienia, int nLimit )
        {
            string zapytanie = "SELECT t1.* FROM " + cTable + " AS t1";
            zapytanie += " LEFT JOIN " + oUstawienia.tabZlecen + " AS t2 ON t1." + oUstawienia.kolPozZlecen + " = t2." + oUstawienia.kolZlecId;
            zapytanie += " WHERE t2." + oUstawienia.kolZlecDataZak + " < '" + oUstawienia.dataUsun.ToString("yyyy-MM-dd") + "'";
            zapytanie += " LIMIT " + nLimit.ToString() + ";";

            return (this._ListObjectsComand(zapytanie));
        }

        public List<RowObject> DeleteRecords(string cTable, string cColUni, List<RowObject> aRecords)
        {
            List<object> aUniRows = RowObject.GetOneColumn(aRecords, cColUni);

            string zapytanie = "DELETE FROM " + cTable + " WHERE " + cColUni + " IN (" + String.Join(" ,", aUniRows) + ") RETURNING " + cColUni + ";";
            
            return (this._ListObjectsComand(zapytanie));
        } 

        public int GetCountRecords(string cTable)
        {
            string zapytanie = "SELECT count(*) FROM " + cTable + ";";
            List<RowObject> aRet = this._ListObjectsComand(zapytanie);

            //sprawdzamy czy dostaliśmy wynik
            if (aRet.Count > 0)
                return Convert.ToInt32(aRet[0].aCols.First().Value);
            else
                return 0;
        }
        
        private List<RowObject> _ListObjectsComand(string zapytanie)
        {
            List<RowObject> aObiects = new List<RowObject>();
            this._cError = String.Empty;

            // podtrzymanie połaczenia
            if(!this._lConnected || this._objDb == null || this._objDb.State != System.Data.ConnectionState.Open )
            {
                this.Connection(); 
            }
            
            if (this._lConnected && this._objDb != null && this._objDb.State == System.Data.ConnectionState.Open )
            {
                NpgsqlCommand cmd = new NpgsqlCommand(zapytanie, this._objDb);
                try
                {
                    NpgsqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        RowObject oRow = new RowObject();
                        for (int i = 0; i < dr.FieldCount; i++)
                        {
                            oRow.Add(dr.GetName(i), dr.GetValue(i));
                        }
                        aObiects.Add(oRow);
                    }

                    dr.Close();
                }
                catch (NpgsqlException ex)
                {
                    this._cError = "Błąd: " + ex.Message;
                }

                cmd.Dispose();
            }
            else
            {
                this._cError = "Brak połączenia z bazą danych";
            }

            return aObiects;
        }

        public bool Connection()
        {
            bool lRet = true;

            this._cError = String.Empty;

            if(this.db_host == String.Empty || this.db_port == String.Empty || this.db_user == String.Empty || this.db_database == String.Empty )
            {
                this._cError = "Nie wypełniono wszystkich parametrów połączenia.";
                return (false);
            }

            try
            {
                string szConection = "Server=" + this.db_host + ";Port=" + this.db_port + ";User Id=" + this.db_user + ";Password=" + this.db_password + ";Database=" + this.db_database;
                this._objDb = new NpgsqlConnection(szConection);
                this._objDb.Open();
            }
            catch
            {
                this._cError = "Nie udało połączyć się do bazy.";
                lRet = false;
            }

            this._lConnected = lRet;

            return (lRet);
        }

        public void Close()
        {
            if (this._objDb == null)
                return;

            if (this._objDb.State == System.Data.ConnectionState.Open)
            {
                this._objDb.Close();
            }

            this._objDb.Dispose();
            this._lConnected = false;

            return;
        }
    }
}
