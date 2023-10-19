using Activity_Club.Model;
using MySqlConnector;
using System.Data;
using System.Diagnostics;

namespace Activity_Club.Repository
{
    public class MemberSkillsDAO
    {
        private readonly string DB_URL = "server=127.0.0.1;port=3306;database=club;user=root;password=123456789";

        public MemberSkillsDAO()
        {
            Console.WriteLine("Database Constructor has been called");
        }

        private MySqlConnection CreateConnection()
        {
            try
            {
                MySqlConnection connection = new MySqlConnection(DB_URL);
                connection.Open();
                Debug.WriteLine("Connection Established");
                return connection;
            }
            catch (Exception e)
            {
                Debug.WriteLine("Can't create connection: " + e.Message);
                return null;
            }
        }

        public bool InsertMemberSkills(List<MemberSkills> memberSkills)
        {
            string storedProcedure = "insert_member_skills";
            try
            {
                MySqlConnection connection = CreateConnection();
                MySqlCommand command = new MySqlCommand(storedProcedure, connection);
                command.CommandType = CommandType.StoredProcedure;
                foreach (MemberSkills memberSkill in memberSkills)
                {
                    command.Parameters.Clear();
                    command.Parameters.AddWithValue("memberId", memberSkill.MemberId);
                    command.Parameters.AddWithValue("skillId", memberSkill.SkillId);
                    command.ExecuteNonQuery();
                }
                connection.Close();
                return true;
            }
            catch (Exception e)
            {
                Debug.WriteLine("Error happened: " + e.StackTrace);
                return false;
            }
        }

        public List<Skill> GetMemberSkills(int memberId)
        {
            string storedProcedure = "get_member_skills";
            List<Skill> skills = new List<Skill>();
            try
            {
                MySqlConnection connection = CreateConnection();
                MySqlCommand command = new MySqlCommand(storedProcedure, connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("memberId", memberId);
                MySqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    skills.Add(new Skill(reader.GetInt32(2) , reader.GetString(1) ));
                }
                connection.Close();
            }
            catch (Exception e)
            {
                Debug.WriteLine("Can't get skills required by members: " + e.StackTrace);
            }
            return skills;

        }

        public bool UpdateMemberSkills(List<MemberSkills> MemberSkills, int memberId)
        {
            bool evaluationResult = true;
            string insertStoredProcedure = "insert_member_skills";
            string deleteStoredProcedure = "delete_member_skills";
            try
            {
                using (MySqlConnection connection = CreateConnection())
                {
                    using (MySqlCommand command = new MySqlCommand(deleteStoredProcedure, connection))
                    {
                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("memberId", memberId);
                        command.ExecuteNonQuery();
                    }

                    using (MySqlCommand command = new MySqlCommand(insertStoredProcedure, connection))
                    {
                        command.CommandType = CommandType.StoredProcedure;
                        foreach (var member in MemberSkills)
                        {
                            command.Parameters.Clear();
                            command.Parameters.AddWithValue("memberId", member.MemberId);
                            command.Parameters.AddWithValue("skillId", member.SkillId);
                            command.ExecuteNonQuery();
                        }
                    }
                }
            }
            catch (Exception e)
            {
                Debug.WriteLine("Error occurred while updating memberSkills: " + e.StackTrace);
                evaluationResult = false;
            }
            return evaluationResult;
        }
    }
}
