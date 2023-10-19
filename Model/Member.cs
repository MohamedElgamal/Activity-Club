namespace Activity_Club.Model
{
    public class Member
    {
        public int MemberId { get; set; }
        public string MemberName { get; set; }
        public int MemberSsn { get; set; }
        public string MemberPhoneNumber { get; set; }
        public string MemberEmail { get; set; }
        public string MemberAddress { get; set; }
        public DateTime MemberDate { get; set; }
        public List<Skill> Skills { get; set; }
        public MemoryStream MemberPhotoStream { get; set; }
        public string MemberImageBase64 { get; set; }

        public Member() { }

        public Member(string memberName, int memberSsn, string memberPhoneNumber, string memberEmail, string memberAddress, DateTime memberDate)
        {
            MemberName = memberName;
            MemberSsn = memberSsn;
            MemberPhoneNumber = memberPhoneNumber;
            MemberEmail = memberEmail;
            MemberAddress = memberAddress;
            MemberDate = memberDate;
        }

        public Member(string memberName, int memberSsn, string memberPhoneNumber, string memberEmail, string memberAddress,
            DateTime memberDate, MemoryStream inputStream)
        {
            MemberName = memberName;
            MemberSsn = memberSsn;
            MemberPhoneNumber = memberPhoneNumber;
            MemberEmail = memberEmail;
            MemberAddress = memberAddress;
            MemberDate = memberDate;
            MemberPhotoStream = inputStream;
            MemberImageBase64 = ConvertInputStreamToBase64(inputStream);
        }

        public Member(int memberId, string memberName, int memberSsn, string memberPhoneNumber, string memberEmail,
            string memberAddress, DateTime memberDate, List<Skill> skills, MemoryStream memberPhotoStream)
        {
            MemberId = memberId;
            MemberName = memberName;
            MemberSsn = memberSsn;
            MemberPhoneNumber = memberPhoneNumber;
            MemberEmail = memberEmail;
            MemberAddress = memberAddress;
            MemberDate = memberDate;
            Skills = skills;
            MemberPhotoStream = memberPhotoStream;
            MemberImageBase64 = ConvertInputStreamToBase64(memberPhotoStream);
        }

        public Member(int memberId, string memberName, int memberSsn, string memberPhoneNumber, string memberEmail,
            string memberAddress, DateTime memberDate, MemoryStream memberPhotoStream)
        {
            MemberId = memberId;
            MemberName = memberName;
            MemberSsn = memberSsn;
            MemberPhoneNumber = memberPhoneNumber;
            MemberEmail = memberEmail;
            MemberAddress = memberAddress;
            MemberDate = memberDate;
            MemberPhotoStream = memberPhotoStream;
            MemberImageBase64 = ConvertInputStreamToBase64(memberPhotoStream);
        }

        public Member(int memberId, string memberName, int memberSsn, string memberPhoneNumber, string memberEmail,
            string memberAddress, DateTime memberDate)
        {
            MemberId = memberId;
            MemberName = memberName;
            MemberSsn = memberSsn;
            MemberPhoneNumber = memberPhoneNumber;
            MemberEmail = memberEmail;
            MemberAddress = memberAddress;
            MemberDate = memberDate;
        }

        public Member(int memberId, string memberName, int memberSsn, string memberPhoneNumber, string memberEmail,
            string memberAddress, DateTime memberDate, List<Skill> skills)
        {
            MemberId = memberId;
            MemberName = memberName;
            MemberSsn = memberSsn;
            MemberPhoneNumber = memberPhoneNumber;
            MemberEmail = memberEmail;
            MemberAddress = memberAddress;
            MemberDate = memberDate;
            Skills = skills;
        }

        public Member(string memberName, int memberSsn, string memberPhoneNumber, string memberEmail, string memberAddress,
            DateTime memberDate, List<Skill> skills)
        {
            MemberName = memberName;
            MemberSsn = memberSsn;
            MemberPhoneNumber = memberPhoneNumber;
            MemberEmail = memberEmail;
            MemberAddress = memberAddress;
            MemberDate = memberDate;
            Skills = skills;
        }

        public Member(int memberId, string memberName, int memberSsn, string memberPhoneNumber, string memberEmail,
            string memberAddress, DateTime memberDate, List<Skill> skills, MemoryStream memberPhotoStream,
            string memberImageBase64)
        {
            MemberId = memberId;
            MemberName = memberName;
            MemberSsn = memberSsn;
            MemberPhoneNumber = memberPhoneNumber;
            MemberEmail = memberEmail;
            MemberAddress = memberAddress;
            MemberDate = memberDate;
            Skills = skills;
            MemberPhotoStream = memberPhotoStream;
            MemberImageBase64 = memberImageBase64;
        }

        public static string ConvertInputStreamToBase64(MemoryStream inputStream)
        {
            byte[] buffer = inputStream.ToArray();
            return Convert.ToBase64String(buffer);
        }
    }
}
