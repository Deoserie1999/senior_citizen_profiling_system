using System;

namespace SCProfilingSystem.Models
{
    public class UsersModel
    {
        public int Id { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public DateTime DateCreated { get; set; }
    }
}