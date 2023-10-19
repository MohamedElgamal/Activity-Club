using Activity_Club.Model;
using Activity_Club.Repository;
using Activity_Club.Utili;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using System.Diagnostics;

namespace Activity_Club.Pages
{
    public class ActivityModel : PageModel
    {
        private readonly ActivityDAO activityDAO = new ActivityDAO();
        private readonly ActivitySkillsDAO activitySkillsDAO = new ActivitySkillsDAO();
        private readonly SkillDAO skillDAO = new SkillDAO();
        public List<Model.Activity> Activities { get; set; }
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
   


        public IActionResult OnGet()
        {
            if (!HelperUtility.IsAuthorized(HttpContext))
            {
                return RedirectToPage("Login");
            }
            Activities = activityDAO.GetActivities();
            Skills = skillDAO.GetSkills();
            BindSkillsToActivity();
            return Page();
        }

        public void BindSkillsToActivity()
        {
            foreach (var activity in Activities) {
                activity.Skills = activitySkillsDAO.GetActivitySkills(activity.ActivityId);
            }
        }

        public IActionResult OnPostActivityAdd()
        {
            activityDAO.InsertActivity(new Model.Activity(ActivityName , ActivityDescription , ActivityStartAge , ActivityEndAge));
            int activityId = activityDAO.GetActivityId(ActivityName);
            this.insertActivitySkills(activityId, SelectedSkills);
            OnGet();
            return Page();
        }
        public IActionResult OnPostActivityRemove([FromForm] String activityName)
        {
            Debug.WriteLine("Enter OnPostActivityRemove");
            activityDAO.DeleteActivity(activityName);
            OnGet();
            return Page();
        }
        public IActionResult OnPostActivityUpdate([FromForm] int activityid)
        {

            Debug.WriteLine("OnPostActivityUpdate Called");
            return RedirectToPage("UpdateActivity", new { activityid });
        }

        public void insertActivitySkills(int activityId , List<int>  skills)
        {
            List<ActivitySkills> activitySkills = new List<ActivitySkills>();
            foreach(var skill in skills)
            {
                activitySkills.Add(new ActivitySkills(activityId, skill));
            }
            activitySkillsDAO.InsertActivitySkills(activitySkills);
        }

        private  Configuration config;


        public void configuration()
        {
            var configFilePath = Path.Combine(Directory.GetCurrentDirectory(), "App Data", "Data.xml");
            config = new Configuration(configFilePath);
        }
    }
}
