namespace Activity_Club.Model
{
    public class User
    {
        private string username;
        private string password;

        public string Username { get; set; }
        public string Password { get; set; }

        public User(string username, string password)
        {
            Username = username;
            Password = password;
        }
    }
}
