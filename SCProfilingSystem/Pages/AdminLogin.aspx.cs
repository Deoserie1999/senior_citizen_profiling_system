using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SCProfilingSystem.Models;
using SCProfilingSystem.Repositories;

namespace SCProfilingSystem.Pages
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected async void Page_Load(object sender, EventArgs e)
        {

            if (IsPostBack)
            {
                var user = await UserRepositories.GetUserDetails(txtusername.Text, txtpassword.Text);
                if (user != null)
                {
                    Session["UserId"] = user.Id;
                    Session["Username"] = user.Username;
                    Response.Write(@"<script>alert('Successfully Logged in!');</script>");
                    Response.Redirect("~/Pages/Home.aspx", false);
                }
                else
                {
                    Response.Write(@"<script>alert('Invalid username/password');</script>");
                }
            }
            else
            {
                Session.Clear();
                Session.Abandon();
            }
        }
    }

}