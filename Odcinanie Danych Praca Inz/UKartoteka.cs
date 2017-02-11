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
    public partial class UKartoteka : Form
    {
        private Ustawienia _oUstawienia;
        private string _cTable;
        private bool _lTabKart;
        private List<string> _aColumns;
        private List<string> _aTabels;

        public UKartoteka(Ustawienia oUstawienia)
        {
            this._oUstawienia = oUstawienia;
            this._cTable = "";
            this._lTabKart = false;
            this._aColumns = new List<string>();
            this._aTabels = this._oUstawienia.pgSql.GetTables();

            InitializeComponent();

            if (this._aTabels.Count == 0)
                MessageBox.Show("Brak tabel w bazie danych.");
            
            this.cbTabKart.DataSource = this._aTabels;

            // Uzupełnienie
            this.cbTabKart.Text = (this._aTabels.Contains(this._oUstawienia.tabKartotek) ? this._oUstawienia.tabKartotek : "");
            
            this.NakladkaKartZlec();
        }

        private void NakladkaKartZlec()
        {
            this.cbTabKart.Enabled = !this._lTabKart;
            this.btnTabKartWybierz.Text = this._lTabKart ? "Zamień" : "Wybierz";

            this.cbKolKartId.Enabled = this._lTabKart;
            this.cbKolStan.Enabled = this._lTabKart;
            this.cbKolTow.Enabled = this._lTabKart;
            this.cbKolDataEdycji.Enabled = this._lTabKart;

            this.btnDalej.Enabled = this._lTabKart;

            return;
        }

        private void btnTabKartWybierz_Click(object sender, EventArgs e)
        {
            if (!this.tabValid(this.cbTabKart.Text))
                return;

            if (this._lTabKart)
            {
                this._cTable = "";
                this._aColumns.Clear();
                this.cbKolKartId.Text = "";
                this.cbKolStan.Text = "";
                this.cbKolTow.Text = "";
                this.cbKolDataEdycji.Text = "";
            }
            else
            {
                this._cTable = this.cbTabKart.Text;
                this._aColumns = this._oUstawienia.pgSql.GeColumns(_cTable);

                if (this._aColumns.Count == 0)
                    MessageBox.Show("Brak kolumn w wybranej tabeli. Zmień Tabele.");

                this._aColumns.Insert(0, "");
                this.cbKolKartId.DataSource = this._aColumns.ToList();
                this.cbKolStan.DataSource = this._aColumns.ToList();
                this.cbKolDataEdycji.DataSource = this._aColumns.ToList();
                this.cbKolTow.DataSource = this._aColumns.ToList();

                // Uzupełnienie
                this.cbKolKartId.Text = (this._aColumns.Contains(this._oUstawienia.kolKartId) ? this._oUstawienia.kolKartId : "");
                this.cbKolStan.Text = (this._aColumns.Contains(this._oUstawienia.kolKartStan) ? this._oUstawienia.kolKartStan : "");
                this.cbKolDataEdycji.Text = (this._aColumns.Contains(this._oUstawienia.kolKartDataEdycji) ? this._oUstawienia.kolKartDataEdycji : "");
                this.cbKolTow.Text = (this._aColumns.Contains(this._oUstawienia.kolKartTowar) ? this._oUstawienia.kolKartTowar : "");        
            }

            this._lTabKart = !this._lTabKart;
            this.NakladkaKartZlec();
        }

        private bool tabValid( string cTable )
        {
            if (cTable == "")
            {
                MessageBox.Show("Wybierz tablicę przedstawiającą kartoteki magazynu.");
                return (false);
            }

            if (cTable == this._oUstawienia.tabZlecen)
            {
                MessageBox.Show("Wybrana tablica przedstawia już zlecenia. Wybierz poprawną tablicę przedstawiającą kartoteki magazynu.");
                return (false);
            }

            if (cTable == this._oUstawienia.tabPozycji)
            {
                MessageBox.Show("Wybrana tablica przedstawia już pozycje zlecenia. Wybierz poprawną tablicę przedstawiającą kartoteki magazynu.");
                return (false);
            }

            if (cTable == this._oUstawienia.tabTowarow)
            {
                MessageBox.Show("Wybrana tablica przedstawia już katalog towarów. Wybierz poprawną tablicę przedstawiającą kartoteki magazynu.");
                return (false);
            }
            
            return (true);
        }

        private bool btnDalejValid()
        {
            if (!this.tabValid(this.cbTabKart.Text))
                return (false);

            if (this.cbKolKartId.Text == "")
            {
                MessageBox.Show("Wybierz kolumnę przedstawiającą stan kartoteki magazynu.");
                return (false);
            }

            if (this.cbKolStan.Text == "")
            {
                MessageBox.Show("Wybierz kolumnę przedstawiającą stan kartoteki magazynu.");
                return (false);
            }

            if (this.cbKolTow.Text == "")
            {
                MessageBox.Show("Wybierz kolumnę przedstawiającą towar na kartotece magazynu.");
                return (false);
            }

            if (this.cbKolDataEdycji.Text == "")
            {
                MessageBox.Show("Wybierz kolumnę przedstawiającą datę ostatniej edycji kartoteki magazynu.");
                return (false);
            }

            return (true);
        }

        private void btnDalej_Click(object sender, EventArgs e)
        {
            // Valid
            if ( ! btnDalejValid())
                return;

            // Zapis Ustawień
            this._oUstawienia.tabKartotek = this.cbTabKart.Text;
            this._oUstawienia.kolKartId = this.cbKolKartId.Text;
            this._oUstawienia.kolKartStan = this.cbKolStan.Text;
            this._oUstawienia.kolKartTowar = this.cbKolTow.Text;
            this._oUstawienia.kolKartDataEdycji = this.cbKolDataEdycji.Text;

            this.Close();
            new UPracownik(this._oUstawienia).Show();

            return;
        }

        private void cbTabKart_Validating(object sender, CancelEventArgs e)
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
            new UTowar(this._oUstawienia).Show();
        }
    }
}
