using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SCProfilingSystem.Repositories;

namespace SCProfilingSystem.Pages
{
    public partial class RegisteredSenior : System.Web.UI.Page
    {
        async Task<DataTable> FillDataTable()
        {
            var seniors = await SeniorsRepository.GetSeniorsAsync();
            using (var dt = new DataTable())
            {
                dt.Columns.Add("Id", typeof(int));
                dt.Columns.Add("SeniorId", typeof(string));
                dt.Columns.Add("FullName", typeof(string));
                dt.Columns.Add("Dob", typeof(DateTime));
                dt.Columns.Add("MaritalStatus", typeof(string));
                dt.Columns.Add("ContactNo", typeof(string));
                dt.Columns.Add("Religion", typeof(string));
                dt.Columns.Add("Barangay", typeof(string));
                dt.Columns.Add("Municipality", typeof(string));
                dt.Columns.Add("Province", typeof(string));
                foreach (var senior in seniors)
                {
                    dt.Rows.Add(senior.Id, senior.SeniorID,
                        $"{senior.LastName}, {senior.FirstName} {senior.MiddleName}", senior.DOB, senior.MaritialStatus,
                        senior.ContactNum, senior.Religion, senior.Barangay, senior.Municipality,
                        senior.Province);
                }
                return dt;
            }
        }
        protected async void Page_Load(object sender, EventArgs e)
        {
            gvRecords.DataSource = await FillDataTable();
            gvRecords.DataBind();
        }

        protected void gvRecords_OnRowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName != "btnView") return;
            int id = Convert.ToInt32(e.CommandArgument);
        }
    }
}