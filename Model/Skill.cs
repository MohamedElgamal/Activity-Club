namespace Activity_Club.Model
{
    public class Skill
    {
        private int skillId;
        private string skillName;

        public int SkillId { get; set; }
        public string SkillName { get; set; }

        public Skill(int skillId)
        {
            SkillId = skillId;
        }

        public Skill(string skillName)
        {
            SkillName = skillName;
        }

        public Skill(int skillId, string skillName) : this(skillId)
        {
            SkillName = skillName;
        }

        public bool IsSkillContained(List<Skill> skills)
        {
            foreach (Skill skill in skills)
            {
                if (SkillId == skill.SkillId)
                {
                    return true;
                }
            }
            return false;
        }
    }
}
