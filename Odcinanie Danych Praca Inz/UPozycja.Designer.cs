namespace Odcinanie_Danych_Praca_Inz
{
    partial class UPozycja
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
            this.btnWstecz = new System.Windows.Forms.Button();
            this.label4 = new System.Windows.Forms.Label();
            this.btnTabPozWybierz = new System.Windows.Forms.Button();
            this.cbTabPoz = new System.Windows.Forms.ComboBox();
            this.labTabela = new System.Windows.Forms.Label();
            this.btnDalej = new System.Windows.Forms.Button();
            this.cbKolPozId = new System.Windows.Forms.ComboBox();
            this.labUnikalny = new System.Windows.Forms.Label();
            this.cbKolZlec = new System.Windows.Forms.ComboBox();
            this.labZlec = new System.Windows.Forms.Label();
            this.gpKolumny = new System.Windows.Forms.GroupBox();
            this.labTow = new System.Windows.Forms.Label();
            this.cbKolTow = new System.Windows.Forms.ComboBox();
            this.gpInformacje = new System.Windows.Forms.GroupBox();
            this.gpKolumny.SuspendLayout();
            this.gpInformacje.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnWstecz
            // 
            this.btnWstecz.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.btnWstecz.Location = new System.Drawing.Point(13, 463);
            this.btnWstecz.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnWstecz.Name = "btnWstecz";
            this.btnWstecz.Size = new System.Drawing.Size(161, 58);
            this.btnWstecz.TabIndex = 3;
            this.btnWstecz.Text = "Wstecz";
            this.btnWstecz.UseVisualStyleBackColor = true;
            this.btnWstecz.Click += new System.EventHandler(this.btnWstecz_Click);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(37, 176);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(0, 25);
            this.label4.TabIndex = 5;
            // 
            // btnTabPozWybierz
            // 
            this.btnTabPozWybierz.Location = new System.Drawing.Point(600, 37);
            this.btnTabPozWybierz.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnTabPozWybierz.Name = "btnTabPozWybierz";
            this.btnTabPozWybierz.Size = new System.Drawing.Size(212, 33);
            this.btnTabPozWybierz.TabIndex = 2;
            this.btnTabPozWybierz.Text = "Wybierz";
            this.btnTabPozWybierz.UseVisualStyleBackColor = true;
            this.btnTabPozWybierz.Click += new System.EventHandler(this.btnPozTabWybierz_Click);
            // 
            // cbTabPoz
            // 
            this.cbTabPoz.FormattingEnabled = true;
            this.cbTabPoz.Location = new System.Drawing.Point(216, 37);
            this.cbTabPoz.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.cbTabPoz.Name = "cbTabPoz";
            this.cbTabPoz.Size = new System.Drawing.Size(377, 33);
            this.cbTabPoz.TabIndex = 1;
            this.cbTabPoz.Validating += new System.ComponentModel.CancelEventHandler(this.cbTabPoz_Validating);
            // 
            // labTabela
            // 
            this.labTabela.AutoSize = true;
            this.labTabela.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.labTabela.Location = new System.Drawing.Point(19, 39);
            this.labTabela.Name = "labTabela";
            this.labTabela.Size = new System.Drawing.Size(138, 25);
            this.labTabela.TabIndex = 0;
            this.labTabela.Text = "Tabela pozycji";
            // 
            // btnDalej
            // 
            this.btnDalej.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.btnDalej.Location = new System.Drawing.Point(669, 463);
            this.btnDalej.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnDalej.Name = "btnDalej";
            this.btnDalej.Size = new System.Drawing.Size(161, 58);
            this.btnDalej.TabIndex = 2;
            this.btnDalej.Text = "Dalej";
            this.btnDalej.UseVisualStyleBackColor = true;
            this.btnDalej.Click += new System.EventHandler(this.btnDalej_Click);
            // 
            // cbKolPozId
            // 
            this.cbKolPozId.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.cbKolPozId.FormattingEnabled = true;
            this.cbKolPozId.Location = new System.Drawing.Point(376, 38);
            this.cbKolPozId.Margin = new System.Windows.Forms.Padding(4);
            this.cbKolPozId.Name = "cbKolPozId";
            this.cbKolPozId.Size = new System.Drawing.Size(421, 33);
            this.cbKolPozId.TabIndex = 1;
            this.cbKolPozId.Validating += new System.ComponentModel.CancelEventHandler(this.cbKol_Validating);
            // 
            // labUnikalny
            // 
            this.labUnikalny.AutoSize = true;
            this.labUnikalny.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.labUnikalny.Location = new System.Drawing.Point(13, 42);
            this.labUnikalny.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.labUnikalny.Name = "labUnikalny";
            this.labUnikalny.Size = new System.Drawing.Size(147, 25);
            this.labUnikalny.TabIndex = 5;
            this.labUnikalny.Text = "Unikalny numer";
            // 
            // cbKolZlec
            // 
            this.cbKolZlec.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.cbKolZlec.FormattingEnabled = true;
            this.cbKolZlec.Location = new System.Drawing.Point(376, 82);
            this.cbKolZlec.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.cbKolZlec.Name = "cbKolZlec";
            this.cbKolZlec.Size = new System.Drawing.Size(421, 33);
            this.cbKolZlec.TabIndex = 2;
            this.cbKolZlec.Validating += new System.ComponentModel.CancelEventHandler(this.cbKol_Validating);
            // 
            // labZlec
            // 
            this.labZlec.AutoSize = true;
            this.labZlec.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.labZlec.Location = new System.Drawing.Point(13, 85);
            this.labZlec.Name = "labZlec";
            this.labZlec.Size = new System.Drawing.Size(147, 25);
            this.labZlec.TabIndex = 1;
            this.labZlec.Text = "Numer zlecenia";
            // 
            // gpKolumny
            // 
            this.gpKolumny.Controls.Add(this.labTow);
            this.gpKolumny.Controls.Add(this.cbKolTow);
            this.gpKolumny.Controls.Add(this.cbKolPozId);
            this.gpKolumny.Controls.Add(this.labUnikalny);
            this.gpKolumny.Controls.Add(this.cbKolZlec);
            this.gpKolumny.Controls.Add(this.labZlec);
            this.gpKolumny.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.gpKolumny.Location = new System.Drawing.Point(5, 94);
            this.gpKolumny.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.gpKolumny.Name = "gpKolumny";
            this.gpKolumny.Padding = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.gpKolumny.Size = new System.Drawing.Size(805, 176);
            this.gpKolumny.TabIndex = 3;
            this.gpKolumny.TabStop = false;
            this.gpKolumny.Text = "Wybierz Kolumnę Przedstawiającą:";
            // 
            // labTow
            // 
            this.labTow.AutoSize = true;
            this.labTow.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.labTow.Location = new System.Drawing.Point(14, 132);
            this.labTow.Name = "labTow";
            this.labTow.Size = new System.Drawing.Size(67, 25);
            this.labTow.TabIndex = 8;
            this.labTow.Text = "Towar";
            // 
            // cbKolTow
            // 
            this.cbKolTow.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.cbKolTow.FormattingEnabled = true;
            this.cbKolTow.Location = new System.Drawing.Point(376, 129);
            this.cbKolTow.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.cbKolTow.Name = "cbKolTow";
            this.cbKolTow.Size = new System.Drawing.Size(421, 33);
            this.cbKolTow.TabIndex = 3;
            this.cbKolTow.Validating += new System.ComponentModel.CancelEventHandler(this.cbKol_Validating);
            // 
            // gpInformacje
            // 
            this.gpInformacje.Controls.Add(this.gpKolumny);
            this.gpInformacje.Controls.Add(this.label4);
            this.gpInformacje.Controls.Add(this.btnTabPozWybierz);
            this.gpInformacje.Controls.Add(this.cbTabPoz);
            this.gpInformacje.Controls.Add(this.labTabela);
            this.gpInformacje.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.gpInformacje.Location = new System.Drawing.Point(13, 12);
            this.gpInformacje.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.gpInformacje.Name = "gpInformacje";
            this.gpInformacje.Padding = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.gpInformacje.Size = new System.Drawing.Size(819, 276);
            this.gpInformacje.TabIndex = 1;
            this.gpInformacje.TabStop = false;
            this.gpInformacje.Text = "Informacje odnośnie pozycji zleceń:";
            // 
            // UPozycja
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(841, 523);
            this.Controls.Add(this.btnWstecz);
            this.Controls.Add(this.btnDalej);
            this.Controls.Add(this.gpInformacje);
            this.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.MaximizeBox = false;
            this.MaximumSize = new System.Drawing.Size(859, 570);
            this.MinimumSize = new System.Drawing.Size(859, 570);
            this.Name = "UPozycja";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Ustawienia pozycji zlecenia";
            this.gpKolumny.ResumeLayout(false);
            this.gpKolumny.PerformLayout();
            this.gpInformacje.ResumeLayout(false);
            this.gpInformacje.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnWstecz;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Button btnTabPozWybierz;
        private System.Windows.Forms.ComboBox cbTabPoz;
        private System.Windows.Forms.Label labTabela;
        private System.Windows.Forms.Button btnDalej;
        private System.Windows.Forms.ComboBox cbKolPozId;
        private System.Windows.Forms.Label labUnikalny;
        private System.Windows.Forms.ComboBox cbKolZlec;
        private System.Windows.Forms.Label labZlec;
        private System.Windows.Forms.GroupBox gpKolumny;
        private System.Windows.Forms.GroupBox gpInformacje;
        private System.Windows.Forms.Label labTow;
        private System.Windows.Forms.ComboBox cbKolTow;
    }
}