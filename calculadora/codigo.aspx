<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="codigo.aspx.cs" Inherits="calculadora.codigo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="estilos.css" rel="stylesheet" />
    <link rel="icon" type="image/x-icon" href="~/images/favicon-cristaled-calculator.png"/>
    <title>Calculadora Cristaled</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Calculadora</h1>
            <div class="seccionValores">
                 <asp:Label ID="lblEspejo" runat="server" Text="Medida espejo:"></asp:Label>
                 <asp:TextBox ID="txtEspejo" runat="server"></asp:TextBox>
                <asp:Label ID="lblValidacionEspejo" runat="server" Text=""></asp:Label>
            </div>
            <div class="seccionValores">
                <asp:Label ID="lblEspaciado" runat="server" Text="Espaciado:"></asp:Label>
                <asp:TextBox ID="txtEspaciado" runat="server"></asp:TextBox>
                <asp:Label ID="lblValidacionEspaciado" runat="server" Text=""></asp:Label>
            </div>

            <div class="botones">
                <asp:Button ID="botonCalcular" runat="server" Text="Calcular corte" OnClick="Button1_Click" />
                <asp:Button ID="botonReinicio" runat="server" Text="" OnClick="botonReinicio_Click" />
            </div>
            
            <div class="seccionResultado">
                <asp:Label ID="lblCorte" runat="server" Text="Corte final del espejo:"></asp:Label> 
                <asp:Label ID="lblResultado" runat="server" Text=""></asp:Label>
                
            </div>
        </div>
    </form>
</body>
</html>
