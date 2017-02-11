namespace Odcinanie_Danych_Praca_Inz
{
    partial class UTowar
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
            this.btnTabTowWybierz = new System.Windows.Forms.Button();
            this.cbTabTow = new System.Windows.Forms.ComboBox();
            this.labTabela = new System.Windows.Forms.Label();
            this.btnDalej = new System.Windows.Forms.Button();
            this.cbKolTowId = new System.Windows.Forms.ComboBox();
            this.labUnikalny = new System.Windows.Forms.Label();
            this.cbKolDataEdycji = new System.Windows.Forms.ComboBox();
            this.labData = new System.Windows.Forms.Label();
            this.gpKolumny = new System.Windows.Forms.GroupBox();
            this.gpInformacje = new System.Windows.Forms.GroupBox();
            this.gpKolumny.SuspendLayout();
            this.gpInformacje.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnWstecz
            // 
            this.btnWstecz.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.btnWstecz.Location = new System.Drawing.Point(10, 462);
            this.btnWstecz.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnWstecz.Name = "btnWstecz";
            this.btnWstecz.Size = new System.Drawing.Size(161, 58);
            this.btnWstecz.TabIndex = 7;
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
            // btnTabTowWybierz
            // 
            this.btnTabTowWybierz.Location = new System.Drawing.Point(600, 37);
            this.btnTabTowWybierz.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnTabTowWybierz.Name = "btnTabTowWybierz";
            this.btnTabTowWybierz.Size = new System.Drawing.Size(212, 33);
            this.btnTabTowWybierz.TabIndex = 3;
            this.btnTabTowWybierz.Text = "Wybierz";
            this.btnTabTowWybierz.UseVisualStyleBackColor = true;
            this.btnTabTowWybierz.Click += new System.EventHandler(this.btnTabTowWybierz_Click);
            // 
            // cbTabTow
            // 
            this.cbTabTow.FormattingEnabled = true;
            this.cbTabTow.Location = new System.Drawing.Point(216, 37);
            this.cbTabTow.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.cbTabTow.Name = "cbTabTow";
            this.cbTabTow.Size = new System.Drawing.Size(377, 33);
            this.cbTabTow.TabIndex = 2;
            this.cbTabTow.Validating += new System.ComponentModel.CancelEventHandler(this.cbTabTow_Validating);
            // 
            // labTabela
            // 
            this.labTabela.AutoSize = true;
            this.labTabela.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.labTabela.Location = new System.Drawing.Point(22, 41);
            this.labTabela.Name = "labTabela";
            this.labTabela.Size = new System.Drawing.Size(150, 25);
            this.labTabela.TabIndex = 0;
            this.labTabela.Text = "Tabela towarów";
            // 
            // btnDalej
            // 
            this.btnDalej.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.btnDalej.Location = new System.Drawing.Point(667, 462);
            this.btnDalej.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnDalej.Name = "btnDalej";
            this.btnDalej.Size = new System.Drawing.Size(161, 58);
            this.btnDalej.TabIndex = 6;
            this.btnDalej.Text = "Dalej";
            this.btnDalej.UseVisualStyleBackColor = true;
            this.btnDalej.Click += new System.EventHandler(this.btnDalej_Click);
            // 
            // cbKolTowId
            // 
            this.cbKolTowId.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.cbKolTowId.FormattingEnabled = true;
            this.cbKolTowId.Location = new System.Drawing.Point(377, 38);
            this.cbKolTowId.Margin = new System.Windows.Forms.Padding(4);
            this.cbKolTowId.Name = "cbKolTowId";
            this.cbKolTowId.Size = new System.Drawing.Size(421, 33);
            this.cbKolTowId.TabIndex = 1;
            this.cbKolTowId.Validating += new System.ComponentModel.CancelEventHandler(this.cbKol_Validating);
            // 
            // labUnikalny
            // 
            this.labUnikalny.AutoSize = true;
            this.labUnikalny.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.labUnikalny.Location = new System.Drawing.Point(14, 43);
            this.labUnikalny.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.labUnikalny.Name = "labUnikalny";
            this.labUnikalny.Size = new System.Drawing.Size(147, 25);
            this.labUnikalny.TabIndex = 5;
            this.labUnikalny.Text = "Unikalny numer";
            // 
            // cbKolDataEdycji
            // 
            this.cbKolDataEdycji.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.cbKolDataEdycji.FormattingEnabled = true;
            this.cbKolDataEdycji.Location = new System.Drawing.Point(377, 86);
            this.cbKolDataEdycji.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.cbKolDataEdycji.Name = "cbKolDataEdycji";
            this.cbKolDataEdycji.Size = new System.Drawing.Size(421, 33);
            this.cbKolDataEdycji.TabIndex = 3;
            this.cbKolDataEdycji.Validating += new System.ComponentModel.CancelEventHandler(this.cbKol_Validating);
            // 
            // labData
            // 
            this.labData.AutoSize = true;
            this.labData.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.labData.Location = new System.Drawing.Point(16, 89);
            this.labData.Name = "labData";
            this.labData.Size = new System.Drawing.Size(185, 25);
            this.labData.TabIndex = 2;
            this.labData.Text = "Datę ostatniej edycji";
            // 
            // gpKolumny
            // 
            this.gpKolumny.Controls.Add(this.cbKolTowId);
            this.gpKolumny.Controls.Add(this.labUnikalny);
            this.gpKolumny.Controls.Add(this.cbKolDataEdycji);
            this.gpKolumny.Controls.Add(this.labData);
            this.gpKolumny.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.gpKolumny.Location = new System.Drawing.Point(7, 88);
            this.gpKolumny.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.gpKolumny.Name = "gpKolumny";
            this.gpKolumny.Padding = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.gpKolumny.Size = new System.Drawing.Size(805, 135);
            this.gpKolumny.TabIndex = 4;
            this.gpKolumny.TabStop = false;
            this.gpKolumny.Text = "Wybierz Kolumnę Przedstawiającą:";
            // 
            // gpInformacje
            // 
            this.gpInformacje.Controls.Add(this.gpKolumny);
            this.gpInformacje.Controls.Add(this.label4);
            this.gpInformacje.Controls.Add(this.btnTabTowWybierz);
            this.gpInformacje.Controls.Add(this.cbTabTow);
            this.gpInformacje.Controls.Add(this.labTabela);
            this.gpInformacje.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.gpInformacje.Location = new System.Drawing.Point(12, 12);
            this.gpInformacje.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.gpInformacje.Name = "gpInformacje";
            this.gpInformacje.Padding = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.gpInformacje.Size = new System.Drawing.Size(819, 227);
            this.gpInformacje.TabIndex = 1;
            this.gpInformacje.TabStop = false;
            this.gpInformacje.Text = "Informacje odnośnie katalogu towarów:";
            // 
            // UTowar
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(841, 523);
            this.Controls.Add(this.btnWstecz);
            this.Controls.Add(this.btnDalej);
            this.Controls.Add(this.gpInformacje);
            this.MaximizeBox = false;
            this.MaximumSize = new System.Drawing.Size(859, 570);
            this.MinimumSize = new System.Drawing.Size(859, 570);
            this.Name = "UTowar";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Ustawienia towaru";
            this.gpKolumny.ResumeLayout(false);
            this.gpKolumny.PerformLayout();
            this.gpInformacje.ResumeLayout(false);
            this.gpInformacje.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnWstecz;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Button btnTabTowWybierz;
        private System.Windows.Forms.ComboBox cbTabTow;
        private System.Windows.Forms.Label labTabela;
        private System.Windows.Forms.Button btnDalej;
        private System.Windows.Forms.ComboBox cbKolTowId;
        private System.Windows.Forms.Label labUnikalny;
        private System.Windows.Forms.ComboBox cbKolDataEdycji;
        private System.Windows.Forms.Label labData;
        private System.Windows.Forms.GroupBox gpKolumny;
        private System.Windows.Forms.GroupBox gpInformacje;
    }
}