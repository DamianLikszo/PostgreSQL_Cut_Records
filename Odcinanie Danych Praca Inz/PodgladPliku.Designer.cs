namespace Odcinanie_Danych_Praca_Inz
{
    partial class PodgladPliku
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
            this.rtxContent = new System.Windows.Forms.RichTextBox();
            this.SuspendLayout();
            // 
            // rtxContent
            // 
            this.rtxContent.Font = new System.Drawing.Font("Consolas", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.rtxContent.Location = new System.Drawing.Point(12, 12);
            this.rtxContent.MaximumSize = new System.Drawing.Size(892, 639);
            this.rtxContent.MinimumSize = new System.Drawing.Size(892, 639);
            this.rtxContent.Name = "rtxContent";
            this.rtxContent.ReadOnly = true;
            this.rtxContent.Size = new System.Drawing.Size(892, 639);
            this.rtxContent.TabIndex = 0;
            this.rtxContent.Text = "";
            // 
            // PodgladPliku
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(916, 663);
            this.Controls.Add(this.rtxContent);
            this.MaximumSize = new System.Drawing.Size(932, 702);
            this.MinimizeBox = false;
            this.MinimumSize = new System.Drawing.Size(932, 702);
            this.Name = "PodgladPliku";
            this.Text = "PodgladPliku";
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.RichTextBox rtxContent;
    }
}