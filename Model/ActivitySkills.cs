namespace Activity_Club.Model
{
    public class ActivitySkills
    {
        private int activityId;
        private int skillId;

        public ActivitySkills(int activityId, int skillId)
        {
            this.activityId = activityId;
            this.skillId = skillId;
        }

        public int ActivityId
        {
            get { return activityId; }
            set { activityId = value; }
        }

        public int SkillId
        {
            get { return skillId; }
            set { skillId = value; }
        }
    }
}
