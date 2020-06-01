using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LogicaNegocio;

namespace SaludAtuAlcance
{
    public partial class Login : System.Web.UI.Page
    {
        GestorPaciente obj1 = new GestorPaciente();
        protected void Page_Load(object sender, EventArgs e)
        {
            LabMSMError.Visible = false;
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {

        }

        protected void ButEntrar_Click(object sender, EventArgs e)
        {
            /*if (obj1.ValidarPaciente(Convert.ToInt32(TextNombreUsuario.Text), TextContrasena.Text))
            {
                Response.Redirect("Listacitas.aspx?username=" + TextNombreUsuario.Text);
            }
            else
            {
                LabMSMError.Visible = true;
            }*/
            if (obj1.ValidarPaciente(Convert.ToInt32(TextNombreUsuario.Text), TextContrasena.Text))
            {
                
                DateTime fecha = DateTime.Now;
                obj1.LoginRegistro(Convert.ToInt32(TextNombreUsuario.Text));
                //Response.Redirect("CancelarCita.aspx?username=" + TextNombreUsuario.Text);
                // Response.Redirect("Listacitas.aspx?username=" + TextNombreUsuario.Text);
                Response.Redirect("Menu.aspx?username=" + TextNombreUsuario.Text);
            }
            else
            {
                String IP = Request.UserHostAddress;
                obj1.LoginError(Convert.ToInt32(TextNombreUsuario.Text), IP);
                LabMSMError.Visible = true;
            }

        }

        protected void TextContrasena_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextContrasena_TextChanged1(object sender, EventArgs e)
        {
            
        }
    }
}