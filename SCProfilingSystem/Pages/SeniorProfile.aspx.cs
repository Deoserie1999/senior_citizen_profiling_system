using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SCProfilingSystem.Repositories;


namespace SCProfilingSystem.Pages
{
    public partial class SeniorProfile : System.Web.UI.Page
    {
        protected async void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var id = Request.QueryString["Id"];
                if (!string.IsNullOrEmpty(id))
                {
                    var senior = await SeniorsRepository.GetProfileAsync(Convert.ToInt32(id));
                    if (senior != null)
                    {
                        SeniorID.Text = senior.SeniorID;
                        txtfirstname.Text = senior.FirstName;
                        txtmiddlename.Text = senior.MiddleName;
                        txtlastname.Text = senior.LastName;
                        rblGender.Text = senior.Gender;
                        txtDob.Text = senior.DOB.ToShortDateString();
                        rblMaritalStatus.Text = senior.MaritialStatus;
                        contactnum.Text = senior.ContactNum;
                        religion.Text = senior.Religion;
                        occupation.Text = senior.Occupation;
                        brgy.Text = senior.Barangay;
                        municipality.Text = senior.Municipality;
                        province.Text = senior.Province;
                        return;
                    }
                }

                Response.Redirect("~/Pages/Home.aspx", false);
            }
            
        }

        protected void btnshow_click(object sender, EventArgs e)
        {
            Response.Redirect("SeniorCard.aspx");
        }
    }
}