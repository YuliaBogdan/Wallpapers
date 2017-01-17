<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataBaseWallpapers.aspx.cs" Inherits="Wallpapers.DataBaseWallpapers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset='utf-8'/>
     <title>Подбор обоев</title>
     <link rel="stylesheet" href="Style2.css"/>
</head>
<body>
    <form id="form1" runat="server">
     <div id="header">
       <a href="DataBaseWallpapers.aspx">Каталог обоев</a>/
		<a href="#">Каталог комнат</a>/
        <a href="Menu.aspx">Подобрать обои</a>		
     </div>
        <div>
            <asp:Panel ID="Panel1" runat="server" Height="100px" Width="1200px">
                <asp:TextBox ID="txtFilter" runat="server"></asp:TextBox>
                <asp:Button ID="Find" runat="server" Text="Поиск" OnClick="Find_Click" />
            </asp:Panel>
        </div>
        <div>
            
            <asp:Panel ID="Panel2" runat="server" ScrollBars="Vertical" Height="450px" Width="1350px">
                <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="Article" Width="1300px" ShowFooter="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                    <Columns>
                        <asp:TemplateField HeaderText="Article" SortExpression="Article">
                            <EditItemTemplate>
                                <asp:Label ID="Label" runat="server" Text='<%# Eval("Article") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Article") %>'></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="Article_TB" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvEditArticle" runat="server" ErrorMessage ="Необходимо заполнить поле Артикул" 
                                   ControlToValidate ="Article_TB" Text="*" ForeColor="Red" EnableClientScript="False">

                                </asp:RequiredFieldValidator>
                            </FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Country" SortExpression="Country">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Country") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Country") %>'></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="Country_TB" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvEditCountry" runat="server" ErrorMessage ="Необходимо заполнить поле Страна" 
                                   ControlToValidate ="Country_TB" Text="*" ForeColor="Red">

                                </asp:RequiredFieldValidator>
                            </FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Size" SortExpression="Size">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("Size") %>'>
                                    <asp:ListItem>Выбрать размер</asp:ListItem>
                                     <asp:ListItem>0,53</asp:ListItem>
                                     <asp:ListItem>1,06</asp:ListItem>
                                     <asp:ListItem>0,70</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Size") %>'></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                             <asp:DropDownList ID="Size_DD" runat="server">
                                    <asp:ListItem>Выбрать размер</asp:ListItem>
                                     <asp:ListItem>0,53</asp:ListItem>
                                     <asp:ListItem>1,06</asp:ListItem>
                                     <asp:ListItem>0,70</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvEditSize" runat="server" ErrorMessage ="Необходимо заполнить поле Размер" 
                                   ControlToValidate ="Size_DD" Text="*" ForeColor="Red" InitialValue="Выбрать размер" EnableClientScript="False">

                                </asp:RequiredFieldValidator>
                                </FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Material" SortExpression="Material">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Material") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Material") %>'></asp:Label>
                            </ItemTemplate>
                             <FooterTemplate>
                                <asp:TextBox ID="Material_TB" runat="server"></asp:TextBox>
                                 <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvEditMaterial" runat="server" ErrorMessage ="Необходимо заполнить поле Материал" 
                                   ControlToValidate ="Material_TB" Text="*" ForeColor="Red">

                                </asp:RequiredFieldValidator>
                            </FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="BalanceSP" SortExpression="BalanceSP">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("BalanceSP") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("BalanceSP") %>'></asp:Label>
                            </ItemTemplate>
                             <FooterTemplate>
                                <asp:TextBox ID="BalanceSP_TB" runat="server"></asp:TextBox>
                                 <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvEditBlanceSP" runat="server" ErrorMessage ="Необходимо заполнить поле Остатки СП" 
                                   ControlToValidate ="BalanceSP_TB" Text="*" ForeColor="Red" EnableClientScript="False">

                                </asp:RequiredFieldValidator>
                            </FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="BalanceTuran" SortExpression="BalanceTuran">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("BalanceTuran") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("BalanceTuran") %>'></asp:Label>
                            </ItemTemplate>
                             <FooterTemplate>
                                <asp:TextBox ID="BalanceT_TB" runat="server"></asp:TextBox>
                                 <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvEditBalanceT" runat="server" ErrorMessage ="Необходимо заполнить поле Остатки Туран" 
                                   ControlToValidate ="BalanceT_TB" Text="*" ForeColor="Red">

                                </asp:RequiredFieldValidator>
                            </FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Cost" SortExpression="Cost">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Cost") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("Cost") %>'></asp:Label>
                            </ItemTemplate>
                             <FooterTemplate>
                                <asp:TextBox ID="Cost_TB" runat="server"></asp:TextBox>
                                 <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvEditCost" runat="server" ErrorMessage ="Необходимо заполнить поле Цена" 
                                   ControlToValidate ="Cost_TB" Text="*" ForeColor="Red" EnableClientScript="False">

                                </asp:RequiredFieldValidator>
                            </FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ShowHeader="False">
                            <EditItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Обновить"></asp:LinkButton>
                                <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Отменить"></asp:LinkButton>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Edit" Text="Править"></asp:LinkButton>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:LinkButton ValidationGroup="INSERT" OnClick="LbInsert_Click" ID="LbInsert" runat="server">Добавить</asp:LinkButton>
                            </FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton4" runat="server" CausesValidation="False" CommandName="Delete" Text="Удалить"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Wallpapers2ConnectionString %>" DeleteCommand="DELETE FROM [Photoes] WHERE [Article] = @Article" InsertCommand="INSERT INTO [Photoes] ([Article], [Country], [Size], [Material], [BalanceSP], [BalanceTuran], [Cost]) VALUES (@Article, @Country, @Size, @Material, @BalanceSP, @BalanceTuran, @Cost)" SelectCommand="SELECT * FROM [Photoes]" UpdateCommand="UPDATE [Photoes] SET [Country] = @Country, [Size] = @Size, [Material] = @Material, [BalanceSP] = @BalanceSP, [BalanceTuran] = @BalanceTuran, [Cost] = @Cost WHERE [Article] = @Article">
                    <DeleteParameters>
                        <asp:Parameter Name="Article" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Article" Type="String" />
                        <asp:Parameter Name="Country" Type="String" />
                        <asp:Parameter Name="Size" Type="String" />
                        <asp:Parameter Name="Material" Type="String" />
                        <asp:Parameter Name="BalanceSP" Type="Int32" />
                        <asp:Parameter Name="BalanceTuran" Type="Int32" />
                        <asp:Parameter Name="Cost" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Country" Type="String" />
                        <asp:Parameter Name="Size" Type="String" />
                        <asp:Parameter Name="Material" Type="String" />
                        <asp:Parameter Name="BalanceSP" Type="Int32" />
                        <asp:Parameter Name="BalanceTuran" Type="Int32" />
                        <asp:Parameter Name="Cost" Type="String" />
                        <asp:Parameter Name="Article" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:ValidationSummary ValidationGroup="INSERT" ID="VS1" ForeColor="Red" runat="server" />

            </asp:Panel>
            
        
    </div>
        
    </form>
</body>
</html>
