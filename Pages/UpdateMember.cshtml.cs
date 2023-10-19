using Activity_Club.Model;
using Activity_Club.Repository;
using Activity_Club.Utili;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace Activity_Club.Pages
{
    public class UpdateMemberModel : PageModel
    {

		private readonly MemberDAO memberDAO = new MemberDAO();
		private readonly MemberSkillsDAO memberSkillsDAO = new MemberSkillsDAO();
		private readonly SkillDAO skillDAO = new SkillDAO();
		public Member Member { get; set; }
		public List<Skill> MemberSkills { get; set; }
		public List<Skill> Skill { get; set; }

		[BindProperty(Name = "member_id")]
		public int MemberId { get; set; }

		[BindProperty(Name = "member_name")]
		public string MemberName { get; set; }

		[BindProperty(Name = "member_ssn")]
		public int MemberSsn { get; set; }

		[BindProperty(Name = "member_phone")]
		public string MemberPhoneNumber { get; set; }

		[BindProperty(Name = "member_email")]
		public string MemberEmail { get; set; }

		[BindProperty(Name = "member_address")]
		public string MemberAddress { get; set; }

		[BindProperty(Name = "member_date")]
		public DateTime MemberDate { get; set; }

		[BindProperty(Name = "member_photo")]
		public IFormFile MemberPhoto { get; set; }
		[BindProperty(Name = "member_skills")]
		public List<int> SelectedSkill { get; set; }


		public IActionResult OnGet(int memberId)
        {
            if (!HelperUtility.IsAuthorized(HttpContext))
            {
                return RedirectToPage("Login");
            }
            Member = memberDAO.GetMember(memberId);
			Skill = skillDAO.GetSkills();
			MemberSkills = memberSkillsDAO.GetMemberSkills(memberId);
			return Page();
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

		public IActionResult OnPost(int memberId)
		{
			/*Member member = new Member(memberId, MemberName
				, MemberSsn
				, MemberPhoneNumber
				, MemberEmail
				, MemberAddress
				, MemberDate,
				ConvertIFormFileToMemoryStream(MemberPhoto));

			memberDAO.DeleteMember(member.MemberId);
			memberDAO.InsertMember(member);*/
			memberDAO.UpdateMember(new Member(memberId, MemberName
				, MemberSsn
				, MemberPhoneNumber
				, MemberEmail
				, MemberAddress
				, MemberDate,
				ConvertIFormFileToMemoryStream(MemberPhoto)));
			//section is responsible of making member skills object to be send to database 
			List<MemberSkills> memberSkills= new List<MemberSkills>();
            foreach (var skill in SelectedSkill)
            {
                memberSkills.Add(new MemberSkills(memberId, skill));
            }
            memberSkillsDAO.UpdateMemberSkills(memberSkills, memberId);
			OnGet(memberId);
			return RedirectToPage("Members");
		}
	}
}
