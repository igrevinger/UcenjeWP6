using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ucenje
{
    internal class E09DoWhilePetlja
    {

        public static void Izvedi()
        {
            //Console.WriteLine("E09");

            // provjera uvjeta je na kraju petlje i obavezno je jednom izvodi

            do
            {
                Console.WriteLine("Osijek");
            } while (false);

            int i = 1, sum = 0;
            do
            {
                sum += i
            } while (++i <= 100);

            Console.WriteLine(sum);

        }

    }
}
