using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment.MEMBER
{
    public partial class member : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("testMemberLogin.aspx");
        }
    }
}