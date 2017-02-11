namespace Odcinanie_Danych_Praca_Inz
{
    partial class UZlecenie
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
            this.gpInformacje = new System.Windows.Forms.GroupBox();
            this.gpKolumny = new System.Windows.Forms.GroupBox();
            this.labPrac = new System.Windows.Forms.Label();
            this.cbKolPrac = new System.Windows.Forms.ComboBox();
            this.cbKolZlecId = new System.Windows.Forms.ComboBox();
            this.labUnikalny = new System.Windows.Forms.Label();
            this.cbKolDataZak = new System.Windows.Forms.ComboBox();
            this.labData = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.btnZlecTabWybierz = new System.Windows.Forms.Button();
            this.cbTabZlec = new System.Windows.Forms.ComboBox();
            this.labTabela = new System.Windows.Forms.Label();
            this.btnDalej = new System.Windows.Forms.Button();
            this.btnWstecz = new System.Windows.Forms.Button();
            this.gpInformacje.SuspendLayout();
            this.gpKolumny.SuspendLayout();
            this.SuspendLayout();
            // 
            // gpInformacje
            // 
            this.gpInformacje.Controls.Add(this.gpKolumny);
            this.gpInformacje.Controls.Add(this.label4);
            this.gpInformacje.Controls.Add(this.btnZlecTabWybierz);
            this.gpInformacje.Controls.Add(this.cbTabZlec);
            this.gpInformacje.Controls.Add(this.labTabela);
            this.gpInformacje.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.gpInformacje.Location = new System.Drawing.Point(12, 12);
            this.gpInformacje.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.gpInformacje.Name = "gpInformacje";
            this.gpInformacje.Padding = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.gpInformacje.Size = new System.Drawing.Size(819, 284);
            this.gpInformacje.TabIndex = 1;
            this.gpInformacje.TabStop = false;
            this.gpInformacje.Text = "Informacje odnośnie zleceń:";
            // 
            // gpKolumny
            // 
            this.gpKolumny.Controls.Add(this.labPrac);
            this.gpKolumny.Controls.Add(this.cbKolPrac);
            this.gpKolumny.Controls.Add(this.cbKolZlecId);
            this.gpKolumny.Controls.Add(this.labUnikalny);
            this.gpKolumny.Controls.Add(this.cbKolDataZak);
            this.gpKolumny.Controls.Add(this.labData);
            this.gpKolumny.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.gpKolumny.Location = new System.Drawing.Point(7, 88);
            this.gpKolumny.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.gpKolumny.Name = "gpKolumny";
            this.gpKolumny.Padding = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.gpKolumny.Size = new System.Drawing.Size(805, 192);
            this.gpKolumny.TabIndex = 4;
            this.gpKolumny.TabStop = false;
            this.gpKolumny.Text = "Wybierz Kolumnę Przedstawiającą:";
            // 
            // labPrac
            // 
            this.labPrac.AutoSize = true;
            this.labPrac.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.labPrac.Location = new System.Drawing.Point(16, 141);
            this.labPrac.Name = "labPrac";
            this.labPrac.Size = new System.Drawing.Size(113, 25);
            this.labPrac.TabIndex = 9;
            this.labPrac.Text = "Pracownika";
            // 
            // cbKolPrac
            // 
            this.cbKolPrac.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.cbKolPrac.FormattingEnabled = true;
            this.cbKolPrac.Location = new System.Drawing.Point(378, 138);
            this.cbKolPrac.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.cbKolPrac.Name = "cbKolPrac";
            this.cbKolPrac.Size = new System.Drawing.Size(421, 33);
            this.cbKolPrac.TabIndex = 4;
            this.cbKolPrac.Validating += new System.ComponentModel.CancelEventHandler(this.cbKol_Validating);
            // 
            // cbKolZlecId
            // 
            this.cbKolZlecId.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.cbKolZlecId.FormattingEnabled = true;
            this.cbKolZlecId.Location = new System.Drawing.Point(378, 39);
            this.cbKolZlecId.Margin = new System.Windows.Forms.Padding(4);
            this.cbKolZlecId.Name = "cbKolZlecId";
            this.cbKolZlecId.Size = new System.Drawing.Size(421, 33);
            this.cbKolZlecId.TabIndex = 1;
            this.cbKolZlecId.Validating += new System.ComponentModel.CancelEventHandler(this.cbKol_Validating);
            // 
            // labUnikalny
            // 
            this.labUnikalny.AutoSize = true;
            this.labUnikalny.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.labUnikalny.Location = new System.Drawing.Point(16, 42);
            this.labUnikalny.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.labUnikalny.Name = "labUnikalny";
            this.labUnikalny.Size = new System.Drawing.Size(147, 25);
            this.labUnikalny.TabIndex = 5;
            this.labUnikalny.Text = "Unikalny numer";
            // 
            // cbKolDataZak
            // 
            this.cbKolDataZak.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.cbKolDataZak.FormattingEnabled = true;
            this.cbKolDataZak.Location = new System.Drawing.Point(378, 88);
            this.cbKolDataZak.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.cbKolDataZak.Name = "cbKolDataZak";
            this.cbKolDataZak.Size = new System.Drawing.Size(421, 33);
            this.cbKolDataZak.TabIndex = 3;
            this.cbKolDataZak.Validating += new System.ComponentModel.CancelEventHandler(this.cbKol_Validating);
            // 
            // labData
            // 
            this.labData.AutoSize = true;
            this.labData.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.labData.Location = new System.Drawing.Point(16, 91);
            this.labData.Name = "labData";
            this.labData.Size = new System.Drawing.Size(245, 25);
            this.labData.TabIndex = 2;
            this.labData.Text = "Datę zakończenia zlecenia";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(37, 176);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(0, 25);
            this.label4.TabIndex = 5;
            // 
            // btnZlecTabWybierz
            // 
            this.btnZlecTabWybierz.Location = new System.Drawing.Point(600, 37);
            this.btnZlecTabWybierz.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnZlecTabWybierz.Name = "btnZlecTabWybierz";
            this.btnZlecTabWybierz.Size = new System.Drawing.Size(212, 33);
            this.btnZlecTabWybierz.TabIndex = 3;
            this.btnZlecTabWybierz.Text = "Wybierz";
            this.btnZlecTabWybierz.UseVisualStyleBackColor = true;
            this.btnZlecTabWybierz.Click += new System.EventHandler(this.btnZlecTabWybierz_Click);
            // 
            // cbTabZlec
            // 
            this.cbTabZlec.FormattingEnabled = true;
            this.cbTabZlec.Location = new System.Drawing.Point(216, 37);
            this.cbTabZlec.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.cbTabZlec.Name = "cbTabZlec";
            this.cbTabZlec.Size = new System.Drawing.Size(377, 33);
            this.cbTabZlec.TabIndex = 2;
            this.cbTabZlec.Validating += new System.ComponentModel.CancelEventHandler(this.cbTabZlec_Validating);
            // 
            // labTabela
            // 
            this.labTabela.AutoSize = true;
            this.labTabela.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.labTabela.Location = new System.Drawing.Point(19, 46);
            this.labTabela.Name = "labTabela";
            this.labTabela.Size = new System.Drawing.Size(135, 25);
            this.labTabela.TabIndex = 0;
            this.labTabela.Text = "Tabela zleceń";
            // 
            // btnDalej
            // 
            this.btnDalej.Enabled = false;
            this.btnDalej.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.btnDalej.Location = new System.Drawing.Point(669, 463);
            this.btnDalej.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnDalej.Name = "btnDalej";
            this.btnDalej.Size = new System.Drawing.Size(161, 58);
            this.btnDalej.TabIndex = 6;
            this.btnDalej.Text = "Dalej";
            this.btnDalej.UseVisualStyleBackColor = true;
            this.btnDalej.Click += new System.EventHandler(this.btnDalej_Click);
            // 
            // btnWstecz
            // 
            this.btnWstecz.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.btnWstecz.Location = new System.Drawing.Point(12, 463);
            this.btnWstecz.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnWstecz.Name = "btnWstecz";
            this.btnWstecz.Size = new System.Drawing.Size(161, 58);
            this.btnWstecz.TabIndex = 7;
            this.btnWstecz.Text = "Wstecz";
            this.btnWstecz.UseVisualStyleBackColor = true;
            this.btnWstecz.Click += new System.EventHandler(this.btnWstecz_Click);
            // 
            // UZlecenie
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(841, 523);
            this.Controls.Add(this.gpInformacje);
            this.Controls.Add(this.btnWstecz);
            this.Controls.Add(this.btnDalej);
            this.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.MaximizeBox = false;
            this.MaximumSize = new System.Drawing.Size(859, 570);
            this.MinimumSize = new System.Drawing.Size(859, 570);
            this.Name = "UZlecenie";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Ustawienia Zleceń";
            this.gpInformacje.ResumeLayout(false);
            this.gpInformacje.PerformLayout();
            this.gpKolumny.ResumeLayout(false);
            this.gpKolumny.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox gpInformacje;
        private System.Windows.Forms.GroupBox gpKolumny;
        private System.Windows.Forms.ComboBox cbKolDataZak;
        private System.Windows.Forms.Label labData;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Button btnZlecTabWybierz;
        private System.Windows.Forms.ComboBox cbTabZlec;
        private System.Windows.Forms.Label labTabela;
        private System.Windows.Forms.Button btnDalej;
        private System.Windows.Forms.Button btnWstecz;
        private System.Windows.Forms.ComboBox cbKolZlecId;
        private System.Windows.Forms.Label labUnikalny;
        private System.Windows.Forms.Label labPrac;
        private System.Windows.Forms.ComboBox cbKolPrac;
    }
}