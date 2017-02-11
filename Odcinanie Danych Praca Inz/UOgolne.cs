using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;

namespace Odcinanie_Danych_Praca_Inz
{
    public partial class UOgolne : Form
    {
        private Ustawienia _oUstawienia;

        public UOgolne(Ustawienia oUstawienia)
        {
            this._oUstawienia = oUstawienia;

            InitializeComponent();

            this.cbLimit.DataSource = new List<int>() { 500, 1000, 5000, 10000, 50000 };

            //Ustawienia
            this.dtDataUsun.Value = this._oUstawienia.dataUsun;
            this.cbLimit.SelectedItem = this._oUstawienia.partLimit;
            this.txtPathEksport.Text = this._oUstawienia.pathEksport;
            this.txtPathLogi.Text = this._oUstawienia.pathLogi;

            if ( this._oUstawienia.pgSql != null )
            {
                this._oUstawienia.pgSql.Close();
                this.txtSerwer.Text = this._oUstawienia.pgSql.db_host;
                this.txtBaza.Text = this._oUstawienia.pgSql.db_database;
                this.txtLogin.Text = this._oUstawienia.pgSql.db_user;
                this.txtHaslo.Text = this._oUstawienia.pgSql.db_password;
                this.txtPort.Text = this._oUstawienia.pgSql.db_port;
            }
        }
   
        private bool WybierzPlik(string cTitle, out string cFileName, string cFilter = "Wszystkie pliki (*.*)|*.*")
        {
            cFileName = "";

            SaveFileDialog saveFileDialog = new SaveFileDialog();
            saveFileDialog.Title = cTitle;
            saveFileDialog.Filter = cFilter;

            if (saveFileDialog.ShowDialog() != System.Windows.Forms.DialogResult.OK)
                return (false);

            cFileName = saveFileDialog.FileName;

            return (true);
        }

        private void btnWybierzEksport_Click(object sender, EventArgs e)
        {
            string cFileName;

            if ( ! WybierzPlik("Wybierz plik eksportu", out cFileName, "Pliki sql (*.sql)|*.sql|Wszystkie pliki (*.*)|*.*") )
                return;

            // Valid
            if (cFileName == this.txtPathLogi.Text)
            {
                MessageBox.Show("Plik eksportu nie może być taki sam jak plik do logów.");
                return;
            }

            this.txtPathEksport.Text = cFileName;

            return;
        }

        private void btnWybierzLogi_Click(object sender, EventArgs e)
        {
            string cFileName;

            if (!WybierzPlik("Wybierz plik do logów", out cFileName, "Pliki txt (*.txt)|*.txt|Wszystkie pliki (*.*)|*.*"))
                
                return;

            // Valid
            if (cFileName == this.txtPathEksport.Text)
            {
                MessageBox.Show("Plik do logów nie może być taki sam jak plik eksportu.");
                return;
            }

            this.txtPathLogi.Text = cFileName;
            
            return;
        }
        
        private bool _ValidAndSave(bool lShort)
        {
            PostgreSQL pgSql = new PostgreSQL(this.txtSerwer.Text, this.txtPort.Text, this.txtLogin.Text, this.txtHaslo.Text, this.txtBaza.Text);

            // Pliki
            if (this.txtPathEksport.Text == String.Empty)
            {
                MessageBox.Show("Nie wypełniono pliku eksportu");
                this.btnWybierzEksport.Focus();
                return (false);
            }
            if (this.txtPathLogi.Text == String.Empty)
            {
                MessageBox.Show("Nie wypełniono pliku do logów");
                this.btnWybierzLogi.Focus();
                return (false);
            }

            // Połączenie pgSql
            if (!pgSql.PingConnection(false))
            {
                MessageBox.Show(pgSql.Error);
                return (false);
            }

            // Zapis Ustawień
            this._oUstawienia.pgSql = pgSql;
            this._oUstawienia.pathEksport = this.txtPathEksport.Text;
            this._oUstawienia.pathLogi = this.txtPathLogi.Text;
            this._oUstawienia.dataUsun = this.dtDataUsun.Value;
            this._oUstawienia.partLimit = (int)this.cbLimit.SelectedValue;

            if (lShort)
            {
                this._oUstawienia.setDefault();
                if(!_shortDBSValid())
                {
                    this._oUstawienia.pgSql.Close();
                    return false;
                }
            }

            return true;
        }

        private bool _shortDBSValid()
        {
            List<string> aTables = this._oUstawienia.pgSql.GetTables();
            List<string> aColumns;

            //Tabele
            if (!aTables.Contains(this._oUstawienia.tabZlecen) || !aTables.Contains(this._oUstawienia.tabPozycji) || !aTables.Contains(this._oUstawienia.tabKartotek) || !aTables.Contains(this._oUstawienia.tabTowarow) || !aTables.Contains(this._oUstawienia.tabPracownikow))
            {
                MessageBox.Show("Nieprawidłowy układ tabel");
                return false;
            }

            //Zlecenia
            aColumns = this._oUstawienia.pgSql.GeColumns(this._oUstawienia.tabZlecen);
            if (!aColumns.Contains(this._oUstawienia.kolZlecId) || !aColumns.Contains(this._oUstawienia.kolZlecPrac) || !aColumns.Contains(this._oUstawienia.kolZlecDataZak))
            {
                MessageBox.Show("Nieprawidłowy układ kolumn w tabeli zleceń");
                return false;
            }

            //Pozycje
            aColumns = this._oUstawienia.pgSql.GeColumns(this._oUstawienia.tabPozycji);
            if (!aColumns.Contains(this._oUstawienia.kolPozId) || !aColumns.Contains(this._oUstawienia.kolPozZlecen) || !aColumns.Contains(this._oUstawienia.kolPozTowar))
            {
                MessageBox.Show("Nieprawidłowy układ kolumn w tabeli pozycji");
                return false;
            }

            //Kartoteki
            aColumns = this._oUstawienia.pgSql.GeColumns(this._oUstawienia.tabKartotek);
            if(!aColumns.Contains(this._oUstawienia.kolKartId) || !aColumns.Contains(this._oUstawienia.kolKartStan) || !aColumns.Contains(this._oUstawienia.kolKartTowar) || !aColumns.Contains(this._oUstawienia.kolKartDataEdycji))
            {
                MessageBox.Show("Nieprawidłowy układ kolumn w tabeli kartotek towaru");
                return false;
            }

            //Towary
            aColumns = this._oUstawienia.pgSql.GeColumns(this._oUstawienia.tabTowarow);
            if(!aColumns.Contains(this._oUstawienia.kolTowId) || !aColumns.Contains(this._oUstawienia.kolTowDataEdycji) )
            {
                MessageBox.Show("Nieprawidłowy układ kolumn w tabeli katalogu towarów");
                return false;
            }

            //Pracownik
            aColumns = this._oUstawienia.pgSql.GeColumns(this._oUstawienia.tabPracownikow);
            if(!aColumns.Contains(this._oUstawienia.kolPracId) || !aColumns.Contains(this._oUstawienia.kolPracDataZakonczenia) )
            {
                MessageBox.Show("Nieprawidłowy układ kolumn w tabeli pracowników");
                return false;
            }

            return true;
        }

        private void btnDalej_Click(object sender, EventArgs e)
        {
            if (!this._ValidAndSave(true))
                return;

            this._oUstawienia.isShort = true;
            this.Close();
            new OdcinanieDanychView(this._oUstawienia).Show();

            return;
        }

        private void btnZaawans_Click(object sender, EventArgs e)
        {
            if (!this._ValidAndSave(false))
                return;

            this._oUstawienia.isShort = false;
            this.Close();
            new UZlecenie(this._oUstawienia).Show();
        }

        private void btnSprPolaczenie_Click(object sender, EventArgs e)
        {
            PostgreSQL pgSql = new PostgreSQL(this.txtSerwer.Text, this.txtPort.Text, this.txtLogin.Text, this.txtHaslo.Text, this.txtBaza.Text);
            MessageBox.Show( pgSql.PingConnection() ? "Połączono poprawnie." : pgSql.Error);

            return;
        }

        private void btnTestowy_Click(object sender, EventArgs e)
        {
            this.txtSerwer.Text = "az0104.srv.az.pl";
            this.txtLogin.Text = "mn161323_testapk";
            this.txtHaslo.Text = "studiauwm2016";
            this.txtPort.Text = "5432";
            this.txtBaza.Text = "mn161323_Krawiec1";
        }
    }
}
