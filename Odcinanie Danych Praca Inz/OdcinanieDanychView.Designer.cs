namespace Odcinanie_Danych_Praca_Inz
{
    partial class OdcinanieDanychView
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.gpOdcinanieDanych = new System.Windows.Forms.GroupBox();
            this.gpStatystyki = new System.Windows.Forms.GroupBox();
            this.labStProbRec2 = new System.Windows.Forms.Label();
            this.labStDelRec2 = new System.Windows.Forms.Label();
            this.labStAllRec2 = new System.Windows.Forms.Label();
            this.labStProbRec = new System.Windows.Forms.Label();
            this.labStDelRec = new System.Windows.Forms.Label();
            this.labStAllRec = new System.Windows.Forms.Label();
            this.btnEksport = new System.Windows.Forms.Button();
            this.btnLogi = new System.Windows.Forms.Button();
            this.labTab2 = new System.Windows.Forms.Label();
            this.pgbRecords = new System.Windows.Forms.ProgressBar();
            this.pgbTables = new System.Windows.Forms.ProgressBar();
            this.labTab = new System.Windows.Forms.Label();
            this.btnAnuluj = new System.Windows.Forms.Button();
            this.btnKoniec = new System.Windows.Forms.Button();
            this.backgroundWorker = new System.ComponentModel.BackgroundWorker();
            this.btnStart = new System.Windows.Forms.Button();
            this.btnWstecz = new System.Windows.Forms.Button();
            this.gpOdcinanieDanych.SuspendLayout();
            this.gpStatystyki.SuspendLayout();
            this.SuspendLayout();
            // 
            // gpOdcinanieDanych
            // 
            this.gpOdcinanieDanych.Controls.Add(this.gpStatystyki);
            this.gpOdcinanieDanych.Controls.Add(this.btnEksport);
            this.gpOdcinanieDanych.Controls.Add(this.btnLogi);
            this.gpOdcinanieDanych.Controls.Add(this.labTab2);
            this.gpOdcinanieDanych.Controls.Add(this.pgbRecords);
            this.gpOdcinanieDanych.Controls.Add(this.pgbTables);
            this.gpOdcinanieDanych.Controls.Add(this.labTab);
            this.gpOdcinanieDanych.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold);
            this.gpOdcinanieDanych.Location = new System.Drawing.Point(16, 15);
            this.gpOdcinanieDanych.Margin = new System.Windows.Forms.Padding(4);
            this.gpOdcinanieDanych.Name = "gpOdcinanieDanych";
            this.gpOdcinanieDanych.Padding = new System.Windows.Forms.Padding(4);
            this.gpOdcinanieDanych.Size = new System.Drawing.Size(811, 438);
            this.gpOdcinanieDanych.TabIndex = 1;
            this.gpOdcinanieDanych.TabStop = false;
            this.gpOdcinanieDanych.Text = "Odcinanie danych";
            // 
            // gpStatystyki
            // 
            this.gpStatystyki.Controls.Add(this.labStProbRec2);
            this.gpStatystyki.Controls.Add(this.labStDelRec2);
            this.gpStatystyki.Controls.Add(this.labStAllRec2);
            this.gpStatystyki.Controls.Add(this.labStProbRec);
            this.gpStatystyki.Controls.Add(this.labStDelRec);
            this.gpStatystyki.Controls.Add(this.labStAllRec);
            this.gpStatystyki.Location = new System.Drawing.Point(8, 191);
            this.gpStatystyki.Margin = new System.Windows.Forms.Padding(4);
            this.gpStatystyki.Name = "gpStatystyki";
            this.gpStatystyki.Padding = new System.Windows.Forms.Padding(4);
            this.gpStatystyki.Size = new System.Drawing.Size(795, 156);
            this.gpStatystyki.TabIndex = 7;
            this.gpStatystyki.TabStop = false;
            this.gpStatystyki.Text = "Statystyki:";
            // 
            // labStProbRec2
            // 
            this.labStProbRec2.AutoSize = true;
            this.labStProbRec2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.labStProbRec2.Location = new System.Drawing.Point(537, 114);
            this.labStProbRec2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.labStProbRec2.Name = "labStProbRec2";
            this.labStProbRec2.Size = new System.Drawing.Size(23, 25);
            this.labStProbRec2.TabIndex = 5;
            this.labStProbRec2.Text = "0";
            // 
            // labStDelRec2
            // 
            this.labStDelRec2.AutoSize = true;
            this.labStDelRec2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.labStDelRec2.Location = new System.Drawing.Point(537, 76);
            this.labStDelRec2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.labStDelRec2.Name = "labStDelRec2";
            this.labStDelRec2.Size = new System.Drawing.Size(23, 25);
            this.labStDelRec2.TabIndex = 5;
            this.labStDelRec2.Text = "0";
            // 
            // labStAllRec2
            // 
            this.labStAllRec2.AutoSize = true;
            this.labStAllRec2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.labStAllRec2.Location = new System.Drawing.Point(537, 38);
            this.labStAllRec2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.labStAllRec2.Name = "labStAllRec2";
            this.labStAllRec2.Size = new System.Drawing.Size(23, 25);
            this.labStAllRec2.TabIndex = 5;
            this.labStAllRec2.Text = "0";
            // 
            // labStProbRec
            // 
            this.labStProbRec.AutoSize = true;
            this.labStProbRec.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.labStProbRec.Location = new System.Drawing.Point(8, 114);
            this.labStProbRec.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.labStProbRec.Name = "labStProbRec";
            this.labStProbRec.Size = new System.Drawing.Size(405, 25);
            this.labStProbRec.TabIndex = 4;
            this.labStProbRec.Text = "Liczba rekorów, których nie udało się usunąć:";
            // 
            // labStDelRec
            // 
            this.labStDelRec.AutoSize = true;
            this.labStDelRec.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.labStDelRec.Location = new System.Drawing.Point(8, 76);
            this.labStDelRec.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.labStDelRec.Name = "labStDelRec";
            this.labStDelRec.Size = new System.Drawing.Size(259, 25);
            this.labStDelRec.TabIndex = 1;
            this.labStDelRec.Text = "Liczba usuniętych rekordów:";
            // 
            // labStAllRec
            // 
            this.labStAllRec.AutoSize = true;
            this.labStAllRec.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.labStAllRec.Location = new System.Drawing.Point(8, 38);
            this.labStAllRec.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.labStAllRec.Name = "labStAllRec";
            this.labStAllRec.Size = new System.Drawing.Size(291, 25);
            this.labStAllRec.TabIndex = 0;
            this.labStAllRec.Text = "Liczba odnalezionych rekordów:";
            // 
            // btnEksport
            // 
            this.btnEksport.Enabled = false;
            this.btnEksport.Location = new System.Drawing.Point(416, 354);
            this.btnEksport.Margin = new System.Windows.Forms.Padding(4);
            this.btnEksport.Name = "btnEksport";
            this.btnEksport.Size = new System.Drawing.Size(387, 58);
            this.btnEksport.TabIndex = 6;
            this.btnEksport.Text = "Otwórz plik eksportu";
            this.btnEksport.UseVisualStyleBackColor = true;
            this.btnEksport.Click += new System.EventHandler(this.btnEksport_Click);
            // 
            // btnLogi
            // 
            this.btnLogi.Enabled = false;
            this.btnLogi.Location = new System.Drawing.Point(8, 354);
            this.btnLogi.Margin = new System.Windows.Forms.Padding(4);
            this.btnLogi.Name = "btnLogi";
            this.btnLogi.Size = new System.Drawing.Size(387, 58);
            this.btnLogi.TabIndex = 6;
            this.btnLogi.Text = "Otwórz plik logów";
            this.btnLogi.UseVisualStyleBackColor = true;
            this.btnLogi.Click += new System.EventHandler(this.btnLogi_Click);
            // 
            // labTab2
            // 
            this.labTab2.AutoSize = true;
            this.labTab2.Location = new System.Drawing.Point(403, 49);
            this.labTab2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.labTab2.Name = "labTab2";
            this.labTab2.Size = new System.Drawing.Size(0, 25);
            this.labTab2.TabIndex = 5;
            // 
            // pgbRecords
            // 
            this.pgbRecords.Location = new System.Drawing.Point(8, 138);
            this.pgbRecords.Margin = new System.Windows.Forms.Padding(4);
            this.pgbRecords.Name = "pgbRecords";
            this.pgbRecords.Size = new System.Drawing.Size(795, 28);
            this.pgbRecords.Step = 1;
            this.pgbRecords.TabIndex = 3;
            // 
            // pgbTables
            // 
            this.pgbTables.Location = new System.Drawing.Point(8, 89);
            this.pgbTables.Margin = new System.Windows.Forms.Padding(4);
            this.pgbTables.Maximum = 5;
            this.pgbTables.Name = "pgbTables";
            this.pgbTables.Size = new System.Drawing.Size(795, 28);
            this.pgbTables.Step = 1;
            this.pgbTables.TabIndex = 1;
            // 
            // labTab
            // 
            this.labTab.AutoSize = true;
            this.labTab.Location = new System.Drawing.Point(327, 49);
            this.labTab.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.labTab.Name = "labTab";
            this.labTab.Size = new System.Drawing.Size(86, 25);
            this.labTab.TabIndex = 0;
            this.labTab.Text = "Tabela:";
            // 
            // btnAnuluj
            // 
            this.btnAnuluj.Enabled = false;
            this.btnAnuluj.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.2F, System.Drawing.FontStyle.Bold);
            this.btnAnuluj.Location = new System.Drawing.Point(250, 462);
            this.btnAnuluj.Margin = new System.Windows.Forms.Padding(4);
            this.btnAnuluj.Name = "btnAnuluj";
            this.btnAnuluj.Size = new System.Drawing.Size(161, 58);
            this.btnAnuluj.TabIndex = 2;
            this.btnAnuluj.Text = "Anuluj";
            this.btnAnuluj.UseVisualStyleBackColor = true;
            this.btnAnuluj.Click += new System.EventHandler(this.btnAnuluj_Click);
            // 
            // btnKoniec
            // 
            this.btnKoniec.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.2F, System.Drawing.FontStyle.Bold);
            this.btnKoniec.Location = new System.Drawing.Point(665, 460);
            this.btnKoniec.Margin = new System.Windows.Forms.Padding(4);
            this.btnKoniec.Name = "btnKoniec";
            this.btnKoniec.Size = new System.Drawing.Size(161, 58);
            this.btnKoniec.TabIndex = 2;
            this.btnKoniec.Text = "Koniec";
            this.btnKoniec.UseVisualStyleBackColor = true;
            this.btnKoniec.Click += new System.EventHandler(this.btnKoniec_Click);
            // 
            // backgroundWorker
            // 
            this.backgroundWorker.WorkerReportsProgress = true;
            this.backgroundWorker.WorkerSupportsCancellation = true;
            this.backgroundWorker.DoWork += new System.ComponentModel.DoWorkEventHandler(this.backgroundWorker_DoWork);
            this.backgroundWorker.ProgressChanged += new System.ComponentModel.ProgressChangedEventHandler(this.backgroundWorker_ProgressChanged);
            this.backgroundWorker.RunWorkerCompleted += new System.ComponentModel.RunWorkerCompletedEventHandler(this.backgroundWorker_RunWorkerCompleted);
            // 
            // btnStart
            // 
            this.btnStart.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.2F, System.Drawing.FontStyle.Bold);
            this.btnStart.Location = new System.Drawing.Point(432, 462);
            this.btnStart.Margin = new System.Windows.Forms.Padding(4);
            this.btnStart.Name = "btnStart";
            this.btnStart.Size = new System.Drawing.Size(161, 58);
            this.btnStart.TabIndex = 2;
            this.btnStart.Text = "Start";
            this.btnStart.UseVisualStyleBackColor = true;
            this.btnStart.Click += new System.EventHandler(this.btnStart_Click);
            // 
            // btnWstecz
            // 
            this.btnWstecz.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.2F, System.Drawing.FontStyle.Bold);
            this.btnWstecz.Location = new System.Drawing.Point(16, 462);
            this.btnWstecz.Margin = new System.Windows.Forms.Padding(4);
            this.btnWstecz.Name = "btnWstecz";
            this.btnWstecz.Size = new System.Drawing.Size(161, 58);
            this.btnWstecz.TabIndex = 2;
            this.btnWstecz.Text = "Wstecz";
            this.btnWstecz.UseVisualStyleBackColor = true;
            this.btnWstecz.Click += new System.EventHandler(this.btnWstecz_Click);
            // 
            // OdcinanieDanychView
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(842, 525);
            this.Controls.Add(this.btnStart);
            this.Controls.Add(this.btnWstecz);
            this.Controls.Add(this.btnKoniec);
            this.Controls.Add(this.btnAnuluj);
            this.Controls.Add(this.gpOdcinanieDanych);
            this.Margin = new System.Windows.Forms.Padding(4);
            this.MaximizeBox = false;
            this.MaximumSize = new System.Drawing.Size(860, 572);
            this.MinimumSize = new System.Drawing.Size(860, 572);
            this.Name = "OdcinanieDanychView";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Odcinanie Danych";
            this.gpOdcinanieDanych.ResumeLayout(false);
            this.gpOdcinanieDanych.PerformLayout();
            this.gpStatystyki.ResumeLayout(false);
            this.gpStatystyki.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox gpOdcinanieDanych;
        private System.Windows.Forms.ProgressBar pgbRecords;
        private System.Windows.Forms.ProgressBar pgbTables;
        private System.Windows.Forms.Label labTab;
        private System.Windows.Forms.Button btnAnuluj;
        private System.Windows.Forms.Button btnKoniec;
        private System.Windows.Forms.GroupBox gpStatystyki;
        private System.Windows.Forms.Label labStProbRec;
        private System.Windows.Forms.Label labStDelRec;
        private System.Windows.Forms.Label labStAllRec;
        private System.Windows.Forms.Button btnEksport;
        private System.Windows.Forms.Button btnLogi;
        private System.Windows.Forms.Label labStProbRec2;
        private System.Windows.Forms.Label labStDelRec2;
        private System.Windows.Forms.Label labStAllRec2;
        private System.Windows.Forms.Label labTab2;
        private System.ComponentModel.BackgroundWorker backgroundWorker;
        private System.Windows.Forms.Button btnStart;
        private System.Windows.Forms.Button btnWstecz;
    }
}