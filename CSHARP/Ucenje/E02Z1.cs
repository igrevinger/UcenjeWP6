namespace Ucenje
{

    // Napišite program koji unosi ime i broj godina osobe

    // Program ispisuje: Osoba XXXXXX ima YY godina.

    internal class E02Z1
    {
        // Ova metoda je uvijek potrebna (za sada ju "kucamo" ručno)
        public static void Izvedi()
        {

            Console.Write("Unesi ime: ");
            string ime = Console.ReadLine();

            Console.WriteLine("Unesi broj godina (cijeli broj): ");
            int godine = int.Parse(Console.ReadLine());

            Console.WriteLine("Osoba {0} ima {1} godina.", ime, godine);
           

        }


    }
}
