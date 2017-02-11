namespace Odcinanie_Danych_Praca_Inz
{
    partial class UPracownik
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
            this.btnDalej = new System.Windows.Forms.Button();
            this.btnTabPracWybierz = new System.Windows.Forms.Button();
            this.cbTabPrac = new System.Windows.Forms.ComboBox();
            this.labTabela = new System.Windows.Forms.Label();
            this.cbKolDataZak = new System.Windows.Forms.ComboBox();
            this.labData = new System.Windows.Forms.Label();
            this.gpKolumny = new System.Windows.Forms.GroupBox();
            this.cbKolPracId = new System.Windows.Forms.ComboBox();
            this.labUnikalny = new System.Windows.Forms.Label();
            this.gpInformacje = new System.Windows.Forms.GroupBox();
            this.btnWstecz = new System.Windows.Forms.Button();
            this.gpKolumny.SuspendLayout();
            this.gpInformacje.SuspendLayout();
            this.SuspendLayout();
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
            // btnTabPracWybierz
            // 
            this.btnTabPracWybierz.Location = new System.Drawing.Point(605, 42);
            this.btnTabPracWybierz.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnTabPracWybierz.Name = "btnTabPracWybierz";
            this.btnTabPracWybierz.Size = new System.Drawing.Size(212, 33);
            this.btnTabPracWybierz.TabIndex = 2;
            this.btnTabPracWybierz.Text = "Wczytaj";
            this.btnTabPracWybierz.UseVisualStyleBackColor = true;
            this.btnTabPracWybierz.Click += new System.EventHandler(this.btnTabPracWybierz_Click);
            // 
            // cbTabPrac
            // 
            this.cbTabPrac.FormattingEnabled = true;
            this.cbTabPrac.Location = new System.Drawing.Point(221, 42);
            this.cbTabPrac.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.cbTabPrac.Name = "cbTabPrac";
            this.cbTabPrac.Size = new System.Drawing.Size(377, 33);
            this.cbTabPrac.TabIndex = 1;
            this.cbTabPrac.Validating += new System.ComponentModel.CancelEventHandler(this.cbTabPac_Validating);
            // 
            // labTabela
            // 
            this.labTabela.AutoSize = true;
            this.labTabela.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.labTabela.Location = new System.Drawing.Point(13, 46);
            this.labTabela.Name = "labTabela";
            this.labTabela.Size = new System.Drawing.Size(191, 25);
            this.labTabela.TabIndex = 0;
            this.labTabela.Text = "Tabela pracowników";
            // 
            // cbKolDataZak
            // 
            this.cbKolDataZak.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.cbKolDataZak.FormattingEnabled = true;
            this.cbKolDataZak.Location = new System.Drawing.Point(336, 86);
            this.cbKolDataZak.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.cbKolDataZak.Name = "cbKolDataZak";
            this.cbKolDataZak.Size = new System.Drawing.Size(463, 33);
            this.cbKolDataZak.TabIndex = 3;
            this.cbKolDataZak.Validating += new System.ComponentModel.CancelEventHandler(this.cbKol_Validating);
            // 
            // labData
            // 
            this.labData.AutoSize = true;
            this.labData.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.labData.Location = new System.Drawing.Point(8, 89);
            this.labData.Name = "labData";
            this.labData.Size = new System.Drawing.Size(271, 25);
            this.labData.TabIndex = 0;
            this.labData.Text = "Datę zakończenia współpracy";
            // 
            // gpKolumny
            // 
            this.gpKolumny.Controls.Add(this.cbKolPracId);
            this.gpKolumny.Controls.Add(this.labUnikalny);
            this.gpKolumny.Controls.Add(this.cbKolDataZak);
            this.gpKolumny.Controls.Add(this.labData);
            this.gpKolumny.Location = new System.Drawing.Point(5, 94);
            this.gpKolumny.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.gpKolumny.Name = "gpKolumny";
            this.gpKolumny.Padding = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.gpKolumny.Size = new System.Drawing.Size(805, 137);
            this.gpKolumny.TabIndex = 3;
            this.gpKolumny.TabStop = false;
            this.gpKolumny.Text = "Wybierz kolumnę przedstawiającą:";
            // 
            // cbKolPracId
            // 
            this.cbKolPracId.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.cbKolPracId.FormattingEnabled = true;
            this.cbKolPracId.Location = new System.Drawing.Point(336, 38);
            this.cbKolPracId.Margin = new System.Windows.Forms.Padding(4);
            this.cbKolPracId.Name = "cbKolPracId";
            this.cbKolPracId.Size = new System.Drawing.Size(461, 33);
            this.cbKolPracId.TabIndex = 1;
            this.cbKolPracId.Validating += new System.ComponentModel.CancelEventHandler(this.cbKol_Validating);
            // 
            // labUnikalny
            // 
            this.labUnikalny.AutoSize = true;
            this.labUnikalny.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.labUnikalny.Location = new System.Drawing.Point(8, 42);
            this.labUnikalny.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.labUnikalny.Name = "labUnikalny";
            this.labUnikalny.Size = new System.Drawing.Size(147, 25);
            this.labUnikalny.TabIndex = 5;
            this.labUnikalny.Text = "Unikalny numer";
            // 
            // gpInformacje
            // 
            this.gpInformacje.Controls.Add(this.gpKolumny);
            this.gpInformacje.Controls.Add(this.btnTabPracWybierz);
            this.gpInformacje.Controls.Add(this.cbTabPrac);
            this.gpInformacje.Controls.Add(this.labTabela);
            this.gpInformacje.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.gpInformacje.Location = new System.Drawing.Point(12, 12);
            this.gpInformacje.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.gpInformacje.Name = "gpInformacje";
            this.gpInformacje.Padding = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.gpInformacje.Size = new System.Drawing.Size(819, 235);
            this.gpInformacje.TabIndex = 1;
            this.gpInformacje.TabStop = false;
            this.gpInformacje.Text = "Informacje odnośnie pracowników:";
            // 
            // btnWstecz
            // 
            this.btnWstecz.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.btnWstecz.Location = new System.Drawing.Point(12, 463);
            this.btnWstecz.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnWstecz.Name = "btnWstecz";
            this.btnWstecz.Size = new System.Drawing.Size(161, 58);
            this.btnWstecz.TabIndex = 3;
            this.btnWstecz.Text = "Wstecz";
            this.btnWstecz.UseVisualStyleBackColor = true;
            this.btnWstecz.Click += new System.EventHandler(this.btnWstecz_Click);
            // 
            // UPracownik
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
            this.Name = "UPracownik";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Ustawienia Pracowników";
            this.gpKolumny.ResumeLayout(false);
            this.gpKolumny.PerformLayout();
            this.gpInformacje.ResumeLayout(false);
            this.gpInformacje.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnDalej;
        private System.Windows.Forms.Button btnTabPracWybierz;
        private System.Windows.Forms.ComboBox cbTabPrac;
        private System.Windows.Forms.Label labTabela;
        private System.Windows.Forms.ComboBox cbKolDataZak;
        private System.Windows.Forms.Label labData;
        private System.Windows.Forms.GroupBox gpKolumny;
        private System.Windows.Forms.GroupBox gpInformacje;
        private System.Windows.Forms.Button btnWstecz;
        private System.Windows.Forms.Label labUnikalny;
        private System.Windows.Forms.ComboBox cbKolPracId;
    }
}