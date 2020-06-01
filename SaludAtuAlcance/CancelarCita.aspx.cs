using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LogicaNegocio;

namespace SaludAtuAlcance
{
    public partial class CancelarCita : System.Web.UI.Page
    {
        int username = 0;
        Gestorcentro obj1 = new Gestorcentro();
        GestorCita obj2 = new GestorCita();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            LBI.Visible = false;
            Label1.Visible = false;
            if (Request.Params["username"] != null)
            {
                username = Convert.ToInt32(Request.Params["username"]);

            }


            if (obj2.CitaXPaciente(username).Rows.Count > 0)
            {
                GridView1.DataSource = obj2.CitaXPaciente(username);
                GridView1.DataBind();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Visible = true; Label1.Text = obj2.CancelarCita(Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text), Convert.ToDateTime(GridView1.SelectedRow.Cells[6].Text), GridView1.SelectedRow.Cells[4].Text);
            if (obj2.CitaXPaciente(username).Rows.Count > 0)
            {
                GridView1.DataSource = obj2.CitaXPaciente(username);
                GridView1.DataBind();
            }
            else
            {
                string myStringVariable = "Ya no se encuentran citas disponibles por favor intentelo más tarde gracias!!!";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx?username=" + username);
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            LBI.Visible = true;
        }
    }
}