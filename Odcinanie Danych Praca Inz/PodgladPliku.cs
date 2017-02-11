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
    public partial class PodgladPliku : Form
    {
        public PodgladPliku(string cPath, string cTitle)
        {
            InitializeComponent();

            this.Text = cTitle;

            if (File.Exists(cPath))
            {
                try
                {
                    this.rtxContent.Text = File.ReadAllText(cPath);
                }
                catch (Exception)
                {
                    MessageBox.Show("Nie można odworzyć pliku");
                    this.rtxContent.Text = "";
                    throw;
                }
            }
            else
            {
                this.rtxContent.Text = "Nie odnaleziono pliku.";
            }
        }
    }
}
