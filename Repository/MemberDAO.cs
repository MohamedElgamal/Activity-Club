using Activity_Club.Model;
using MySqlConnector;
using System.Data;
using System.Diagnostics;
using System.IO;

namespace Activity_Club.Repository
{
    public class MemberDAO
    {
        private readonly string DB_URL = "server=127.0.0.1;port=3306;database=club;user=root;password=123456789";

        private MySqlConnection CreateConnection()
        {
            try
            {
                MySqlConnection connection = new MySqlConnection(DB_URL);
                connection.Open();
                Console.WriteLine("Connection Established");
                return connection;
            }
            catch (Exception e)
            {
                Console.WriteLine("Can't create connection: " + e.Message);
                return null;
            }
        }

        public List<Member> GetMembers()
        {
            List<Member> members = new List<Member>();
            MemoryStream memoryStream = null;
            string storedProcedure = "get_members";
            try
            {
                MySqlConnection connection = CreateConnection();
                MySqlCommand command = new MySqlCommand(storedProcedure, connection);
                command.CommandType = CommandType.StoredProcedure;
                MySqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    if (!reader.IsDBNull(8)) // Replace 7 with the index of your blob column in the result set
                    {
                        // Get the blob data as a stream
                       
                        Stream blobStream = reader.GetStream(8); // Replace 7 with the index of your blob column in the result set

                        // Copy the blob stream to the MemoryStream
                        memoryStream = new MemoryStream();
                        blobStream.CopyTo(memoryStream);

                        // Reset the MemoryStream position to the beginning
                        memoryStream.Position = 0;
                    }
                    Member tempMember = new Member(
                        reader.GetInt32(0),
                        reader.GetString(1),
                        reader.GetInt32(2),
                        reader.GetString(3),
                        reader.GetString(4),
                        reader.GetString(5),
                        reader.GetDateTime(6),
                        memoryStream);
                    members.Add(tempMember);
                }
            }
            catch (Exception e)
            {
                Debug.WriteLine("Can't retrieve members: " + e.StackTrace);
            }
            return members;
        }
   


        public Member GetMember(int memberId)
        {
            Member member = new Member();
            string storedProcedure = "get_member";
            try
            {
                MySqlConnection connection = CreateConnection();
                MySqlCommand command = new MySqlCommand(storedProcedure, connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("memberId", memberId);
                MySqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    MemoryStream memoryStream = new MemoryStream();
                    if (!reader.IsDBNull(7)) // Replace 7 with the index of your blob column in the result set
                    {
                        // Get the blob data as a stream
                        Stream blobStream = reader.GetStream(7); // Replace 7 with the index of your blob column in the result set

                        // Copy the blob stream to the MemoryStream
                        memoryStream = new MemoryStream();
                        blobStream.CopyTo(memoryStream);

                        // Reset the MemoryStream position to the beginning
                        memoryStream.Position = 0;
                    }
                    member = new Member(
                        reader.GetInt32(0),
                        reader.GetString(1),
                        reader.GetInt32(2),
                        reader.GetString(3),
                        reader.GetString(4),
                        reader.GetString(5),
                        reader.GetDateTime(6),
                        memoryStream);
                }
            }
            catch (Exception e)
            {
                Console.WriteLine("Error while retrieving member: " + e.Message);
            }
            return member;
        }

        public bool InsertMember(Member member)
        {
            string storedProcedure = "insert_member";
            try
            {
                MySqlConnection connection = CreateConnection();
                MySqlCommand command = new MySqlCommand(storedProcedure, connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("member_name", member.MemberName);
                command.Parameters.AddWithValue("member_ssn", member.MemberSsn);
                command.Parameters.AddWithValue("member_phone", member.MemberPhoneNumber);
                command.Parameters.AddWithValue("member_email", member.MemberEmail);
                command.Parameters.AddWithValue("member_address", member.MemberAddress);
                command.Parameters.AddWithValue("member_date", member.MemberDate);
                command.Parameters.AddWithValue("member_image", member.MemberPhotoStream);
                command.ExecuteNonQuery();
                connection.Close();
                return true;
            }
            catch (Exception e)
            {
                Debug.WriteLine("Can't insert data: " + e.StackTrace);
            }
            return false;
        }

        public bool UpdateMember(Member member)
        {
            string storedProcedure = "update_member";
            try
            {
                MySqlConnection connection = CreateConnection();
                MySqlCommand command = new MySqlCommand(storedProcedure, connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("memberName", member.MemberName);
                command.Parameters.AddWithValue("memberSSn", member.MemberSsn);
                command.Parameters.AddWithValue("memberPhone", member.MemberPhoneNumber);
                command.Parameters.AddWithValue("memberEmail", member.MemberEmail);
                command.Parameters.AddWithValue("memberAddress", member.MemberAddress);
                command.Parameters.AddWithValue("memberDate", member.MemberDate);
                command.Parameters.AddWithValue("memberImage", member.MemberPhotoStream.ToArray());
                command.Parameters.AddWithValue("memberId", member.MemberId);
                command.ExecuteNonQuery();
                return true;
            }
            catch (Exception e)
            {
                Debug.WriteLine("Can't update data: " + e.Message);
            }
            return false;
        }

        public bool DeleteMember(int memberId)
        {
            string storedProcedure = "delete_member";
            try
            {
                MySqlConnection connection = CreateConnection();
                MySqlCommand command = new MySqlCommand(storedProcedure, connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("memberId", memberId);
                command.ExecuteNonQuery();
                return true;
            }
            catch (Exception e)
            {
                Debug.WriteLine("Can't complete deletion: " + e.StackTrace);
            }
            return false;
        }

        public int GetMemberId(string memberName)
        {
            string storedProcedure = "get_member_id";
            int memberId = -1;
            try
            {
                MySqlConnection connection = CreateConnection();
                MySqlCommand command = new MySqlCommand(storedProcedure, connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("memberName", memberName);
                MySqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    memberId = reader.GetInt32(0);
                }
                reader.Close();
                return memberId;
            }
            catch (Exception e)
            {
                Debug.WriteLine("Can't find the member: " + e.StackTrace);
            }
            return memberId;
        }
    }

}
