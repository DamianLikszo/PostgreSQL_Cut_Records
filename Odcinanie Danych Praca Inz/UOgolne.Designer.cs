namespace Odcinanie_Danych_Praca_Inz
{
    partial class UOgolne
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
            this.labDataUsun = new System.Windows.Forms.Label();
            this.gbUstawienia = new System.Windows.Forms.GroupBox();
            this.cbLimit = new System.Windows.Forms.ComboBox();
            this.labLimit = new System.Windows.Forms.Label();
            this.dtDataUsun = new System.Windows.Forms.DateTimePicker();
            this.btnDalej = new System.Windows.Forms.Button();
            this.btnWybierzLogi = new System.Windows.Forms.Button();
            this.btnWybierzEksport = new System.Windows.Forms.Button();
            this.txtPathLogi = new System.Windows.Forms.TextBox();
            this.txtPathEksport = new System.Windows.Forms.TextBox();
            this.labLogi = new System.Windows.Forms.Label();
            this.labEksport = new System.Windows.Forms.Label();
            this.gpPliki = new System.Windows.Forms.GroupBox();
            this.btnSprPolaczenie = new System.Windows.Forms.Button();
            this.txtBaza = new System.Windows.Forms.TextBox();
            this.txtHaslo = new System.Windows.Forms.TextBox();
            this.txtLogin = new System.Windows.Forms.TextBox();
            this.txtSerwer = new System.Windows.Forms.TextBox();
            this.labBaza = new System.Windows.Forms.Label();
            this.labHasło = new System.Windows.Forms.Label();
            this.labSerwer = new System.Windows.Forms.Label();
            this.labLogin = new System.Windows.Forms.Label();
            this.gpDaneLogowania = new System.Windows.Forms.GroupBox();
            this.btnTestowy = new System.Windows.Forms.Button();
            this.labPort = new System.Windows.Forms.Label();
            this.txtPort = new System.Windows.Forms.TextBox();
            this.btnZaawans = new System.Windows.Forms.Button();
            this.gbUstawienia.SuspendLayout();
            this.gpPliki.SuspendLayout();
            this.gpDaneLogowania.SuspendLayout();
            this.SuspendLayout();
            // 
            // labDataUsun
            // 
            this.labDataUsun.AutoSize = true;
            this.labDataUsun.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.labDataUsun.Location = new System.Drawing.Point(28, 32);
            this.labDataUsun.Name = "labDataUsun";
            this.labDataUsun.Size = new System.Drawing.Size(171, 25);
            this.labDataUsun.TabIndex = 0;
            this.labDataUsun.Text = "Usuń dane sprzed";
            // 
            // gbUstawienia
            // 
            this.gbUstawienia.Controls.Add(this.cbLimit);
            this.gbUstawienia.Controls.Add(this.labLimit);
            this.gbUstawienia.Controls.Add(this.dtDataUsun);
            this.gbUstawienia.Controls.Add(this.labDataUsun);
            this.gbUstawienia.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.gbUstawienia.Location = new System.Drawing.Point(12, 346);
            this.gbUstawienia.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.gbUstawienia.Name = "gbUstawienia";
            this.gbUstawienia.Padding = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.gbUstawienia.Size = new System.Drawing.Size(812, 113);
            this.gbUstawienia.TabIndex = 3;
            this.gbUstawienia.TabStop = false;
            this.gbUstawienia.Text = "Ustawienia:";
            // 
            // cbLimit
            // 
            this.cbLimit.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbLimit.FormatString = "N0";
            this.cbLimit.FormattingEnabled = true;
            this.cbLimit.Location = new System.Drawing.Point(260, 67);
            this.cbLimit.Name = "cbLimit";
            this.cbLimit.Size = new System.Drawing.Size(156, 33);
            this.cbLimit.TabIndex = 10;
            // 
            // labLimit
            // 
            this.labLimit.AutoSize = true;
            this.labLimit.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.labLimit.Location = new System.Drawing.Point(28, 70);
            this.labLimit.Name = "labLimit";
            this.labLimit.Size = new System.Drawing.Size(198, 25);
            this.labLimit.TabIndex = 3;
            this.labLimit.Text = "Limit paczki rekordów";
            // 
            // dtDataUsun
            // 
            this.dtDataUsun.Location = new System.Drawing.Point(260, 27);
            this.dtDataUsun.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.dtDataUsun.Name = "dtDataUsun";
            this.dtDataUsun.Size = new System.Drawing.Size(497, 30);
            this.dtDataUsun.TabIndex = 9;
            this.dtDataUsun.Value = new System.DateTime(2017, 1, 25, 6, 38, 1, 0);
            // 
            // btnDalej
            // 
            this.btnDalej.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.btnDalej.Location = new System.Drawing.Point(669, 463);
            this.btnDalej.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnDalej.Name = "btnDalej";
            this.btnDalej.Size = new System.Drawing.Size(161, 58);
            this.btnDalej.TabIndex = 15;
            this.btnDalej.Text = "Dalej";
            this.btnDalej.UseVisualStyleBackColor = true;
            this.btnDalej.Click += new System.EventHandler(this.btnDalej_Click);
            // 
            // btnWybierzLogi
            // 
            this.btnWybierzLogi.Location = new System.Drawing.Point(673, 78);
            this.btnWybierzLogi.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnWybierzLogi.Name = "btnWybierzLogi";
            this.btnWybierzLogi.Size = new System.Drawing.Size(139, 32);
            this.btnWybierzLogi.TabIndex = 8;
            this.btnWybierzLogi.Text = "Wybierz";
            this.btnWybierzLogi.UseVisualStyleBackColor = true;
            this.btnWybierzLogi.Click += new System.EventHandler(this.btnWybierzLogi_Click);
            // 
            // btnWybierzEksport
            // 
            this.btnWybierzEksport.Location = new System.Drawing.Point(673, 30);
            this.btnWybierzEksport.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnWybierzEksport.Name = "btnWybierzEksport";
            this.btnWybierzEksport.Size = new System.Drawing.Size(139, 31);
            this.btnWybierzEksport.TabIndex = 7;
            this.btnWybierzEksport.Text = "Wybierz";
            this.btnWybierzEksport.UseVisualStyleBackColor = true;
            this.btnWybierzEksport.Click += new System.EventHandler(this.btnWybierzEksport_Click);
            // 
            // txtPathLogi
            // 
            this.txtPathLogi.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.txtPathLogi.Location = new System.Drawing.Point(157, 80);
            this.txtPathLogi.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.txtPathLogi.Name = "txtPathLogi";
            this.txtPathLogi.ReadOnly = true;
            this.txtPathLogi.Size = new System.Drawing.Size(509, 30);
            this.txtPathLogi.TabIndex = 3;
            this.txtPathLogi.TabStop = false;
            // 
            // txtPathEksport
            // 
            this.txtPathEksport.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.txtPathEksport.Location = new System.Drawing.Point(157, 30);
            this.txtPathEksport.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.txtPathEksport.Name = "txtPathEksport";
            this.txtPathEksport.ReadOnly = true;
            this.txtPathEksport.Size = new System.Drawing.Size(509, 30);
            this.txtPathEksport.TabIndex = 2;
            this.txtPathEksport.TabStop = false;
            // 
            // labLogi
            // 
            this.labLogi.AutoSize = true;
            this.labLogi.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.labLogi.Location = new System.Drawing.Point(28, 82);
            this.labLogi.Name = "labLogi";
            this.labLogi.Size = new System.Drawing.Size(70, 25);
            this.labLogi.TabIndex = 1;
            this.labLogi.Text = "Logów";
            // 
            // labEksport
            // 
            this.labEksport.AutoSize = true;
            this.labEksport.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.labEksport.Location = new System.Drawing.Point(28, 33);
            this.labEksport.Name = "labEksport";
            this.labEksport.Size = new System.Drawing.Size(89, 25);
            this.labEksport.TabIndex = 0;
            this.labEksport.Text = "Eksportu";
            // 
            // gpPliki
            // 
            this.gpPliki.Controls.Add(this.btnWybierzLogi);
            this.gpPliki.Controls.Add(this.btnWybierzEksport);
            this.gpPliki.Controls.Add(this.txtPathLogi);
            this.gpPliki.Controls.Add(this.txtPathEksport);
            this.gpPliki.Controls.Add(this.labLogi);
            this.gpPliki.Controls.Add(this.labEksport);
            this.gpPliki.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.gpPliki.Location = new System.Drawing.Point(12, 207);
            this.gpPliki.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.gpPliki.Name = "gpPliki";
            this.gpPliki.Padding = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.gpPliki.Size = new System.Drawing.Size(819, 135);
            this.gpPliki.TabIndex = 2;
            this.gpPliki.TabStop = false;
            this.gpPliki.Text = "Pliki operacji:";
            // 
            // btnSprPolaczenie
            // 
            this.btnSprPolaczenie.Location = new System.Drawing.Point(601, 113);
            this.btnSprPolaczenie.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnSprPolaczenie.Name = "btnSprPolaczenie";
            this.btnSprPolaczenie.Size = new System.Drawing.Size(211, 63);
            this.btnSprPolaczenie.TabIndex = 7;
            this.btnSprPolaczenie.Text = "Sprawdź połączenie";
            this.btnSprPolaczenie.UseVisualStyleBackColor = true;
            this.btnSprPolaczenie.Click += new System.EventHandler(this.btnSprPolaczenie_Click);
            // 
            // txtBaza
            // 
            this.txtBaza.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.txtBaza.Location = new System.Drawing.Point(157, 146);
            this.txtBaza.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.txtBaza.Name = "txtBaza";
            this.txtBaza.Size = new System.Drawing.Size(425, 30);
            this.txtBaza.TabIndex = 4;
            // 
            // txtHaslo
            // 
            this.txtHaslo.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.txtHaslo.Location = new System.Drawing.Point(157, 110);
            this.txtHaslo.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.txtHaslo.Name = "txtHaslo";
            this.txtHaslo.PasswordChar = '*';
            this.txtHaslo.Size = new System.Drawing.Size(425, 30);
            this.txtHaslo.TabIndex = 3;
            // 
            // txtLogin
            // 
            this.txtLogin.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.txtLogin.Location = new System.Drawing.Point(157, 74);
            this.txtLogin.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.txtLogin.Name = "txtLogin";
            this.txtLogin.Size = new System.Drawing.Size(425, 30);
            this.txtLogin.TabIndex = 2;
            // 
            // txtSerwer
            // 
            this.txtSerwer.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.txtSerwer.Location = new System.Drawing.Point(157, 38);
            this.txtSerwer.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.txtSerwer.Name = "txtSerwer";
            this.txtSerwer.Size = new System.Drawing.Size(425, 30);
            this.txtSerwer.TabIndex = 1;
            // 
            // labBaza
            // 
            this.labBaza.AutoSize = true;
            this.labBaza.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.labBaza.Location = new System.Drawing.Point(28, 149);
            this.labBaza.Name = "labBaza";
            this.labBaza.Size = new System.Drawing.Size(57, 25);
            this.labBaza.TabIndex = 24;
            this.labBaza.Text = "Baza";
            // 
            // labHasło
            // 
            this.labHasło.AutoSize = true;
            this.labHasło.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.labHasło.Location = new System.Drawing.Point(28, 113);
            this.labHasło.Name = "labHasło";
            this.labHasło.Size = new System.Drawing.Size(62, 25);
            this.labHasło.TabIndex = 23;
            this.labHasło.Text = "Hasło";
            // 
            // labSerwer
            // 
            this.labSerwer.AutoSize = true;
            this.labSerwer.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.labSerwer.Location = new System.Drawing.Point(28, 41);
            this.labSerwer.Name = "labSerwer";
            this.labSerwer.Size = new System.Drawing.Size(74, 25);
            this.labSerwer.TabIndex = 21;
            this.labSerwer.Text = "Serwer";
            // 
            // labLogin
            // 
            this.labLogin.AutoSize = true;
            this.labLogin.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.labLogin.Location = new System.Drawing.Point(28, 78);
            this.labLogin.Name = "labLogin";
            this.labLogin.Size = new System.Drawing.Size(111, 25);
            this.labLogin.TabIndex = 22;
            this.labLogin.Text = "Użytkownik";
            // 
            // gpDaneLogowania
            // 
            this.gpDaneLogowania.Controls.Add(this.btnTestowy);
            this.gpDaneLogowania.Controls.Add(this.labPort);
            this.gpDaneLogowania.Controls.Add(this.txtPort);
            this.gpDaneLogowania.Controls.Add(this.btnSprPolaczenie);
            this.gpDaneLogowania.Controls.Add(this.txtBaza);
            this.gpDaneLogowania.Controls.Add(this.txtHaslo);
            this.gpDaneLogowania.Controls.Add(this.txtLogin);
            this.gpDaneLogowania.Controls.Add(this.txtSerwer);
            this.gpDaneLogowania.Controls.Add(this.labBaza);
            this.gpDaneLogowania.Controls.Add(this.labHasło);
            this.gpDaneLogowania.Controls.Add(this.labSerwer);
            this.gpDaneLogowania.Controls.Add(this.labLogin);
            this.gpDaneLogowania.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.gpDaneLogowania.Location = new System.Drawing.Point(12, 12);
            this.gpDaneLogowania.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.gpDaneLogowania.Name = "gpDaneLogowania";
            this.gpDaneLogowania.Padding = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.gpDaneLogowania.Size = new System.Drawing.Size(819, 190);
            this.gpDaneLogowania.TabIndex = 1;
            this.gpDaneLogowania.TabStop = false;
            this.gpDaneLogowania.Text = "Dane do połączenia z bazą danych:";
            // 
            // btnTestowy
            // 
            this.btnTestowy.Location = new System.Drawing.Point(602, 75);
            this.btnTestowy.Name = "btnTestowy";
            this.btnTestowy.Size = new System.Drawing.Size(211, 33);
            this.btnTestowy.TabIndex = 26;
            this.btnTestowy.Text = "Serwer testowy";
            this.btnTestowy.UseVisualStyleBackColor = true;
            this.btnTestowy.Click += new System.EventHandler(this.btnTestowy_Click);
            // 
            // labPort
            // 
            this.labPort.AutoSize = true;
            this.labPort.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.labPort.Location = new System.Drawing.Point(596, 38);
            this.labPort.Name = "labPort";
            this.labPort.Size = new System.Drawing.Size(47, 25);
            this.labPort.TabIndex = 25;
            this.labPort.Text = "Port";
            // 
            // txtPort
            // 
            this.txtPort.Location = new System.Drawing.Point(673, 36);
            this.txtPort.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.txtPort.Name = "txtPort";
            this.txtPort.Size = new System.Drawing.Size(139, 30);
            this.txtPort.TabIndex = 5;
            // 
            // btnZaawans
            // 
            this.btnZaawans.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.btnZaawans.Location = new System.Drawing.Point(12, 463);
            this.btnZaawans.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnZaawans.Name = "btnZaawans";
            this.btnZaawans.Size = new System.Drawing.Size(226, 58);
            this.btnZaawans.TabIndex = 15;
            this.btnZaawans.Text = "Zaawansowane";
            this.btnZaawans.UseVisualStyleBackColor = true;
            this.btnZaawans.Click += new System.EventHandler(this.btnZaawans_Click);
            // 
            // UOgolne
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(842, 525);
            this.Controls.Add(this.gbUstawienia);
            this.Controls.Add(this.btnZaawans);
            this.Controls.Add(this.btnDalej);
            this.Controls.Add(this.gpPliki);
            this.Controls.Add(this.gpDaneLogowania);
            this.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.MaximizeBox = false;
            this.MaximumSize = new System.Drawing.Size(860, 572);
            this.MinimumSize = new System.Drawing.Size(860, 572);
            this.Name = "UOgolne";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Ustawienia Ogólne";
            this.gbUstawienia.ResumeLayout(false);
            this.gbUstawienia.PerformLayout();
            this.gpPliki.ResumeLayout(false);
            this.gpPliki.PerformLayout();
            this.gpDaneLogowania.ResumeLayout(false);
            this.gpDaneLogowania.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Label labDataUsun;
        private System.Windows.Forms.GroupBox gbUstawienia;
        private System.Windows.Forms.DateTimePicker dtDataUsun;
        private System.Windows.Forms.Button btnDalej;
        private System.Windows.Forms.Button btnWybierzLogi;
        private System.Windows.Forms.Button btnWybierzEksport;
        private System.Windows.Forms.TextBox txtPathLogi;
        private System.Windows.Forms.TextBox txtPathEksport;
        private System.Windows.Forms.Label labLogi;
        private System.Windows.Forms.Label labEksport;
        private System.Windows.Forms.GroupBox gpPliki;
        private System.Windows.Forms.Button btnSprPolaczenie;
        private System.Windows.Forms.TextBox txtBaza;
        private System.Windows.Forms.TextBox txtHaslo;
        private System.Windows.Forms.TextBox txtLogin;
        private System.Windows.Forms.TextBox txtSerwer;
        private System.Windows.Forms.Label labBaza;
        private System.Windows.Forms.Label labHasło;
        private System.Windows.Forms.Label labSerwer;
        private System.Windows.Forms.Label labLogin;
        private System.Windows.Forms.GroupBox gpDaneLogowania;
        private System.Windows.Forms.Label labPort;
        private System.Windows.Forms.TextBox txtPort;
        private System.Windows.Forms.Label labLimit;
        private System.Windows.Forms.ComboBox cbLimit;
        private System.Windows.Forms.Button btnZaawans;
        private System.Windows.Forms.Button btnTestowy;
    }
}