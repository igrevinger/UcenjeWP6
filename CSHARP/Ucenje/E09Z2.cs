using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ucenje
{

    // Program unosi brojeve sve dok se ne unese broj -1
    // Program ispisuje zbroj svih unesenih brojeva

    internal class E09Z2
    {
        public static void Izvedi()
        {
            int sum = 0, broj;
            while (true) 
            { 
                Console.Write("Unesite broj: ");
                broj = int.Parse(Console.ReadLine());
                if (broj == -1)
                {
                    break;
                }
                sum = sum + broj;
            }
            Console.WriteLine(sum);
        }
    }
}
