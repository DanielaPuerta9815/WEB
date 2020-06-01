using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LogicaNegocio;

namespace SaludAtuAlcance.Views
{
    public partial class Listacitas : System.Web.UI.Page
    {
        int username = 0;
        Gestorcentro obj1 = new Gestorcentro();
        GestorCita obj2= new GestorCita();
        protected void Page_Load(object sender, EventArgs e)
        {
            LBI.Visible = false;
            if (Request.Params["username"] !=null)
            {
                username = Convert.ToInt32(Request.Params["username"]);

                DataTable dt = new DataTable();
                if (DropDownList1.Items.Count <= 0)
                {

                    dt = obj1.MostrarNombreCentroMedico(username);
                    ListItem i;

                    foreach (DataRow r in dt.Rows)

                    {

                        i = new ListItem(r["Nombre"].ToString(), r["Nombre"].ToString());

                        DropDownList1.Items.Add(i);

                    }
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Vercitas_Click(object sender, EventArgs e)
        {
            if (obj2.ObtenerCita(DropDownList1.SelectedItem.ToString()).Rows.Count > 0)
            {
                DGCitas.DataSource = obj2.ObtenerCita(DropDownList1.SelectedItem.ToString());
                DGCitas.DataBind();
            }
            else
            {
                DateTime fecha = DateTime.Now;
                obj2.NoCita(username);
                string myStringVariable = "Ya no se encuentran citas disponibles por favor intentelo más tarde gracias!!!";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void DGCitas_SelectedIndexChanged(object sender, EventArgs e)
        {
            obj2.ReservarCita(Convert.ToInt32(DGCitas.SelectedRow.Cells[1].Text),username);
            if (obj2.ObtenerCita(DropDownList1.SelectedItem.ToString()).Rows.Count > 0)
            {
                DGCitas.DataSource = obj2.ObtenerCita(DropDownList1.SelectedItem.ToString());
                DGCitas.DataBind();
            }
            else
            {
                obj2.NoCita(username);
               string myStringVariable = "Ya no se encuentran citas disponibles por favor intentelo más tarde gracias!!!";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);

            }
        }

        protected void Reservar(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx?username=" + username);
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            LBI.Visible = true;
        }
    }
}