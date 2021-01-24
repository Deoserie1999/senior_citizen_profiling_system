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
    public partial class SeniorProfile : System.Web.UI.Page
    {
       /* async Task<DataTable> GetDataTable()
        {
            var seniors = await SeniorsRepository.GetProfileAsync();
            using(var dt = new DataTable())
            {
                SeniorID.Text = dt.Rows[0]["SeniorID"].ToString();
                txtfirstname.Text = dt.Rows[1]["FirstName"].ToString();
            }
            return;
        }   */




        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var id = Request.QueryString["Id"];
                if (!string.IsNullOrEmpty(id))
                {

                }
            }
            
        }

        protected void btnshow_click(object sender, EventArgs e)
        {
            Response.Redirect("SeniorCard.aspx");
        }
    }
}