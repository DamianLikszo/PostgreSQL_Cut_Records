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
    public partial class UPracownik : Form
    {
        private Ustawienia _oUstawienia;
        private string _cTable;
        private bool _lTabPrac;
        private List<string> _aColumns;
        private List<string> _aTabels;

        public UPracownik(Ustawienia oUstawienia)
        {
            this._oUstawienia = oUstawienia;
            this._cTable = "";
            this._lTabPrac = false;
            this._aColumns = new List<string>();
            this._aTabels = this._oUstawienia.pgSql.GetTables();

            InitializeComponent();

            if (this._aTabels.Count == 0)
                MessageBox.Show("Brak tabel w bazie danych.");
            
            this.cbTabPrac.DataSource = this._aTabels;

            // Uzupełenienie
            this.cbTabPrac.Text = (this._aTabels.Contains(this._oUstawienia.tabPracownikow) ? this._oUstawienia.tabPracownikow : "");
            
            this.NakladkaTabPrac();
        }

        private void NakladkaTabPrac()
        {
            this.cbTabPrac.Enabled = ! this._lTabPrac;
            this.btnTabPracWybierz.Text = this._lTabPrac ? "Zamień" : "Wybierz";

            this.cbKolDataZak.Enabled = this._lTabPrac;
            this.cbKolPracId.Enabled = this._lTabPrac;

            this.btnDalej.Enabled = this._lTabPrac;

            return;
        }

        private void btnTabPracWybierz_Click(object sender, EventArgs e)
        {
            if (!this.tabValid(this.cbTabPrac.Text))
                return;

            if (this._lTabPrac)
            {
                this._cTable = "";
                this._aColumns.Clear();
                this.cbKolPracId.Text = "";
                this.cbKolDataZak.Text = "";
            }
            else
            {
                this._cTable = this.cbTabPrac.Text;
                this._aColumns = this._oUstawienia.pgSql.GeColumns(_cTable);

                if (this._aColumns.Count == 0)
                    MessageBox.Show("Brak kolumn w wybranej tabeli. Zmień Tabele.");

                this._aColumns.Insert(0, "");
                this.cbKolPracId.DataSource = this._aColumns.ToList();
                this.cbKolDataZak.DataSource = this._aColumns.ToList();

                // Uzupełnienie
                this.cbKolPracId.Text = (this._aColumns.Contains(this._oUstawienia.kolPracId) ? this._oUstawienia.kolPracId : "");
                this.cbKolDataZak.Text = (this._aColumns.Contains(this._oUstawienia.kolPracDataZakonczenia) ? this._oUstawienia.kolPracDataZakonczenia : "");
            }

            this._lTabPrac = !this._lTabPrac;
            this.NakladkaTabPrac();
        }

        private bool tabValid( string cTable )
        {
            if (cTable == "")
            {
                MessageBox.Show("Wybierz tablicę przedstawiającą pracowników.");
                return (false);
            }

            if (cTable == this._oUstawienia.tabZlecen)
            {
                MessageBox.Show("Wybrana tablica przedstawia już zlecenia. Wybierz poprawną tablicę przedstawiającą pracowników.");
                return (false);
            }

            if (cTable == this._oUstawienia.tabPozycji)
            {
                MessageBox.Show("Wybrana tablica przedstawia już pozycje zlcenia. Wybierz poprawną tablicę przedstawiającą pracowników.");
                return (false);
            }

            if (cTable == this._oUstawienia.tabTowarow)
            {
                MessageBox.Show("Wybrana tablica przedstawia już katalog towarów. Wybierz poprawną tablicę przedstawiającą pracowników.");
                return (false);
            }

            if (cTable == this._oUstawienia.tabKartotek)
            {
                MessageBox.Show("Wybrana tablica przedstawia już kartoteki magazynu. Wybierz poprawną tablicę przedstawiającą pracowników.");
                return (false);
            }

            return (true);
        }

        private bool btnDalejValid()
        {
            if (!this.tabValid(this.cbTabPrac.Text))
                return (false);

            if (this.cbKolPracId.Text == "")
            {
                MessageBox.Show("Wybierz kolumnę przedstawiającą unikalną wartość pracownika.");
                return (false);
            }
            if (this.cbKolDataZak.Text == "")
            {
                MessageBox.Show("Wybierz kolumnę przedstawiającą datę zakończenia współpracy z pracownikiem.");
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
            this._oUstawienia.tabPracownikow = this.cbTabPrac.Text;
            this._oUstawienia.kolPracId = this.cbKolPracId.Text;
            this._oUstawienia.kolPracDataZakonczenia = this.cbKolDataZak.Text;
            this.Close();
            new OdcinanieDanychView(this._oUstawienia).Show();

            return;
        }

        private void cbTabPac_Validating(object sender, CancelEventArgs e)
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
            new UKartoteka(this._oUstawienia).Show();
        }
    }
}
