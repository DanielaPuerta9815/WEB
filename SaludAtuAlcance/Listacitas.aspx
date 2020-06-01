<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Listacitas.aspx.cs" Inherits="SaludAtuAlcance.Views.Listacitas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">  
    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 940px;
            font-size:30px;
            color:black;
        }
        .auto-style3 {
            width: 41%;
            margin-left: 300px;
        }
        .auto-style7 {
            width: 142px;
            margin-left: 120px;
        }
        .auto-style8 {
            margin-left: 700px;
            margin-left: 700px;
            color:black;
        }
        .auto-style9 {
            margin-left: 720px;
            color: black;
        }
        </style>
</head>
<body style="background-image: url(https://www.hilldickinson.com/sites/default/files/styles/full_width_scaled/public/waiting_room_health_green_chair_hospital_54612907.jpg?itok=xLjVIF_A); background-repeat: no-repeat; background-attachment: fixed;">
    <form id="form1" runat="server">

        <div style="margin:auto;border:solid white">
             <br />
             <br />
             <br />
             <br />
             <br />
             
             
            <h1 style="text-align:center" >Lista de citas disponibles </h1> 
            <br />
            <table class="auto-style3">
                <tr>
                    <td class="auto-style1">Nombre de centro medico</td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#ccffff" BorderColor="#0000ff">
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
            <br />
            <div>
                <center>
                <asp:Button ID="Vercitas" runat="server" Text=" ver Citas" OnClick="Vercitas_Click" BackColor="#ccffff" BorderColor="#0000ff" style="margin-left: 100px"/>
                    </center>
            </div>
            <br />
           

      
             <center>
             <asp:GridView ID="DGCitas" runat="server" OnSelectedIndexChanged="DGCitas_SelectedIndexChanged" RowStyle-ForeColor="black">
                 <Columns>
                     <asp:CommandField ShowSelectButton="True" />
                 </Columns>
             </asp:GridView>
               </center>   
            <br />
            <center>
             <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Regresar" BackColor="#ccffff" BorderColor="#0000ff" style="margin-left: 100px"/>
                </center>
             <p>
             
             <asp:ImageButton ID="ImageButton1" runat="server" Height="51px" ImageUrl="~/img/2.png" OnClick="ImageButton1_Click" Width="51px" style="margin-left: 100px" />
             <asp:Label ID="LBI" runat="server" Text="INFORMACION: Para reservar una cita
                 solo debe dar click en seleccionar, al frente de la cita que desee reservar. " ForeColor="RED" style="margin-left: 10px" Font-Size ="X-Large"></asp:Label>

         </p>

        </div>
        
        
    </form>
</body>
</html>