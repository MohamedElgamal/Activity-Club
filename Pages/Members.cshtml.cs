using Activity_Club.Model;
using Activity_Club.Repository;
using Activity_Club.Utili;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using System.Diagnostics;

namespace Activity_Club.Pages
{
    public class MembersModel : PageModel
    {
        private readonly MemberDAO memberDAO = new MemberDAO();
        private readonly MemberSkillsDAO memberSkillsDAO = new MemberSkillsDAO();
        private readonly SkillDAO skillDAO = new SkillDAO();
        public List<Member>  Members{ get; set; }
        public List<Skill> Skills { get; set; }

        [BindProperty(Name = "member_name")]
        public string MemberName { get; set; }

        [BindProperty(Name = "member_ssn")]
        public int MemberSsn { get; set; }

        [BindProperty(Name = "member_phone")]
        public string MemberPhone { get; set; }

        [BindProperty(Name = "member_email")]
        public string MemberEmail { get; set; }

        [BindProperty(Name = "member_address")]
        public string MemberAddress { get; set; }

        [BindProperty(Name = "member_date")]
        public DateTime MemberDate { get; set; }

        [BindProperty(Name = "member_photo")]
        public IFormFile MemberPhoto { get; set; }

        [BindProperty(Name = "member-skills")]
        public List<int> SelectedSkillIds { get; set; }
        public IActionResult OnGet()
        {
            if (!HelperUtility.IsAuthorized(HttpContext))
            {
                return RedirectToPage("Login");
            }
            try
            {
                Members = memberDAO.GetMembers();
                this.getMemberSkills();
                Skills = skillDAO.GetSkills();
            }
            catch (Exception ex)
            {
                // Log the exception or handle it appropriately
                Debug.WriteLine("An error occurred while retrieving members: " + ex.StackTrace);
            }
            return Page();
        }
        
        public void getMemberSkills()
        {
            foreach(var member in Members)
            {
                member.Skills = memberSkillsDAO.GetMemberSkills(member.MemberId);
            }
        }

        public IActionResult OnPostRemoveMember([FromForm] int memberId)
        {
            memberDAO.DeleteMember(memberId);
            OnGet();
            return Page();
        }

        public IActionResult OnPostUpdateMember([FromForm] int memberid) {

			return RedirectToPage("UpdateMember", new {memberid});
        }

        public IActionResult OnPostMemberAdd()
        {
           
            memberDAO.InsertMember(new Member(MemberName
                , MemberSsn
                , MemberPhone
                , MemberEmail
                , MemberAddress
                , MemberDate,
                ConvertIFormFileToMemoryStream(MemberPhoto)));
            insertMemberSkills(memberDAO.GetMemberId(MemberName), SelectedSkillIds);
            OnGet();
            return Page();
        }

        public void insertMemberSkills(int memberId, List<int> skills)
        {
            List<MemberSkills> memberSkills= new List<MemberSkills>();
            foreach (var skill in skills)
            {
                memberSkills.Add(new MemberSkills(memberId, skill));
            }
            memberSkillsDAO.InsertMemberSkills(memberSkills);
        }
        public MemoryStream ConvertIFormFileToMemoryStream(IFormFile formFile)
        {
            if (formFile == null || formFile.Length == 0)
            {
                return null;
            }
            MemoryStream memoryStream = new MemoryStream();
            formFile.CopyTo(memoryStream);
            memoryStream.Seek(0, SeekOrigin.Begin);
            return memoryStream;
        }
    }
}
