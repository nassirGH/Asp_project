<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Draft123.aspx.cs" Inherits="Draft1.Draft123" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   
    <form id="form1" runat="server">  
    <div>  
      
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"   
            BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px"   
            CellPadding="4" ForeColor="Black" GridLines="Vertical">  
            <AlternatingRowStyle BackColor="White" />  
            <Columns>  
                <asp:TemplateField HeaderText="ID">  
                    <EditItemTemplate>  
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("id") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                    <ItemTemplate>  
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("id") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="Name">  
                    <EditItemTemplate>  
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                    <ItemTemplate>  
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("name") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="City">  
                    <EditItemTemplate>  
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("city") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                    <ItemTemplate>  
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("city") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="Select Data">  
                    <EditItemTemplate>  
                        <asp:CheckBox ID="CheckBox1" runat="server" />  
                    </EditItemTemplate>  
                    <ItemTemplate>  
                        <asp:CheckBox ID="CheckBox1" runat="server" />  
                    </ItemTemplate>  
                </asp:TemplateField>  
            </Columns>  
            <FooterStyle BackColor="#CCCC99" />  
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />  
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />  
            <RowStyle BackColor="#F7F7DE" />  
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />  
            <SortedAscendingCellStyle BackColor="#FBFBF2" />  
            <SortedAscendingHeaderStyle BackColor="#848384" />  
            <SortedDescendingCellStyle BackColor="#EAEAD3" />  
            <SortedDescendingHeaderStyle BackColor="#575357" />  
        </asp:GridView>  
      
        <br />  
      
    </div>  
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click"   
        Text="Save to Database" />  
    </form>  
       </body>
</html>
