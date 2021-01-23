using System;


namespace SCProfilingSystem.Models
{
    public class SeniorsModel
    {
        public int Id { get; set; }
        public string SeniorID { get; set; }
        public string FirstName { get; set; }
        public string MiddleName { get; set; }
        public string LastName { get; set; }
        public string Gender { get; set; }
        public DateTime DOB { get; set; }
        public string MaritialStatus { get; set; }
        public string ContactNum { get; set; }
        public string Religion { get; set; }
        public string Occupation { get; set; }
        public string Barangay { get; set; }
        public string Municipality { get; set; }
        public string Province { get; set; }
        public byte[] Photo { get; set; }
        public DateTime DateCreated { get; set; }
    }
}