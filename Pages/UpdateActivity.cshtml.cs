using Activity_Club.Model;
using Activity_Club.Repository;
using Activity_Club.Utili;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using System.Numerics;

namespace Activity_Club.Pages
{
    public class UpdateActivityModel : PageModel
    {
        private ActivityDAO activityDAO = new ActivityDAO();
        private SkillDAO skillDAO = new SkillDAO(); 
        private ActivitySkillsDAO activitySkillsDAO = new ActivitySkillsDAO();
        private int activityId;
        public Model.Activity Activity{ get; set; }
        public List<Skill> Skill { get; set; }
        public List<Skill> ActivitySkills { get; set; }

        public List<Skill> Skills { get; set; }
        [BindProperty(Name = "activity_name")]
        public string ActivityName { get; set; }

        [BindProperty(Name = "activity_description")]
        public string ActivityDescription { get; set; }

        [BindProperty(Name = "activity_start_age")]
        public int ActivityStartAge { get; set; }

        [BindProperty(Name = "activity_end_age")]
        public int ActivityEndAge { get; set; }
        [BindProperty(Name = "activity-skills")]
        public List<int> SelectedSkills { get; set; }

        public IActionResult OnGet(int activityId)
        {
            if (!HelperUtility.IsAuthorized(HttpContext))
            {
                return RedirectToPage("Login");
            }
            this.activityId = activityId;
            Activity = activityDAO.GetActivityById(activityId);
            Skill = skillDAO.GetSkills();
            ActivitySkills = activitySkillsDAO.GetActivitySkills(activityId);
            return Page();
        }

        public IActionResult OnPost(int activityId )
        {
            var queryPara = Request.Query["activityId"];
            activityDAO.UpdateActivity(new Activity(activityId , ActivityName, ActivityDescription , ActivityStartAge , ActivityEndAge));
            insertActivitySkills(activityId , SelectedSkills);
            OnGet(activityId);
            return RedirectToPage("Activity");
        }

        public void insertActivitySkills(int activityId, List<int> skills)
        {
            List<ActivitySkills> activitySkills = new List<ActivitySkills>();
            foreach (var skill in skills)
            {
                activitySkills.Add(new ActivitySkills(activityId, skill));
            }
            activitySkillsDAO.UpdateActivitySkills(activitySkills , activityId);
        }
    }
}
