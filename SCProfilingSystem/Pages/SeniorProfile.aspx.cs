﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SCProfilingSystem.Pages
{
    public partial class SeniorProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnshow_click(object sender, EventArgs e)
        {
            Response.Redirect("SeniorCard.aspx");
        }
    }
}