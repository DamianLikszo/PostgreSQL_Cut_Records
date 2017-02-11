using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Odcinanie_Danych_Praca_Inz
{

    public class Ustawienia
    {
        // Połączenie Postgrsql
        public PostgreSQL pgSql;                // obiekt połączenia z bazą danych
        public bool isShort = true;             // czy ustawienia podstawowe

        // Ustawienia Ogólne
        public string pathEksport = "";                        // Ścieżka pliku eksportu
        public string pathLogi = "";                           // Ścieżka pliku dziennika zdarzeń
        public DateTime dataUsun = DateTime.Now.AddYears(-1);  // Data odcięcia danych [format: yyyy-MM-dd]
        public int partLimit = 1000;                           // Ilość rekordów przetwarzanych podczas jednej iteracji

        // Ustawienia Zleceń
        public string tabZlecen = "";           // Tabela zleceń
        public string kolZlecId = "";           // Kolumna identyfikatora
        public string kolZlecDataZak = "";      // Kolumna daty zakończenia dokumentu
        public string kolZlecPrac = "";         // Kolumna pracownika opekującym się zleceniem

        // Ustawienia Pozycji Zleceń
        public string tabPozycji = "";          // Tabela pozycji
        public string kolPozId = "";            // Kolumna identyfikatora pozycji
        public string kolPozZlecen = "";        // Kolumna zlecenia w pozycji
        public string kolPozTowar = "";         // Kolumna towaru w pozycji

        // Ustawienia Katalogu Towarów
        public string tabTowarow = "";          // Tabela katalogu towaru
        public string kolTowId = "";            // Kolumna identyfikatora towaru
        public string kolTowDataEdycji = "";    // Kolumna daty edycji

        // Ustawienia Kartotek Magazynu
        public string tabKartotek = "";         // Tabela kartoteki magazynu
        public string kolKartId = "";           // Kolumna identyfikatora kartoteki
        public string kolKartStan = "";         // Kolumna stanu magazynowego
        public string kolKartTowar = "";        // Kolumna przedstawiająca towar
        public string kolKartDataEdycji = "";   // Kolumna daty edycji stanu
        
        // Ustawienia Pracowników
        public string tabPracownikow = "";      // Tabela pracowników
        public string kolPracId = "";           // Kolumna identyfikatora pracownika
        public string kolPracDataZakonczenia = ""; // Kolumna daty zakończenia współpracy z pracownikiem

        public Ustawienia()
        {
            this.setDefault();
        }

        public void setDefault()
        {
            this.tabZlecen = "zlecenia";
            this.kolZlecId = "numer";              
            this.kolZlecDataZak = "data_zakonczenia"; 
            this.kolZlecPrac = "pracownik";                      

            this.tabPozycji = "pozycje";           
            this.kolPozId = "numer";               
            this.kolPozZlecen = "zlecenie";        
            this.kolPozTowar = "towar";            

            this.tabTowarow = "towary";            
            this.kolTowId = "numer";                       
            this.kolTowDataEdycji = "data_edycji";      

            this.tabKartotek = "stany";  
            this.kolKartId = "numer";    
            this.kolKartStan = "ilosc";  
            this.kolKartTowar = "towar"; 
            this.kolKartDataEdycji = "data_edycji"; 
        
            this.tabPracownikow = "pracownicy";
            this.kolPracId = "numer"; 
            this.kolPracDataZakonczenia = "data_zakonczenia"; 
        }

    }

}
