<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Wallpapers.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset='utf-8'/>
     <title>Подбор обоев</title>
     <link rel="stylesheet" href="Style.css"/>
</head>
<body>
    <form id="form1" runat="server">
     <div id="header">
        <a href="DataBaseWallpapers.aspx">Каталог обоев<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Wallpapers2ConnectionString %>" SelectCommand="SELECT * FROM [Photoes]"></asp:SqlDataSource>
                </a>/
		<a href="#">Каталог комнат</a>/
        <a href="Menu.aspx">Подобрать обои</a>		
     </div>
        <div>
            <asp:Panel ID="Panel1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" Height="560px" Width="900px">
                <asp:Image ID="Image2" runat="server" Height="558px" Width="200px" />
                <asp:Image ID="Image3" runat="server" Height="558px" Width="500px" />
                <asp:Image ID="Image1" runat="server" Height="558px" Width="200px" />
            </asp:Panel>
        </div>
        <div>
             <asp:Panel ID="Panel2" runat="server" BackColor="White" Height="560" Width="445">
                <asp:Button ID="Find" runat="server" Text="Найти" OnClick="Find_Click" />
                 <asp:DropDownList ID="Article_DD" runat="server" DataSourceID="SqlDataSource1" DataTextField="Article" DataValueField="Article"></asp:DropDownList>
                <asp:TextBox ID="Article_DB" runat="server"></asp:TextBox>
                <asp:Label ID="Article_L" runat="server" Text="Артикул"></asp:Label>
                <asp:Image ID="Wallpaper" runat="server" Height="150px" Width="150px" />
                <asp:Label ID="Cost_L" runat="server" Text="Цена:"></asp:Label>
                <asp:TextBox ID="Cost_TB" runat="server"></asp:TextBox>
                <asp:Label ID="Balance_SP_L" runat="server" Text="Остаток СП:"></asp:Label>
                <asp:TextBox ID="Balance_SP_TB" runat="server"></asp:TextBox>
                <asp:Label ID="Balance_T_L" runat="server" Text="Остаток Т:"></asp:Label>
                <asp:TextBox ID="Balance_T_TB" runat="server"></asp:TextBox>
                <asp:Label ID="Article_Pare_L" runat="server" Text="Артикул пары:"></asp:Label>
                <asp:TextBox ID="Article_Pare_TB" runat="server"></asp:TextBox>
                <asp:Label ID="Country_L1" runat="server" Text="Страна:"></asp:Label>
                <asp:Label ID="Country_L2" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Size_L1" runat="server" Text="Размер:"></asp:Label>
                <asp:Label ID="Size_L2" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Material_L1" runat="server" Text="Материал:"></asp:Label>
                <asp:Label ID="Material_L2" runat="server" Text="Label"></asp:Label>
                <asp:Button ID="Clear_B" runat="server" Text="Очистить" />
            </asp:Panel>
        </div>
     </form>
</body>
</html>
