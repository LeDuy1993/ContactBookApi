using Microsoft.AspNetCore.Identity;

namespace ContactBook.Domain
{
    public class ApplicationUser : IdentityUser
    {
        public string Avatar { get; set; }
    }
}
