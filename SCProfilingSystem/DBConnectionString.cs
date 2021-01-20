using System.Configuration;
using System.Data;

namespace SCProfilingSystem
{
    public class DBConnectionString
    {
        public static string GetConnectionString(string connectionName = "SCPS_DB")
        {
            return ConfigurationManager.ConnectionStrings[connectionName].ConnectionString;
        }
    }
}