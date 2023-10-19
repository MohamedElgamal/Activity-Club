namespace Activity_Club.Model
{
    public class Enroll
    {
        private int activityId;
        private int memberId;
        private string activityName;
        private string memberName;

        public Enroll(string activityName, string memberName)
        {
            this.activityName = activityName;
            this.memberName = memberName;
        }

        public Enroll(int activityId, int memberId)
        {
            this.activityId = activityId;
            this.memberId = memberId;
        }

        public int ActivityId
        {
            get { return activityId; }
            set { activityId = value; }
        }

        public int MemberId
        {
            get { return memberId; }
            set { memberId = value; }
        }

        public string ActivityName
        {
            get { return activityName; }
            set { activityName = value; }
        }

        public string MemberName
        {
            get { return memberName; }
            set { memberName = value; }
        }
    }
}
