using Activity_Club.Utili;
using Microsoft.Extensions.Hosting.Internal;
using MySqlConnector;
using System.Collections.Specialized;
using System.Data;
using System.Diagnostics;

namespace Activity_Club.Repository
{
    public class ActivityDAO
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

        public bool InsertActivity(Model.Activity activity)
        {
            string storedProcedure = "insert_activity";
            try
            {
                MySqlConnection connection = CreateConnection();
                MySqlCommand command = new MySqlCommand(storedProcedure, connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("p_activity_name", activity.ActivityName);
                command.Parameters.AddWithValue("p_activity_start_age", activity.ActivityStartAge);
                command.Parameters.AddWithValue("p_activity_end_age", activity.ActivityEndAge);
                command.Parameters.AddWithValue("p_activity_description", activity.ActivityDescription);
                command.ExecuteNonQuery();
                connection.Close();
                return true;
            }
            catch (Exception e)
            {
                Console.WriteLine("can't insert data : " + e.StackTrace);
                return false;
            }
        }

        public List<Model.Activity> GetActivities()
        {
            
            List<Model.Activity> activities = new List<Model.Activity>();
            string storedProcedure = "get_activities";
            try
            {
                MySqlConnection connection = CreateConnection();
                MySqlCommand command = new MySqlCommand(storedProcedure, connection);
                command.CommandType = CommandType.StoredProcedure;
                MySqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    Model.Activity tempActivity = new Model.Activity(reader.GetInt32(0), reader.GetString(1), reader.GetString(4), reader.GetInt32(2), reader.GetInt32(3));
                    activities.Add(tempActivity);
                }
                reader.Close();
                connection.Close();
            }
            catch (Exception e)
            {
                Console.WriteLine("can't retrieve activity : " + e);
            }
            return activities;
        }

        public bool DeleteActivity(string activityName)
        {
            string storedProcedure = "delete_activity";
            try
            {
                Console.WriteLine("Display activity Name : " + activityName);
                MySqlConnection connection = CreateConnection();
                MySqlCommand command = new MySqlCommand(storedProcedure, connection);
                command.CommandType= CommandType.StoredProcedure;
                command.Parameters.AddWithValue("activityName", activityName);
                command.ExecuteNonQuery();
                connection.Close();
                return true;
            }
            catch (Exception e)
            {
                Console.WriteLine("can't complete deletion  : " + e);
                return false;
            }
        }

        public int GetActivityId(string activityName)
        {
            string storedProcedure = "get_activity_id";
            int activityId = -1;
            try
            {
                MySqlConnection connection = CreateConnection();
                MySqlCommand command = new MySqlCommand(storedProcedure, connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("activityName", activityName);
                MySqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    activityId = reader.GetInt32(0);
                }
                reader.Close();
                connection.Close();
                return activityId;
            }
            catch (Exception e)
            {
                Debug.WriteLine("can't find the activity  : " + e.StackTrace);
                return activityId;
            }
        }

        public Model.Activity GetActivityById(int activityId)
        {
            string storedProcedure = "get_activity";
            Model.Activity activity = new Model.Activity();
            try
            {
                MySqlConnection connection = CreateConnection();
                MySqlCommand command = new MySqlCommand(storedProcedure, connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("activityId", activityId);
                MySqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    activity = new Model.Activity(reader.GetInt32(0), reader.GetString(1), reader.GetString(4), reader.GetInt32(2), reader.GetInt32(3));
                }
                reader.Close();
                connection.Close();
                return activity;
            }
            catch (Exception e)
            {
                Console.WriteLine("can't find the activity  : " + e.StackTrace);
                return activity;
            }
        }

        public bool UpdateActivity(Model.Activity activity)
        {
            string storedProcedure = "update_activity";
            Console.WriteLine("activity id : " + activity.ActivityId);
            try
            {
                MySqlConnection connection = CreateConnection();
                MySqlCommand command = new MySqlCommand(storedProcedure, connection);
                command.CommandType= CommandType.StoredProcedure;   
                command.Parameters.AddWithValue("p_activity_id", activity.ActivityId);
                command.Parameters.AddWithValue("p_activity_name", activity.ActivityName);
                command.Parameters.AddWithValue("p_activity_start_age", activity.ActivityStartAge);
                command.Parameters.AddWithValue("p_activity_end_age", activity.ActivityEndAge);
                command.Parameters.AddWithValue("p_activity_description", activity.ActivityDescription);
                command.ExecuteNonQuery();
                connection.Close();
                Debug.WriteLine("**************** update succe");
                return true;
            }
            catch (Exception e)
            {
                Debug.WriteLine("can't update data : " + e);
                return false;
            }
        }
       

    }
}
