using System;
using System.Collections.Generic;
using System.Text;

namespace ContactBook.Domain.Responses
{
    public class GetAllTypePoint
    {
        public int TypePointId { get; set; }
        public string TypeName { get; set; }
        public int Coefficient { get; set; }

    }
}
