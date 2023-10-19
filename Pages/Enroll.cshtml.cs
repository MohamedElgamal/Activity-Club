using Activity_Club.Model;
using Activity_Club.Repository;
using Activity_Club.Utili;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using MySqlConnector;
using System.Diagnostics;

namespace Activity_Club.Pages
{
    public class EnrollModel : PageModel
    {
        private readonly ActivityDAO activityDAO = new ActivityDAO();
        private readonly MemberDAO memberDAO = new MemberDAO();
        private readonly EnrollDAO enrollDAO = new EnrollDAO();

        public List<Enroll> Enrolls { get; set; }
        public List<Member> Members { get; set; }
        public List<Model.Activity> Activities { get; set; }
        public String ErrorMsg { get; set; }   
        public IActionResult OnGet()
        {
            if (!HelperUtility.IsAuthorized(HttpContext))
            {
                return RedirectToPage("Login");
            }
            //get all members to be displayed to user 
            Members = memberDAO.GetMembers();
            //get all activities to be dispayed beside each member to enroll for 
            Activities = activityDAO.GetActivities();
            //get all enrolled activities
            Enrolls = enrollDAO.GetEnrolledMembers(Members);
            return Page();
        }
		public IActionResult OnPost([FromForm] String selectActivity  , [FromForm] String memberName)
        {
            Enroll enroll = getEnrollObj(selectActivity, memberName);   
            try
            {
				enrollDAO.MemberEnrollActivity(enroll);

			}catch(MySqlException ex)
            {
                ErrorMsg = ex.Message;
            }

			OnGet();
            return Page();
        }

        public IActionResult OnPostDisjoinActivity([FromForm] String enrollActivityName , [FromForm] String enrollMemberName) {
			Enroll enroll = getEnrollObj(enrollActivityName, enrollMemberName);
			enrollDAO.MemberDisjoinActivity(enroll);
            OnGet(); 
            return Page();
        }

        public Enroll getEnrollObj(String activityName , String memberName)
        {
			int activityId = activityDAO.GetActivityId(activityName);
			int memberId = memberDAO.GetMemberId(memberName);
            return (new Enroll(activityId, memberId));
		}
    }
}
