using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ucenje.E17KlasaObjekt.zavrsnirad
{
    public class Rad : Entitet
    {
        public int Zaposlenik { get; set; }
        public Zaposlenik ZaposlenikObj { get; set; }
        public int Instrument { get; set; }
        public Instrument InstrumentObj { get; set; }
        public int Posao { get; set; }
        public Posao PosaoObj { get; set; }
        public DateTime? Datum { get; set; }
        public string Napomena { get; set; }
    }
}
