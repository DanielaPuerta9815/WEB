<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SaludAtuAlcance.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        body{
            background-color:dimgrey;
        }
        .auto-style1 {
            height: 26px;
            width: 195px;
        }
        .auto-style2 {
            width: 246px;
        }
        .auto-style3 {
            height: 26px;
            width: 213px;
        }
        .auto-style5 {
            margin-left: 40px;
        }
        .auto-style6 {
            margin-left: 160px;
        }
        img{
            display:block;
            margin:auto;
            
            }
        .auto-style8 {
            height: 26px;
            width: 246px;
        }
        .auto-style9 {
            width: 467px;
            height: 303px;
        }
        .auto-style10 {
            width: 195px;
        }
    </style>

</head>
<body  style="background-image: url(https://www.hilldickinson.com/sites/default/files/styles/full_width_scaled/public/waiting_room_health_green_chair_hospital_54612907.jpg?itok=xLjVIF_A); background-repeat: no-repeat; background-attachment: fixed;">
    <form id ="form1" runat="server">
        <br />
        <h1 style="text-align:center; font-size:xx-large">Salud a tu Alcance</h1>
            <p class="auto-style5">
            <br class="auto-style6" />
            <img   src ="img/1.png" style=" border:solid white" class="auto-style9"  /></p>
        <div>
            <table style="margin:auto;border:solid white">
                <tr>

                    <td class="auto-style10">
                        <br />
                        <asp:Label ID="Label1" runat="server" Text="Nombre de Usuario" ForeColor="Black" style="text-align:center; font-size:x-large" ></asp:Label></td>
                    <td class="auto-style2"> 
                        <br />
                        <asp:TextBox ID="TextNombreUsuario" runat="server" BorderColor="#0000ff" style="text-align:center; font-size:x-large" ></asp:TextBox>  </td>
                </tr>
                <tr>
                     <td class="auto-style10"> 
                         <br />
                    <asp:Label ID="Label2" runat="server" Text="Contrasena" ForeColor="Black" style="text-align:center; font-size:x-large" ></asp:Label> </td>
                <td class="auto-style2"> 
                    <br />
                    <asp:TextBox ID="TextContrasena" runat="server" BorderColor="#0000ff"  style="text-align:center; font-size:x-large" OnTextChanged="TextContrasena_TextChanged1" type="password"></asp:TextBox> </td>
                </tr>   
                <tr> 
                    <td class="auto-style10"> 

                    </td>

                    <td class="auto-style2"> 
                        <br />
                        <asp:Button ID="ButEntrar" runat="server" BorderStyle="Solid" Text="Entrar" OnClick="ButEntrar_Click" BackColor="#ccffff" BorderColor="#0000ff" CssClass="auto-style3"/>
                    </td>
                </tr>
                <tr> 
                    <td class="auto-style1"></td>
                    <td class="auto-style8">
                        <asp:Label ID="LabMSMError" runat="server" Text="Credenciales Incorrectas" ForeColor="Red"></asp:Label> </td>
                </tr>
            </table>
        </div>
        </form>
</body>
</html>
