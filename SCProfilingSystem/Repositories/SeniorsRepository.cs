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
    public class SeniorsRepository
    {
        public static async Task<int> InsertSeniorAsync(SeniorsModel model)
        {
            using (IDbConnection connection = new MySqlConnection(DBConnectionString.GetConnectionString()))
            {
                string query = @"insert into seniors (SeniorId, FirstName, MiddleName, LastName, Gender, DOB, MaritialStatus, ContactNum, Religion, Occupation, Barangay, Municipality, Province, Photo) values (@SeniorID, upper(@FirstName), upper(@MiddleName), upper(@LastName), @Gender, @DOB, @MaritialStatus, @ContactNum, @Religion, @Occupation, upper(@Barangay), upper(@Municipality), upper(@Province), @Photo)";
                var parameters = new DynamicParameters();
                parameters.Add("SeniorID", model.SeniorID, DbType.Int32);
                parameters.Add("FirstName", model.FirstName, DbType.String);
                parameters.Add("MiddleName", model.MiddleName, DbType.String);
                parameters.Add("LastName", model.LastName, DbType.String);
                parameters.Add("Gender", model.Gender, DbType.String);
                parameters.Add("DOB", model.DOB, DbType.Date);
                parameters.Add("MaritialStatus", model.MaritialStatus, DbType.String);
                parameters.Add("ContactNum", model.ContactNum, DbType.String);
                parameters.Add("Religion", model.Religion, DbType.String);
                parameters.Add("Occupation", model.Occupation, DbType.String);
                parameters.Add("Barangay", model.Barangay, DbType.String);
                parameters.Add("Municipality", model.Municipality, DbType.String);
                parameters.Add("Province", model.Province, DbType.String);
                parameters.Add("Photo", model.Photo, DbType.Binary);
                return await connection.ExecuteAsync(query, parameters);
            }
        }

        public static async Task<IEnumerable<SeniorsModel>> GetSeniorsAsync()
        {
            using (IDbConnection connection = new MySqlConnection(DBConnectionString.GetConnectionString()))
            {
                string query = "select * from seniors order by DateCreated desc";
                return await connection.QueryAsync<SeniorsModel>(query);
            }
        }

        public static async Task<SeniorsModel> GetProfileAsync(int id)
        {
            using (IDbConnection connection = new MySqlConnection(DBConnectionString.GetConnectionString()))
            {
                string query = "select * from Seniors where id = @id";
                var parameters = new DynamicParameters();
                parameters.Add("id", id, DbType.Int32);
                return await connection.QuerySingleOrDefaultAsync<SeniorsModel>(query, parameters);
            }
        }
    }
}