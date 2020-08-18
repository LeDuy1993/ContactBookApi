using System;
using System.Collections.Generic;
using System.Text;

namespace ContactBook.Domain.Responses.Account
{
   public class LoginResult
    {
        public string UserId { get; set; }
        public string Message { get; set; }
        public int CheckId { get; set; }
        public bool Role { get; set; }
        public bool Success { get; set; }
    }
}
