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
    public struct ProgressBarStruct
    {
        public string labTab;
        public int tables;
        public int records;
        public int sumAllRec;
        public int sumDeletedRec;
        public int sumProblemRec;
    }
    
    public partial class OdcinanieDanychView : Form
    {
        private Ustawienia _oUstawienia;
        private OdcinanieDanych _oOdcinanie;

        public OdcinanieDanychView(Ustawienia oUstawienia)
        {
            this._oUstawienia = oUstawienia;

            InitializeComponent();

            this._oOdcinanie = new OdcinanieDanych(oUstawienia, this.pgbTables, this.pgbRecords, this.labTab2);
        }

        private void btnKoniec_Click(object sender, EventArgs e)
        {
            this._oUstawienia.pgSql.Close();
            this.Close();
        }

        private void btnLogi_Click(object sender, EventArgs e)
        {
            PodgladPliku wShow = new PodgladPliku(this._oUstawienia.pathLogi, "Podgląd pliku logów");
            wShow.Show();
        }

        private void btnEksport_Click(object sender, EventArgs e)
        {
            PodgladPliku wShow = new PodgladPliku(this._oUstawienia.pathEksport, "Podgląd pliku eksportu");
            wShow.Show();
        }

        private void backgroundWorker_DoWork(object sender, DoWorkEventArgs e)
        {
            BackgroundWorker worker = sender as BackgroundWorker;

            this._oOdcinanie.OdetnijDane(worker);
        }

        private void backgroundWorker_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
            this.pgbTables.Value = this.pgbTables.Maximum;
            this.pgbRecords.Value = this.pgbRecords.Maximum;

            this.btnStart.Enabled = true;
            this.btnAnuluj.Enabled = false;
            this.btnKoniec.Enabled = true;
            this.btnLogi.Enabled = true;
            this.btnEksport.Enabled = true;

            if (this._oOdcinanie.Error != "")
            {
                MessageBox.Show(this._oOdcinanie.Error);
            }

            this.labTab2.Text = "";
 
            return;
        }

        private void btnAnuluj_Click(object sender, EventArgs e)
        {
            this.backgroundWorker.CancelAsync();
        }

        private void btnStart_Click(object sender, EventArgs e)
        {
            this.labTab2.Text = "";
            this.labStAllRec2.Text = "0";
            this.labStDelRec2.Text = "0";
            this.labStProbRec2.Text = "0";

            this.backgroundWorker.RunWorkerAsync();
            this.btnStart.Enabled = false;
            this.btnAnuluj.Enabled = true;
            this.btnKoniec.Enabled = false;
            this.btnWstecz.Enabled = false;
        }

        private void btnWstecz_Click(object sender, EventArgs e)
        {
            this.Close();

            if (this._oUstawienia.isShort)
                new UOgolne(this._oUstawienia).Show();
            else
                new UPracownik(this._oUstawienia).Show();
        }

        private void backgroundWorker_ProgressChanged(object sender, ProgressChangedEventArgs e)
        {
            ProgressBarStruct aValues = (ProgressBarStruct)e.UserState;

            this.labTab2.Text = aValues.labTab;

            this.pgbTables.Value = aValues.tables;
            this.pgbRecords.Value = aValues.records;
            
            this.labStAllRec2.Text = aValues.sumAllRec.ToString();
            this.labStDelRec2.Text = aValues.sumDeletedRec.ToString();
            this.labStProbRec2.Text = aValues.sumProblemRec.ToString();
        }
    }
}
