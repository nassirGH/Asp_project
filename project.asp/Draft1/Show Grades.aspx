<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Show Grades.aspx.cs" Inherits="Draft1.Show_Grades" EnableSessionState="True" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Bootstrap/CSS/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
          .alignbut{
            text-align:right;
        }
             .align{
            text-align:center;
        }
.btn-warning.focus,.btn-warning:focus{box-shadow:0 0 0 .2rem rgba(255,193,7,.5)}.btn-warning{color:#212529;background-color:#ffc107;border-color:#ffc107}[type=reset],[type=submit],button,html [type=button]{-webkit-appearance:button}button,input{overflow:visible}button,input,optgroup,select,textarea{margin:0;font-family:inherit;font-size:inherit;line-height:inherit}*,::after,::before{text-shadow:none!important;box-shadow:none!important}*,::after,::before{box-sizing:border-box}
        </style>
    <link href="Bootstrap/CSS/bootstrap.min.css" rel="stylesheet" />
</head>
    <body>
        <form id="form1" runat="server">
    <div>
    
    
        <asp:Button ID="Button1" runat="server" ClientIDMode="Predictable" CssClass="btn-info focus" Text="Grades" BorderStyle="Groove" Font-Italic="True" Width="233px" OnClick="Button1_Click" />
   
    
        <asp:Button ID="Button2" runat="server" ClientIDMode="Predictable" CssClass="btn-info" Text="Course Registration" Font-Bold="False" Font-Italic="True" Width="233px" OnClick="Button2_Click1" />
   
    
       
       <div class="alignbut"> <asp:Button ID="Button6" runat="server" CssClass="alert-danger" OnClick="Button6_Click" Text="Log Out" /></div>
   
    
        <br />
        <br />
        <div class="align">
            <p class="alert-primary">
        <asp:Label ID="Label2" align="middle" runat="server" CssClass="alert-primary"></asp:Label>
  </p> </div>
    
        <br />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="362px" HorizontalAlign="Center">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="CourseID" HeaderText="CourseID" SortExpression="CourseID" />
                <asp:BoundField DataField="Mark" HeaderText="Mark" SortExpression="Mark" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [CourseID], [Mark] FROM [Grades] WHERE ([StudentID] = @StudentID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label1" Name="StudentID" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
   
    
        <br />
   
    
</div>
         <div class="active">
            <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
             </div>
        </form>
    </body>
    </html>