<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manage Reg_Courses.aspx.cs" Inherits="Draft1.Manage_Reg_Courses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Bootstrap/CSS/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="alert-secondary">
    
        <asp:Button ID="Button1" runat="server" BorderStyle="Inset" ClientIDMode="Predictable" CssClass="btn-danger" Text="Major &amp; Courses" />
   
    &nbsp;
           
        <asp:Button ID="Button8" runat="server" BorderStyle="Inset" ClientIDMode="Predictable" CssClass="btn-danger" Text="User's Information" OnClick="Button8_Click" Width="293px" />
   
    &nbsp;
   
        <asp:Button ID="Button9" runat="server" BorderStyle="Inset" ClientIDMode="Predictable" CssClass="btn-danger" Text="Registered Courses" OnClick="Button9_Click" />
   
        <br />
    </div>
    </form>
</body>
</html>
