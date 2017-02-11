namespace Odcinanie_Danych_Praca_Inz
{
    partial class MenuGlowne
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(MenuGlowne));
            this.btnWyjscie = new System.Windows.Forms.Button();
            this.btnOautorze = new System.Windows.Forms.Button();
            this.btnOprogramie = new System.Windows.Forms.Button();
            this.btnOdcinanie = new System.Windows.Forms.Button();
            this.txtNotka = new System.Windows.Forms.TextBox();
            this.labTytul = new System.Windows.Forms.Label();
            this.labAutor = new System.Windows.Forms.Label();
            this.gpProgram = new System.Windows.Forms.GroupBox();
            this.labWersja = new System.Windows.Forms.Label();
            this.labTitle = new System.Windows.Forms.Label();
            this.gpProgram.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnWyjscie
            // 
            resources.ApplyResources(this.btnWyjscie, "btnWyjscie");
            this.btnWyjscie.Name = "btnWyjscie";
            this.btnWyjscie.UseVisualStyleBackColor = true;
            this.btnWyjscie.Click += new System.EventHandler(this.btnWyjscie_Click);
            // 
            // btnOautorze
            // 
            resources.ApplyResources(this.btnOautorze, "btnOautorze");
            this.btnOautorze.Name = "btnOautorze";
            this.btnOautorze.UseVisualStyleBackColor = true;
            this.btnOautorze.Click += new System.EventHandler(this.btnOautorze_Click);
            // 
            // btnOprogramie
            // 
            resources.ApplyResources(this.btnOprogramie, "btnOprogramie");
            this.btnOprogramie.Name = "btnOprogramie";
            this.btnOprogramie.UseVisualStyleBackColor = true;
            this.btnOprogramie.Click += new System.EventHandler(this.btnOprogramie_Click);
            // 
            // btnOdcinanie
            // 
            resources.ApplyResources(this.btnOdcinanie, "btnOdcinanie");
            this.btnOdcinanie.Name = "btnOdcinanie";
            this.btnOdcinanie.UseVisualStyleBackColor = true;
            this.btnOdcinanie.Click += new System.EventHandler(this.btnOdcinanie_Click);
            // 
            // txtNotka
            // 
            this.txtNotka.CausesValidation = false;
            resources.ApplyResources(this.txtNotka, "txtNotka");
            this.txtNotka.Name = "txtNotka";
            this.txtNotka.ReadOnly = true;
            this.txtNotka.TabStop = false;
            // 
            // labTytul
            // 
            resources.ApplyResources(this.labTytul, "labTytul");
            this.labTytul.Name = "labTytul";
            // 
            // labAutor
            // 
            resources.ApplyResources(this.labAutor, "labAutor");
            this.labAutor.Name = "labAutor";
            // 
            // gpProgram
            // 
            this.gpProgram.Controls.Add(this.labWersja);
            this.gpProgram.Controls.Add(this.labTytul);
            this.gpProgram.Controls.Add(this.labAutor);
            resources.ApplyResources(this.gpProgram, "gpProgram");
            this.gpProgram.Name = "gpProgram";
            this.gpProgram.TabStop = false;
            // 
            // labWersja
            // 
            resources.ApplyResources(this.labWersja, "labWersja");
            this.labWersja.Name = "labWersja";
            // 
            // labTitle
            // 
            resources.ApplyResources(this.labTitle, "labTitle");
            this.labTitle.Name = "labTitle";
            // 
            // MenuGlowne
            // 
            resources.ApplyResources(this, "$this");
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.btnWyjscie);
            this.Controls.Add(this.labTitle);
            this.Controls.Add(this.btnOautorze);
            this.Controls.Add(this.btnOprogramie);
            this.Controls.Add(this.btnOdcinanie);
            this.Controls.Add(this.txtNotka);
            this.Controls.Add(this.gpProgram);
            this.MaximizeBox = false;
            this.Name = "MenuGlowne";
            this.gpProgram.ResumeLayout(false);
            this.gpProgram.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnWyjscie;
        private System.Windows.Forms.Button btnOautorze;
        private System.Windows.Forms.Button btnOprogramie;
        private System.Windows.Forms.Button btnOdcinanie;
        private System.Windows.Forms.TextBox txtNotka;
        private System.Windows.Forms.Label labTytul;
        private System.Windows.Forms.Label labAutor;
        private System.Windows.Forms.GroupBox gpProgram;
        private System.Windows.Forms.Label labWersja;
        private System.Windows.Forms.Label labTitle;
    }
}