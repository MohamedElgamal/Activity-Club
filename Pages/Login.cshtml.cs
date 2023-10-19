using Activity_Club.Model;
using Activity_Club.Utili;

using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Newtonsoft.Json;
using System.Diagnostics;
using System.Security.Cryptography;
using System.Text;

namespace Authentication.Pages
{
    public class LoginModel : PageModel
    {

        public String Email { get; set; }
        public String Password { get; set; }

        public String NextPath { get; set; }

        public String ErrorMsg { get; set; }
        private Configuration config;

        public void OnGet()
        {
            
        }
        public IActionResult OnPost([FromForm] String username , [FromForm] String password)
        {
            bool isUserExists = this.searchInConfigFile(username , HelperUtility.hashingPassword(password));
            OnGet();
            if (isUserExists)
            {
                HttpContext.Session.SetString("logged-user", username);
                return RedirectToPage("Activity");
            }
            ErrorMsg = "Check username or password";

			return Page();
        }

        
        public bool searchInConfigFile(String username , String hashedPassword)
        {
            var configFilePath = Path.Combine(Directory.GetCurrentDirectory(), "App Data", "Data.xml");
            config = new Configuration(configFilePath);
            return config.IsUserExists(username, hashedPassword);
        }


    }
}

