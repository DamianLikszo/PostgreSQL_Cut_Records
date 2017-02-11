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
    public partial class UZlecenie : Form
    {
        private Ustawienia _oUstawienia;
        private string _cTable;
        private bool _lTabZlec;
        private List<string> _aTabels;
        private List<string> _aColumns;

        public UZlecenie(Ustawienia oUstawienia)
        {
            this._oUstawienia = oUstawienia;
            this._lTabZlec = false;
            this._cTable = "";
            this._aColumns = new List<string>();
            this._aTabels = this._oUstawienia.pgSql.GetTables();

            InitializeComponent();
            
            if (this._aTabels.Count == 0)
                MessageBox.Show("Brak tabel w bazie danych.");

            this.cbTabZlec.DataSource = this._aTabels;

            // Uzupełnienie
            this.cbTabZlec.Text = (this._aTabels.Contains(this._oUstawienia.tabZlecen) ? this._oUstawienia.tabZlecen : "");
            
            this.NakladkaTabZlec();
        }

        private void NakladkaTabZlec()
        {
            this.cbTabZlec.Enabled = ! this._lTabZlec;
            this.btnZlecTabWybierz.Text = this._lTabZlec ? "Zmień" : "Wybierz";

            this.cbKolZlecId.Enabled = this._lTabZlec;
            this.cbKolDataZak.Enabled = this._lTabZlec;
            this.cbKolPrac.Enabled = this._lTabZlec;
            
            this.btnDalej.Enabled = this._lTabZlec;

            return;
        }

        private void btnZlecTabWybierz_Click(object sender, EventArgs e)
        {
            if (! this.tabValid(this.cbTabZlec.Text))
                return;

            if (this._lTabZlec)
            {
                this._cTable = "";
                this._aColumns.Clear();
                this.cbKolZlecId.Text = "";
                this.cbKolDataZak.Text = "";
                this.cbKolPrac.Text = "";
            }
            else
            {
                this._cTable = this.cbTabZlec.Text;
                this._aColumns = this._oUstawienia.pgSql.GeColumns(_cTable);

                if (this._aColumns.Count == 0)
                    MessageBox.Show("Brak kolumn w wybranej tabeli. Zmień Tabele.");

                this._aColumns.Insert(0, "");
                this.cbKolZlecId.DataSource = this._aColumns.ToList();
                this.cbKolDataZak.DataSource = this._aColumns.ToList();
                this.cbKolPrac.DataSource = this._aColumns.ToList();
                

                // Uzupełnienie
                this.cbKolZlecId.Text = (this._aColumns.Contains(this._oUstawienia.kolZlecId) ? this._oUstawienia.kolZlecId : "");
                this.cbKolDataZak.Text = (this._aColumns.Contains(this._oUstawienia.kolZlecDataZak) ? this._oUstawienia.kolZlecDataZak : "");
                this.cbKolPrac.Text = (this._aColumns.Contains(this._oUstawienia.kolZlecPrac) ? this._oUstawienia.kolZlecPrac : "");
            }

            this._lTabZlec = !this._lTabZlec;
            this.NakladkaTabZlec();

            return;
        }

        private bool tabValid( string cTable )
        {
            if (cTable == "")
            {
                MessageBox.Show("Wybierz tablicę przedstawiającą zlecenia.");
                return (false);
            }

            return (true);
        }
        
        private bool btnDalejValid()
        {
            if (!this.tabValid(this.cbTabZlec.Text))
                return (false);

            if (this.cbKolZlecId.Text == "")
            {
                MessageBox.Show("Wybierz kolumnę przedstawiającą unikalną wartość zlecenia.");
                return (false);
            }
            
            if (this.cbKolPrac.Text == "")
            {
                MessageBox.Show("Wybierz kolumnę przedstawiającą pracownika opiekującym się zleceniem.");
                return (false);
            }

            if (this.cbKolDataZak.Text == "")
            {
                MessageBox.Show("Wybierz kolumnę przedstawiającą datę ostatniej edycji zlecenia.");
                return (false);
            }

            return (true);
        }

        private void btnDalej_Click(object sender, EventArgs e)
        {
            // Valid
            if ( ! this.btnDalejValid())
                return;

            // Zapis Ustawień
            this._oUstawienia.tabZlecen = this.cbTabZlec.Text;
            this._oUstawienia.kolZlecId = this.cbKolZlecId.Text;
            this._oUstawienia.kolZlecDataZak = this.cbKolDataZak.Text;
            this._oUstawienia.kolZlecPrac = this.cbKolPrac.Text;

            this.Close();
            new UPozycja(this._oUstawienia).Show();

            return;
        }

        private void cbTabZlec_Validating(object sender, CancelEventArgs e)
        {
            ComboBox cbBox = sender as ComboBox;

            if (cbBox.Text == "")
                return;

            if( !this._aTabels.Contains(cbBox.Text))
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
            new UOgolne(this._oUstawienia).Show();
        }
    }
}
