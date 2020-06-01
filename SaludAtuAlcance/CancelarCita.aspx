<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CancelarCita.aspx.cs" Inherits="SaludAtuAlcance.CancelarCita" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        
        .auto-style8 {

            margin: auto;
            color:white;
            border-bottom-color:turquoise;
                
        }
        
        </style>
</head>

<body style="background-image: url('https://www.hilldickinson.com/sites/default/files/styles/full_width_scaled/public/waiting_room_health_green_chair_hospital_54612907.jpg?itok=xLjVIF_A'); background-repeat: no-repeat; background-attachment: fixed; width: 1375px; margin-left: 263px;" >
    <form id="form1" runat="server">
        <div style="margin:auto;border:solid white" >
            <br />
            <br />
            <br />
            <br />
            <br />
            <center>
                <h1 style="text-align:center" >Lista de citas Asignadas </h1> 

            <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" RowStyle-ForeColor="black">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
               </center>
        
        
        <br />
            <center>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Regresar" BackColor="#ccffff" BorderColor="#0000ff" CssClass="centerButton" />
        <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="RED"></asp:Label>
                </center>
             <p>
             
             <asp:ImageButton ID="ImageButton1" runat="server" Height="51px" ImageUrl="~/img/2.png" OnClick="ImageButton1_Click" Width="51px" style="margin-left: 100px" />
             <asp:Label ID="LBI" runat="server" Text="INFORMACION: Para cancelar una cita
                 solo debe dar click en seleccionar, al frente de la cita que desee cancelar. " ForeColor="RED" style="margin-left: 10px" Font-Size ="X-Large"></asp:Label>

         </p>
      </div>
    </form>
</body>
</html>