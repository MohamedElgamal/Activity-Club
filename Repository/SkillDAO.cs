using Activity_Club.Model;
using MySqlConnector;
using System.Data;
using System.Diagnostics;

namespace Activity_Club.Repository
{
    public class SkillDAO
    {
        private readonly string DB_URL = "server=localhost;user=root;password=123456789;database=club";
        private MySqlConnection CreateConnection()
        {
            try
            {
                MySqlConnection connection = new MySqlConnection(DB_URL);
                connection.Open();
                return connection;
            }
            catch (Exception e)
            {
                Debug.WriteLine("Can't create connection: " + e.StackTrace);
                return null;
            }
        }

        public List<Skill> GetSkills()
        {
            List<Skill> skills = new List<Skill>();
            string storedProcedure = "get_skills";
            try
            {
                MySqlConnection connection = CreateConnection();
                MySqlCommand command = new MySqlCommand(storedProcedure, connection);
                command.CommandType = CommandType.StoredProcedure;
                MySqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    Skill tempSkill = new Skill(reader.GetInt32(0), reader.GetString(1));
                    skills.Add(tempSkill);
                }
                reader.Close();
                connection.Close();
                return skills;
            }
            catch (Exception e)
            {
                Debug.WriteLine("Can't retrieve skills: " + e.StackTrace);
                return null;
            }
        }

        public bool InsertSkill(Skill skill)
        {
            string storedProcedure = "insert_skill";
            try
            {
                MySqlConnection connection = CreateConnection();
                MySqlCommand command = new MySqlCommand(storedProcedure, connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("skillName", skill.SkillName);
                command.ExecuteNonQuery();
                connection.Close();
                return true;
            }
            catch (Exception e)
            {
                Debug.WriteLine("Can't insert data into skill table: " + e.StackTrace);
                return false;
            }
        }
    }
}
