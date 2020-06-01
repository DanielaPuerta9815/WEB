using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SaludAtuAlcance
{
    public partial class Menu : System.Web.UI.Page
    {
        int username = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Params["username"] != null)
            {
                username = Convert.ToInt32(Request.Params["username"]);

            }

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Listacitas.aspx?username=" + username);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("CancelarCita.aspx?username=" + username);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}