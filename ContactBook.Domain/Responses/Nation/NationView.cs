using System;
using System.Collections.Generic;
using System.Text;

namespace ContactBook.Domain.Responses.Nation
{
   public class NationView
    {
        public int NationId { get; set; }
        public string NationName { get; set; }
        public int Students { get; set; }
    }
}
