<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="SaludAtuAlcance.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   
  <title></title>
   <style type="text/css">
        .auto-style1 {
            font-size:40px;
            color:black;
        }
        .auto-style2 {
            font-size:40px;
            display: flex;
            margin-left: auto;
            margin-right: auto;

        }
        
      
    </style>
</head>
<body style="background-image: url(https://www.hilldickinson.com/sites/default/files/styles/full_width_scaled/public/waiting_room_health_green_chair_hospital_54612907.jpg?itok=xLjVIF_A); background-repeat: no-repeat; background-attachment: fixed;">
    <form id="form1" runat="server">
        <br />

         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
        <div style="margin:auto;border:solid white">

        
        <h1 style="text-align:center" class="auto-style1">Bienvenidos a Salud a tu alcance</h1>
        <br />
       
                <center>
         <asp:Button runat="server"  Text="Reservar Cita" Value="Reservar Cita" OnClick="Unnamed1_Click" ID="Button1" BackColor="#ccffff" BorderColor="#0000ff" style="margin-left: 0px" CssClass="centerButton"  Font-Size="Medium"/>
         
          <asp:Button ID="Button2" runat="server" Text="Cancelar Cita" OnClick="Button2_Click" BackColor="#ccffff" BorderColor="#0000ff" style="margin-left: 100px" CssClass="centerButton"  Font-Size="Medium" />
            <asp:Button ID="Button3" runat="server" Text="Cerrar Sesion" OnClick="Button3_Click" BackColor="#ccffff" BorderColor="#0000ff" style="margin-left: 100px" CssClass="centerButton" Font-Size="Medium"  />
         </center>
     </div>
        </form>
</body>
</html>
