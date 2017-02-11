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
    public partial class UTowar : Form
    {
        private Ustawienia _oUstawienia;
        private string _cTable;
        private bool _lTabTow;
        private List<string> _aColumns;
        private List<string> _aTabels;

        public UTowar(Ustawienia oUstawienia)
        {
            this._oUstawienia = oUstawienia;
            this._cTable = "";
            this._lTabTow = false;
            this._aColumns = new List<string>();
            this._aTabels = this._oUstawienia.pgSql.GetTables();
            
            InitializeComponent();

            if (this._aTabels.Count == 0)
                MessageBox.Show("Brak tabel w bazie danych.");

            this.cbTabTow.DataSource = this._aTabels;

            // Uzupełnienie
            this.cbTabTow.Text = (this._aTabels.Contains(this._oUstawienia.tabTowarow) ? this._oUstawienia.tabTowarow : "");

            this.NakladkaTabTow();
        }

        private void NakladkaTabTow()
        {
            this.cbTabTow.Enabled = !this._lTabTow;
            this.btnTabTowWybierz.Text = this._lTabTow ? "Zamień" : "Wybierz";

            this.cbKolDataEdycji.Enabled = this._lTabTow;
            this.cbKolTowId.Enabled = this._lTabTow;

            this.btnDalej.Enabled = this._lTabTow;

            return;
        }

        private void btnTabTowWybierz_Click(object sender, EventArgs e)
        {
            if (! this.tabValid(this.cbTabTow.Text))
                return;

            if (this._lTabTow)
            {
                this._cTable = "";
                this._aColumns.Clear();
                this.cbKolTowId.Text = "";
                this.cbKolDataEdycji.Text = "";
            }
            else
            {
                this._cTable = this.cbTabTow.Text;
                this._aColumns = this._oUstawienia.pgSql.GeColumns(_cTable);

                if (this._aColumns.Count == 0)
                    MessageBox.Show("Brak kolumn w wybranej tabeli. Zmień Tabele.");

                this._aColumns.Insert(0, "");
                this.cbKolTowId.DataSource = this._aColumns.ToList();
                this.cbKolDataEdycji.DataSource = this._aColumns.ToList();
                
                // Uzupełnienie
                this.cbKolTowId.Text = (this._aColumns.Contains(this._oUstawienia.kolTowId) ? this._oUstawienia.kolTowId : "");
                this.cbKolDataEdycji.Text = (this._aColumns.Contains(this._oUstawienia.kolTowDataEdycji) ? this._oUstawienia.kolTowDataEdycji : "");
            }

            this._lTabTow = !this._lTabTow;
            this.NakladkaTabTow();
        }

        private bool tabValid( string cTable)
        {
            if (cTable == "")
            {
                MessageBox.Show("Wybierz tablicę przedstawiającą katalog towarów.");
                return (false);
            }

            if (cTable == this._oUstawienia.tabZlecen)
            {
                MessageBox.Show("Wybrana tablica przedstawia już zlecenia. Wybierz poprawną tablicę przedstawiającą katalog towarów.");
                return (false);
            }

            if (cTable == this._oUstawienia.tabPozycji)
            {
                MessageBox.Show("Wybrana tablica przedstawia już pozycje zlcenia. Wybierz poprawną tablicę przedstawiającą katalog towarów.");
                return (false);
            }

            return (true);
        }

        private bool btnDalejValid()
        {
            if (! this.tabValid(this.cbTabTow.Text))
                return (false);

            if (this.cbKolTowId.Text == "")
            {
                MessageBox.Show("Wybierz kolumnę przedstawiającą unikalną wartość towaru.");
                return (false);
            }
            if (this.cbKolDataEdycji.Text == "")
            {
                MessageBox.Show("Wybierz kolumnę przedstawiającą datę ostatniej edycji towaru.");
                return (false);
            }

            return (true);
        }

        private void btnDalej_Click(object sender, EventArgs e)
        {
            // Valid
            if (!this.btnDalejValid())
                return;

            // Zapis Ustawień
            this._oUstawienia.tabTowarow = this.cbTabTow.Text;
            this._oUstawienia.kolTowId = this.cbKolTowId.Text;
            this._oUstawienia.kolTowDataEdycji = this.cbKolDataEdycji.Text;

            this.Close();
            new UKartoteka(this._oUstawienia).Show();
            
            return;
        }

        private void cbTabTow_Validating(object sender, CancelEventArgs e)
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
            new UPozycja(this._oUstawienia).Show();
        }
    }
}
