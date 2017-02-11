using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Odcinanie_Danych_Praca_Inz
{
    public partial class MenuGlowne : Form
    {
        private string cAutor = "Nazywam się Damian Likszo i mam 22 lata. Jestem studentem 4 roku inżynierii systemów informatycznych na Uniwersytecie Warmińsko-Mazurskim w Olsztynie.  Od dwóch lat pracuję jako programista na stanowisku projektant systemów informatycznych dla firmy Cairosoft. Na co dzień do czynienia mam z językiem xHarbour oraz bazami danych typu data base file. Głównie zajmujemy się utrzymaniem oraz tworzeniem programu magazynowo handlowego pod nazwą Falcon 5. Wykorzystywany jest on w około 380 różnych firmach takich jak: Auto Land, Auto-Partner, Fischer Automotive czy Inter Land.";
        private string cProgram = "Aplikacja umożliwia odcinanie niepotrzebnych rekordów z bazy danych dla systemu produkcji odzieży. Program opiera się o środowisko bazodanowe typu PostgreSQL. Wpisy w bazie danych bedą usuwane według pewnych kryteriów ustawianych przez użytkownika takich jak daty ostatniej edycji rekordu lub daty zakończenia dokumentu.";

        public MenuGlowne()
        {
            InitializeComponent();
            this.txtNotka.Text = this.cProgram;
            this.txtNotka.Select(0, 0);
        }

        private void btnWyjscie_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void btnOdcinanie_Click(object sender, EventArgs e)
        {
            Ustawienia oUstawienia = new Ustawienia();

            new UOgolne(oUstawienia).Show();
        }

        private void btnOprogramie_Click(object sender, EventArgs e)
        {
            this.labTitle.Text = "O programie";
            this.txtNotka.Text = this.cProgram;
        }

        private void btnOautorze_Click(object sender, EventArgs e)
        {
            this.labTitle.Text = "O autorze";
            this.txtNotka.Text = this.cAutor;
        }
    }
}
