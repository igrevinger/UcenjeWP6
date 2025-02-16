using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ucenje.E17KlasaObjekt.zavrsnirad
{
    public class Posao : Entitet
    {
        public string Naziv { get; set; }
        public int Vrsta { get; set; }
        public VrstaPosla VrstaPosla { get; set; }
    }
}
