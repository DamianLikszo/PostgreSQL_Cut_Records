namespace Odcinanie_Danych_Praca_Inz
{
    partial class UKartoteka
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
            this.cbKolTow = new System.Windows.Forms.ComboBox();
            this.labTowar = new System.Windows.Forms.Label();
            this.cbKolKartId = new System.Windows.Forms.ComboBox();
            this.labUnikalny = new System.Windows.Forms.Label();
            this.cbKolDataEdycji = new System.Windows.Forms.ComboBox();
            this.cbKolStan = new System.Windows.Forms.ComboBox();
            this.labData = new System.Windows.Forms.Label();
            this.labStan = new System.Windows.Forms.Label();
            this.cbTabKart = new System.Windows.Forms.ComboBox();
            this.btnTabKartWybierz = new System.Windows.Forms.Button();
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
            this.gpInformacje.Controls.Add(this.cbTabKart);
            this.gpInformacje.Controls.Add(this.btnTabKartWybierz);
            this.gpInformacje.Controls.Add(this.labTabela);
            this.gpInformacje.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.gpInformacje.Location = new System.Drawing.Point(12, 12);
            this.gpInformacje.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.gpInformacje.Name = "gpInformacje";
            this.gpInformacje.Padding = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.gpInformacje.Size = new System.Drawing.Size(819, 302);
            this.gpInformacje.TabIndex = 1;
            this.gpInformacje.TabStop = false;
            this.gpInformacje.Text = "Informacje odnośnie kartotek magazynowych:";
            // 
            // gpKolumny
            // 
            this.gpKolumny.Controls.Add(this.cbKolTow);
            this.gpKolumny.Controls.Add(this.labTowar);
            this.gpKolumny.Controls.Add(this.cbKolKartId);
            this.gpKolumny.Controls.Add(this.labUnikalny);
            this.gpKolumny.Controls.Add(this.cbKolDataEdycji);
            this.gpKolumny.Controls.Add(this.cbKolStan);
            this.gpKolumny.Controls.Add(this.labData);
            this.gpKolumny.Controls.Add(this.labStan);
            this.gpKolumny.Location = new System.Drawing.Point(5, 92);
            this.gpKolumny.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.gpKolumny.Name = "gpKolumny";
            this.gpKolumny.Padding = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.gpKolumny.Size = new System.Drawing.Size(805, 204);
            this.gpKolumny.TabIndex = 3;
            this.gpKolumny.TabStop = false;
            this.gpKolumny.Text = "Wybierz Kolumnę Przedstawiającą:";
            // 
            // cbKolTow
            // 
            this.cbKolTow.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.cbKolTow.FormattingEnabled = true;
            this.cbKolTow.Location = new System.Drawing.Point(357, 158);
            this.cbKolTow.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.cbKolTow.Name = "cbKolTow";
            this.cbKolTow.Size = new System.Drawing.Size(421, 33);
            this.cbKolTow.TabIndex = 4;
            this.cbKolTow.Validating += new System.ComponentModel.CancelEventHandler(this.cbKol_Validating);
            // 
            // labTowar
            // 
            this.labTowar.AutoSize = true;
            this.labTowar.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.labTowar.Location = new System.Drawing.Point(12, 161);
            this.labTowar.Name = "labTowar";
            this.labTowar.Size = new System.Drawing.Size(67, 25);
            this.labTowar.TabIndex = 6;
            this.labTowar.Text = "Towar";
            // 
            // cbKolKartId
            // 
            this.cbKolKartId.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.cbKolKartId.FormattingEnabled = true;
            this.cbKolKartId.Location = new System.Drawing.Point(357, 38);
            this.cbKolKartId.Margin = new System.Windows.Forms.Padding(4);
            this.cbKolKartId.Name = "cbKolKartId";
            this.cbKolKartId.Size = new System.Drawing.Size(421, 33);
            this.cbKolKartId.TabIndex = 1;
            this.cbKolKartId.Validating += new System.ComponentModel.CancelEventHandler(this.cbKol_Validating);
            // 
            // labUnikalny
            // 
            this.labUnikalny.AutoSize = true;
            this.labUnikalny.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.labUnikalny.Location = new System.Drawing.Point(12, 42);
            this.labUnikalny.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.labUnikalny.Name = "labUnikalny";
            this.labUnikalny.Size = new System.Drawing.Size(147, 25);
            this.labUnikalny.TabIndex = 4;
            this.labUnikalny.Text = "Unikalny numer";
            // 
            // cbKolDataEdycji
            // 
            this.cbKolDataEdycji.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.cbKolDataEdycji.FormattingEnabled = true;
            this.cbKolDataEdycji.Location = new System.Drawing.Point(357, 118);
            this.cbKolDataEdycji.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.cbKolDataEdycji.Name = "cbKolDataEdycji";
            this.cbKolDataEdycji.Size = new System.Drawing.Size(421, 33);
            this.cbKolDataEdycji.TabIndex = 3;
            this.cbKolDataEdycji.Validating += new System.ComponentModel.CancelEventHandler(this.cbKol_Validating);
            // 
            // cbKolStan
            // 
            this.cbKolStan.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.cbKolStan.FormattingEnabled = true;
            this.cbKolStan.Location = new System.Drawing.Point(357, 79);
            this.cbKolStan.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.cbKolStan.Name = "cbKolStan";
            this.cbKolStan.Size = new System.Drawing.Size(421, 33);
            this.cbKolStan.TabIndex = 2;
            this.cbKolStan.Validating += new System.ComponentModel.CancelEventHandler(this.cbKol_Validating);
            // 
            // labData
            // 
            this.labData.AutoSize = true;
            this.labData.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.labData.Location = new System.Drawing.Point(12, 122);
            this.labData.Name = "labData";
            this.labData.Size = new System.Drawing.Size(153, 25);
            this.labData.TabIndex = 1;
            this.labData.Text = "Datę aktualizacji";
            // 
            // labStan
            // 
            this.labStan.AutoSize = true;
            this.labStan.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.labStan.Location = new System.Drawing.Point(12, 82);
            this.labStan.Name = "labStan";
            this.labStan.Size = new System.Drawing.Size(131, 25);
            this.labStan.TabIndex = 0;
            this.labStan.Text = "Stan kartoteki";
            // 
            // cbTabKart
            // 
            this.cbTabKart.FormattingEnabled = true;
            this.cbTabKart.Location = new System.Drawing.Point(216, 39);
            this.cbTabKart.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.cbTabKart.Name = "cbTabKart";
            this.cbTabKart.Size = new System.Drawing.Size(377, 33);
            this.cbTabKart.TabIndex = 1;
            this.cbTabKart.Validating += new System.ComponentModel.CancelEventHandler(this.cbTabKart_Validating);
            // 
            // btnTabKartWybierz
            // 
            this.btnTabKartWybierz.Location = new System.Drawing.Point(600, 39);
            this.btnTabKartWybierz.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnTabKartWybierz.Name = "btnTabKartWybierz";
            this.btnTabKartWybierz.Size = new System.Drawing.Size(212, 33);
            this.btnTabKartWybierz.TabIndex = 2;
            this.btnTabKartWybierz.Text = "Wczytaj";
            this.btnTabKartWybierz.UseVisualStyleBackColor = true;
            this.btnTabKartWybierz.Click += new System.EventHandler(this.btnTabKartWybierz_Click);
            // 
            // labTabela
            // 
            this.labTabela.AutoSize = true;
            this.labTabela.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.labTabela.Location = new System.Drawing.Point(17, 43);
            this.labTabela.Name = "labTabela";
            this.labTabela.Size = new System.Drawing.Size(147, 25);
            this.labTabela.TabIndex = 0;
            this.labTabela.Text = "Tabela kartotek";
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
            // btnWstecz
            // 
            this.btnWstecz.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.btnWstecz.Location = new System.Drawing.Point(17, 463);
            this.btnWstecz.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnWstecz.Name = "btnWstecz";
            this.btnWstecz.Size = new System.Drawing.Size(161, 58);
            this.btnWstecz.TabIndex = 3;
            this.btnWstecz.Text = "Wstecz";
            this.btnWstecz.UseVisualStyleBackColor = true;
            this.btnWstecz.Click += new System.EventHandler(this.btnWstecz_Click);
            // 
            // UKartoteka
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
            this.Name = "UKartoteka";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Ustawienia Kartotek Magazynu";
            this.gpInformacje.ResumeLayout(false);
            this.gpInformacje.PerformLayout();
            this.gpKolumny.ResumeLayout(false);
            this.gpKolumny.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox gpInformacje;
        private System.Windows.Forms.GroupBox gpKolumny;
        private System.Windows.Forms.ComboBox cbKolDataEdycji;
        private System.Windows.Forms.ComboBox cbKolStan;
        private System.Windows.Forms.Label labData;
        private System.Windows.Forms.Label labStan;
        private System.Windows.Forms.ComboBox cbTabKart;
        private System.Windows.Forms.Button btnTabKartWybierz;
        private System.Windows.Forms.Label labTabela;
        private System.Windows.Forms.Button btnDalej;
        private System.Windows.Forms.Button btnWstecz;
        private System.Windows.Forms.Label labUnikalny;
        private System.Windows.Forms.ComboBox cbKolKartId;
        private System.Windows.Forms.ComboBox cbKolTow;
        private System.Windows.Forms.Label labTowar;
    }
}