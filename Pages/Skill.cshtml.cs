using Activity_Club.Model;
using Activity_Club.Repository;
using Activity_Club.Utili;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace Activity_Club.Pages
{
    public class SkillModel : PageModel
    {
        private readonly SkillDAO skillDAO = new SkillDAO();
        
        public List<Skill> Skills { get; set; }
        
        public IActionResult OnGet()
        {
            if (!HelperUtility.IsAuthorized(HttpContext))
            {
                return RedirectToPage("Login");
            }
            Skills = skillDAO.GetSkills();
            return Page();
		}

        public IActionResult OnPost([FromForm] String skillName)
        {
            skillDAO.InsertSkill(new Skill(skillName));
            OnGet();
            return Page();
        }
    }
}
