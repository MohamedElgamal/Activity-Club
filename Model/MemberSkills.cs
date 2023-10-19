namespace Activity_Club.Model
{
    public class MemberSkills
    {
        private int memberId;
        private int skillId;

        public MemberSkills(int memberId)
        {
            this.memberId = memberId;
        }

        public MemberSkills(int memberId, int skillId)
        {
            this.memberId = memberId;
            this.skillId = skillId;
        }

        public int MemberId
        {
            get
            {
                return memberId;
            }
            set
            {
                memberId = value;
            }
        }

        public int SkillId
        {
            get
            {
                return skillId;
            }
            set
            {
                skillId = value;
            }
        }
    }
}
