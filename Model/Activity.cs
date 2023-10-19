namespace Activity_Club.Model
{
    public class Activity
    {
        private int activityId;
        private string activityName;
        private string activityDescription;
        private int activityStartAge;
        private int activityEndAge;
        private List<Skill> skills;

        public Activity() { }

        public Activity(string activityName, string activityDescription, int activityStartAge, int activityEndAge)
        {
            this.activityName = activityName;
            this.activityDescription = activityDescription;
            this.activityStartAge = activityStartAge;
            this.activityEndAge = activityEndAge;
        }

        public Activity(int activityId, string activityName, string activityDescription, int activityStartAge, int activityEndAge)
        {
            this.activityId = activityId;
            this.activityName = activityName;
            this.activityDescription = activityDescription;
            this.activityStartAge = activityStartAge;
            this.activityEndAge = activityEndAge;
        }

        public Activity(string activityName, string activityDescription, int activityStartAge, int activityEndAge, List<Skill> skills)
        {
            this.activityName = activityName;
            this.activityDescription = activityDescription;
            this.activityStartAge = activityStartAge;
            this.activityEndAge = activityEndAge;
            this.skills = skills;
        }

        public Activity(int activityId, string activityName, string activityDescription, int activityStartAge, int activityEndAge, List<Skill> skills)
        {
            this.activityId = activityId;
            this.activityName = activityName;
            this.activityDescription = activityDescription;
            this.activityStartAge = activityStartAge;
            this.activityEndAge = activityEndAge;
            this.skills = skills;
        }

        public List<Skill> Skills
        {
            get { return skills; }
            set { skills = value; }
        }

        public int ActivityId
        {
            get { return activityId; }
            set { activityId = value; }
        }

        public string ActivityName
        {
            get { return activityName; }
            set { activityName = value; }
        }

        public string ActivityDescription
        {
            get { return activityDescription; }
            set { activityDescription = value; }
        }

        public int ActivityStartAge
        {
            get { return activityStartAge; }
            set { activityStartAge = value; }
        }

        public int ActivityEndAge
        {
            get { return activityEndAge; }
            set { activityEndAge = value; }
        }
    }
}
