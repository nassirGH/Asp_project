<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Teacher page.aspx.cs" Inherits="Draft1.Teacher_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Bootstrap/CSS/bootstrap.min.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 38px;
        }
           .alignbut{
            text-align:right;
        }
           

    </style>
    <script src="App_Data/css/jquery-3.2.1.min.js"></script>
</head>
<body>
    <form id="form1" class="form-control" runat="server">
    <div class="alert-secondary">
    
        <asp:Button ID="Button6" runat="server" CssClass="btn-warning" Text="Courses" Width="231px" ForeColor="White" />
&nbsp;
        <asp:Button ID="Button7" runat="server" CssClass="btn-warning" OnClick="Button7_Click" Text="Manage Grades" Width="246px" ForeColor="White" />
        <div class="alignbut">
            <asp:Button ID="Button8" runat="server" CssClass="alert-danger" OnClick="Button6_Click" Text="Log Out" />
        </div>
    </div>
 
       
        <div class="alert-secondary">
            <h2>&nbsp;</h2>
            <h2>&nbsp;</h2>
            <h2>Courses</h2>
         <p class="alert-secondary">
             Add a Course :</p> 
            <table class="visible">
                <tr>
                       
                      
                    <td>Enter a Course Name&nbsp;:&nbsp;&nbsp;</td>
                    <td class="auto-style4">&nbsp;<asp:TextBox ID="TextBox2" runat="server" ForeColor="#666666"> write here</asp:TextBox>
                    </td>
                    <td colspan="1">Code :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
                    </td>
                       
                       <td>&nbsp&nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style5" ForeColor="#666666"> write here</asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td class="active" colspan="1">
                        &nbsp;</td>
                    <td>
                        </td>
                    <td class="auto-style4">
                      
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="active" colspan="1">
                        &nbsp;</td>
                    <td>
                        <asp:RequiredFieldValidator  ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="did you enter the name course" CssClass="alert-danger"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td>
                        <asp:RequiredFieldValidator  ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Code Course is missed" CssClass="alert-danger"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td class="active" colspan="1">
                        &nbsp;</td>
                    <td>
                        </td>
                    <td class="auto-style4">
                      
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Number Of Credits :</td>
                    <td class="auto-style4">
                <asp:TextBox ID="TextBox4" runat="server" CssClass="active" ForeColor="#666666"> write here</asp:TextBox>
                    </td>
                    <td>Major :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Major" DataValueField="Major">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Major]"></asp:SqlDataSource>
                    </td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Button ID="Button4" runat="server" CssClass="btn-primary" width="200" Text="Add" style="margin-left: 42" OnClick="Button4_Click" />
                    </td>
                </tr>
                 <tr>
                    <td class="active" colspan="1">
                        &nbsp;</td>
                    <td>
                        </td>
                    <td class="auto-style4">
                      
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr><td colspan="1" class="auto-style1"></td>
                    <td class="active" colspan="1" style="height: 38px">
                        <asp:RequiredFieldValidator  ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="please enter the number of credits" CssClass="alert-danger"></asp:RequiredFieldValidator>
                        </td>
                    <td class="auto-style1">
                        </td>
                    <td class="auto-style1">
                        </td>
                    </tr>
                <tr><td colspan="4">
            <asp:Label ID="Label2" runat="server" CssClass="active" ForeColor="#993399"></asp:Label>
                    </td><td>
                        <asp:Button ID="Button5" runat="server" CssClass="btn-success" Text="View" OnClick="Button5_Click" />
                    </td></tr>
            </table>
           </div>
    </form>
</body>
</html>
