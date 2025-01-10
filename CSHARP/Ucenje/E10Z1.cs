using System;
using System.Collections.Generic;
using System.Linq;
using System.Numerics;
using System.Text;
using System.Threading.Channels;
using System.Threading.Tasks;

namespace Ucenje
{

    // Za dani izraz bez razmaka provjeriti da li je palindrom

    internal class E10Z1
    {
        public static void Izvedi()
        {
            //Console.WriteLine("E10Z1");
            Console.WriteLine("Unesi izraz: ");
            string izraz=Console.ReadLine();
            Console.WriteLine(izraz);
            if (izraz.Length % 2 == 0)
            {
                //izraz ima paran broj znakova
                Console.WriteLine("parno");
                bool palindrom=true;
                for (int i = 0; i < izraz.Length / 2; i++)
                {
                    for (int j = izraz.Length - 1; i > izraz.Length / 2; j--)
                    {
                        if (izraz[i] != izraz[izraz.Length - 1 - i])
                        {
                            palindrom = false;
                            break;
                        }
                    }
 
                }
                Console.WriteLine(palindrom ? "DA" : "NE");
            }
            else
            {
                //izraz ima neparan broj znakova
                Console.WriteLine("neparno");
            }
        }
        //kisik
        //anavolimilovana
        //amenetuniminutenema
        //abba
    }



}
