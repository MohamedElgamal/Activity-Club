using Activity_Club.Model;
using MySqlConnector;
using System.Data;

namespace Activity_Club.Repository
{
    public class EnrollDAO
    {
        private readonly string DB_URL = "Server=127.0.0.1;Port=3306;Database=club;Uid=root;Pwd=123456789;";

        private MySqlConnection CreateConnection()
        {
            MySqlConnection connection = new MySqlConnection(DB_URL);
            try
            {
                connection.Open();
                Console.WriteLine("Connection Established");
                return connection;
            }
            catch (Exception e)
            {
                Console.WriteLine("can't create connection  : " + e.Message);
                connection.Close();
                return null;
            }
        }

        public bool MemberEnrollActivity(Enroll enroll) 
        {
            string storedProcedure = "member_enroll_activity";
            try
            {
                MySqlConnection connection = CreateConnection();
                MySqlCommand command = new MySqlCommand(storedProcedure, connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("memberId", enroll.MemberId);
                command.Parameters.AddWithValue("activityId", enroll.ActivityId);
                command.ExecuteNonQuery();
                return true;
            }
            catch (MySqlException e)
            {
                throw e;
            }
           
        }

        public List<Enroll> GetEnrolledMembers(List<Member> members)
        {
            List<Enroll> enrolls = new List<Enroll>();
            string storedProcedure = "get_enroll_members";
            try
            {
                MySqlConnection connection = CreateConnection();
                MySqlCommand command = new MySqlCommand(storedProcedure, connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("memberId", MySqlDbType.Int32);
                foreach (Member member in members)
                {
                    command.Parameters["memberId"].Value = member.MemberId;
                    MySqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        enrolls.Add(new Enroll(reader.GetString(1), reader.GetString(0)));
                    }
                    reader.Close();
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e.StackTrace);
            }
            
            return enrolls;
        }

        public bool MemberDisjoinActivity(Enroll enroll)
        {
            string storedProcedure = "disjoin_memeber_activity";
            try
            {
                MySqlConnection connection = CreateConnection();
                MySqlCommand command = new MySqlCommand(storedProcedure, connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("activityId", enroll.ActivityId);
                command.Parameters.AddWithValue("memberId", enroll.MemberId);
                Console.WriteLine("activity id : " + enroll.ActivityId + " member id : " + enroll.MemberId);
                command.ExecuteNonQuery();
                return true;
            }
            catch (Exception e)
            {
                Console.WriteLine("can't find the activity  : " + e);
            }
          
            return false;
        }
    }
}
