using Activity_Club.Model;
using MySqlConnector;
using System.Data;
using System.Diagnostics;

namespace Activity_Club.Repository
{
    public class ActivitySkillsDAO
    {
        private readonly string DB_URL = "server=127.0.0.1;port=3306;database=club;user=root;password=123456789";
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
                Debug.WriteLine("can't create connection  : " + e.Message);
                return null;
            }
        }

        public bool InsertActivitySkills(List<ActivitySkills> activitySkills)
        {
            string storedProcedure = "insert_activity_skills";
            try
            {
                using (MySqlConnection connection = CreateConnection())
                using (MySqlCommand command = new MySqlCommand(storedProcedure, connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    foreach (ActivitySkills activitySkill in activitySkills)
                    {
                        command.Parameters.Clear();
                        command.Parameters.AddWithValue("activityId" , activitySkill.ActivityId);
                        command.Parameters.AddWithValue("skillId" , activitySkill.SkillId);
                        command.ExecuteNonQuery();
                    }
                }
                return true;
            }
            catch (Exception e)
            {
                Console.WriteLine("Error while inserting activity skills: " + e.Message);
                return false;
            }
        }

        public List<Skill> GetActivitySkills(int activityId)
        {
            string storedProcedure = "get_activity_skill";
            List<Skill> skills = new List<Skill>();
            try
            {
                using (MySqlConnection connection = CreateConnection())
                using (MySqlCommand command = new MySqlCommand(storedProcedure, connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("activityId", activityId);
                    using (MySqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            skills.Add(new Skill(reader.GetInt32(2), reader.GetString(1)));
                        }
                    }
                }
            }
            catch (Exception e)
            {
                Debug.WriteLine("Error while getting skills required by activity: " + e.StackTrace);
            }
            return skills;
        }

        public bool UpdateActivitySkills(List<ActivitySkills> activitySkills, int activityId)
        {
            string deleteStoredProcedure = "delete_activity_skills";
            string insertStoredProcedure = "insert_activity_skills";
            try
            {
                MySqlConnection connection = CreateConnection();
                MySqlCommand command = new MySqlCommand(deleteStoredProcedure, connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("activityId", activityId);
                command.ExecuteNonQuery();  
                command = new MySqlCommand(insertStoredProcedure, connection);
                command.CommandType=CommandType.StoredProcedure;
                foreach (var activity in activitySkills) {
                    Debug.WriteLine("******activity  : " + activity.SkillId);
                    command.Parameters.Clear();
                    command.Parameters.AddWithValue("activityId", activity.ActivityId);
                    command.Parameters.AddWithValue("skillId", activity.SkillId); ;
                    command.ExecuteNonQuery();
                }
                return true;
            }
            catch (Exception e)
            {
                Debug.WriteLine("Error while updating activity skills: " + e.StackTrace);
                return false;
            }
        }


    }
}
