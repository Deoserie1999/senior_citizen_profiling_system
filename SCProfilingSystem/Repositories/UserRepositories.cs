using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper;
using MySql.Data;
using MySql.Data.MySqlClient;
using SCProfilingSystem.Models;

namespace SCProfilingSystem.Repositories
{
    public class UserRepositories
    {
        public static async Task<int> GenerateKey()
        {
            using (IDbConnection connection = new MySqlConnection(DBConnectionString.GetConnectionString()))
            {
                string query = "select max(Id) + 1 from users";
                return await connection.ExecuteScalarAsync<int>(query);
            }
        }

        public static async Task<int> InsertUserAsync(UsersModel model)
        {
            using(IDbConnection connection = new MySqlConnection(DBConnectionString.GetConnectionString()))
            {
                string query = "insert into users (Id, Username, Password) values (@Id, @Username, sha(@Password))";
                var parameters = new DynamicParameters();
                parameters.Add("Id", model.Id, DbType.Int32);
                parameters.Add("Username", model.Username, DbType.String);
                parameters.Add("Password", model.Password, DbType.String);
                return await connection.ExecuteAsync(query, parameters);
            }
        }
        public static async Task<UsersModel> GetUserDetails(string username, string password)
        {
            using (IDbConnection connection = new MySqlConnection(DBConnectionString.GetConnectionString()))
            {
                string query = "select * from users where lower(Username) = lower(@Username) and Password = (@Password)";
                var parameters = new DynamicParameters();
                parameters.Add("Username", username, DbType.String);
                parameters.Add("Password", password, DbType.String);
                return await connection.QuerySingleOrDefaultAsync<UsersModel>(query, parameters);
            }
        }

    }
}