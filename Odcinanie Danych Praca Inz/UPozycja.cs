using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Odcinanie_Danych_Praca_Inz
{
    public partial class UPozycja : Form
    {
        private Ustawienia _oUstawienia;
        private string _cTable;
        private bool _lTabPoz;
        private List<string> _aTabels;
        private List<string> _aColumns;

        public UPozycja(Ustawienia oUstawienia)
        {
            this._oUstawienia = oUstawienia;
            this._cTable = "";
            this._lTabPoz = false;
            this._aColumns = new List<string>();
            this._aTabels = this._oUstawienia.pgSql.GetTables();

            InitializeComponent();

            if (this._aTabels.Count == 0)
                MessageBox.Show("Brak tabel w bazie danych.");

            this.cbTabPoz.DataSource = this._aTabels;

            // Uzupełnienie
            this.cbTabPoz.Text = (this._aTabels.Contains(this._oUstawienia.tabPozycji) ? this._oUstawienia.tabPozycji : "");
            
            this.NakladkaPoz();
        }

        private void NakladkaPoz()
        {
            this.cbTabPoz.Enabled = !this._lTabPoz;
            this.btnTabPozWybierz.Text = this._lTabPoz ? "Zamień" : "Wybierz";

            this.cbKolZlec.Enabled = this._lTabPoz;
            this.cbKolPozId.Enabled = this._lTabPoz;
            this.cbKolTow.Enabled = this._lTabPoz;

            this.btnDalej.Enabled = this._lTabPoz;

            return;
        }

        private void btnPozTabWybierz_Click(object sender, EventArgs e)
        {
            if (! this.tabValid(this.cbTabPoz.Text))
                return;

            if (this._lTabPoz)
            {
                this._cTable = "";
                this._aColumns.Clear();
                this.cbKolPozId.Text = "";
                this.cbKolZlec.Text = "";
                this.cbKolTow.Text = "";
            }
            else
            {
                this._cTable = this.cbTabPoz.Text;
                this._aColumns = this._oUstawienia.pgSql.GeColumns(_cTable);

                if (this._aColumns.Count == 0)
                    MessageBox.Show("Brak kolumn w wybranej tabeli. Zmień Tabele.");

                this._aColumns.Insert(0, "");
                this.cbKolPozId.DataSource = this._aColumns.ToList();
                this.cbKolZlec.DataSource = this._aColumns.ToList();
                this.cbKolTow.DataSource = this._aColumns.ToList();

                //Uzupełnienie
                this.cbKolPozId.Text = (this._aColumns.Contains(this._oUstawienia.kolPozId) ? this._oUstawienia.kolPozId : "");
                this.cbKolZlec.Text = (this._aColumns.Contains(this._oUstawienia.kolPozZlecen) ? this._oUstawienia.kolPozZlecen : "");
                this.cbKolTow.Text = (this._aColumns.Contains(this._oUstawienia.kolPozTowar) ? this._oUstawienia.kolPozTowar : "");       
            }

            this._lTabPoz = !this._lTabPoz;
            this.NakladkaPoz();
        }

        private void cbTabPoz_Validating(object sender, CancelEventArgs e)
        {
            ComboBox cbBox = sender as ComboBox;

            if (cbBox.Text == "")
                return;

            if (!this._aTabels.Contains(cbBox.Text))
            {
                MessageBox.Show("Nieprawidłowa wybrana tabela.");
                cbBox.Text = "";
            }
        }

        private void cbKol_Validating(object sender, CancelEventArgs e)
        {
            ComboBox cbBox = sender as ComboBox;

            if (cbBox.Text == "")
                return;

            if (!this._aColumns.Contains(cbBox.Text))
            {
                MessageBox.Show("Nieprawidłowa wybrana kolumna.");
                cbBox.Text = "";
            }
        }

        private void btnWstecz_Click(object sender, EventArgs e)
        {
            this.Close();
            new UZlecenie(this._oUstawienia).Show();
        }

        private bool tabValid( string cTable )
        {
            if (cTable == "")
            {
                MessageBox.Show("Wybierz tablicę przedstawiającą pozycje zlecenia.");
                return (false);
            }

            if (cTable == this._oUstawienia.tabZlecen)
            {
                MessageBox.Show("Wybrana tablica przedstawia już zlecenia. Wybierz poprawną tablicę przedstawiającą pozycje zlecenia.");
                return (false);
            }

            return (true);
        }

        private bool btnDalejValid()
        {
            if(! this.tabValid(this.cbTabPoz.Text))
                return (false);
            
            if (this.cbKolPozId.Text == "")
            {
                MessageBox.Show("Wybierz kolumnę przedstawiającą unikalną wartość pozycji zlecenia.");
                return (false);
            }

            if (this.cbKolZlec.Text == "")
            {
                MessageBox.Show("Wybierz kolumnę przedstawiającą numer zlecenia w pozycji.");
                return (false);
            }

            if (this.cbKolTow.Text == "")
            {
                MessageBox.Show("Wybierz kolumnę przedstawiającą towar na pozycji zlecenia.");
                return (false);
            }

            return (true);
        }

        private void btnDalej_Click(object sender, EventArgs e)
        {
            // Valid
            if (!btnDalejValid())
                return;

            // Zapis Ustawień
            this._oUstawienia.tabPozycji = this.cbTabPoz.Text;
            this._oUstawienia.kolPozId = this.cbKolPozId.Text;
            this._oUstawienia.kolPozZlecen = this.cbKolZlec.Text;
            this._oUstawienia.kolPozTowar = this.cbKolTow.Text;

            this.Close();
            new UTowar(this._oUstawienia).Show();
            
            return;
        }
    }
}
