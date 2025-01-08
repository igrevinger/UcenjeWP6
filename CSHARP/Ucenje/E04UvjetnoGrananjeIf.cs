using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ucenje
{
    internal class E04UvjetnoGrananjeIf
    {

        public static void Izvedi()
        {
            //Console.WriteLine("E04");

            int i = 0; // simuliram da je korisnik s CR unio 0

            bool uvjet = i == 0;
            Console.WriteLine(uvjet);

            //if radi s bool tipom podataka       
            if (uvjet)
            {
                Console.WriteLine("Vrijednost varijable i je 0");
            }

            if (i == 0)
            {
                Console.WriteLine("Češća sintaksa za provjeru da je i 0");
            }

            //drugi dio if je else

            i = 17;
            if (i >= 18)
            {
                Console.WriteLine("Punoljetna osoba");
            }
            else
            {
                Console.WriteLine("Maloljetna osoba");
            }

            //ako nema {} onda se naredba odnosi samo na prvu sljedeću liniju
            if (i > 5)
                Console.WriteLine("OK");
            else
                Console.WriteLine("Greška");
            Console.WriteLine("Dio greške"); //ova linija nije dio else-a

            //operatori & i &&
            int j=2
            if(i==5 & j==2) //uvijek se provjeravaju oba uvjeta
            {
                Console.WriteLine("Dvostruki uvjet je zadovoljen");
            }

            if(i==5 && j==2) //u slučaju da prvi uvjet padne (FALSE) drugi se ne provjerava
            {  
                Console.WriteLine("Dvostruki uvjet je zadovoljen")
            }


            //operatori | (Alt Gr + W) desni alt
            if(i==0 | j==0) // provjerava i drugi uvjet iako je prvi True
            {
                Console.WriteLine("Prvi uvjet je zadovoljen");
            }

            if(i==0 || j==0) //ukoliko je prvi uvjet zadovoljen (True) drugi se ne gleda
            {  
                Console.WriteLine("Prvi uvjet je zadovoljen")
            }

            if(i>0)
            {
                if(j>0)
                {  
                    Console.WriteLine("Ugnježđivanje")
                }
            }


            i = 2;

            if (i == 0)
            { Console.WriteLine("Nula");
            } else if (i == 1) {
                Console.WriteLine("Jedan");
            }

            //else if se može ponavljati
            else
            {
                Console.WriteLine("Ostali brojevi");
            }



        }

    }
}