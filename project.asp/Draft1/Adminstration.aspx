<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adminstration.aspx.cs" Inherits="Draft1.Adminstration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="Bootstrap/Scripts/jquery-1.9.1.js"></script>
    <script src="Bootstrap/Scripts/jquery-1.9.1.min.js"></script>
    <script src="Bootstrap/Scripts/jquery-1.9.1.intellisense.js"></script>
    <title></title>
     <script>
       function fnconfirm() {
           if (confirm("are you sure to drop this course ?") == true) {
               return true;
           } else {
               return false;
           }
       }
   </script>
    <link href="Bootstrap/CSS/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 36px;
        }
        .auto-style2 {
            width: 724px;
        }
        .auto-style3 {
            width: 332px;
        }
        .auto-style4 {
            width: 653px;
        }
        .auto-style5 {
            margin-right: 87;
        }
        .auto-style14 {
            width: 418px;
        }
        .auto-style15 {
            width: 418px;
            height: 94px;
        }
        .auto-style17 {
            height: 94px;
        }
        .auto-style18 {
            width: 168px;
        }
        .auto-style19 {
            height: 94px;
            width: 168px;
        }
        .auto-style20 {
            color: #fff;
            background-color: #28a745;
            border-color: #28a745;
            margin-left: 0;
        }
        .auto-style21 {
            width: 418px;
            height: 110px;
        }
        .auto-style22 {
            width: 653px;
            height: 110px;
        }
        .auto-style23 {
            height: 110px;
        }
        .auto-style24 {
            width: 168px;
            height: 110px;
        }
        .alignbut{
            text-align:right;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server" class="alert-secondary">
    <div class="alert-secondary">
   
        <asp:Button ID="Button1" runat="server" BorderStyle="Inset" ClientIDMode="Predictable" CssClass="btn-danger" Text="Major &amp; Courses" OnClick="Button1_Click" />
   
    &nbsp;
           
        <asp:Button ID="Button8" runat="server" BorderStyle="Inset" ClientIDMode="Predictable" CssClass="btn-danger" Text="User's Information" OnClick="Button8_Click" Width="293px" />
   
    &nbsp;
   
        <div class="alignbut">
            <asp:Button ID="Button10" runat="server" CssClass="btn-warning" OnClick="Button6_Click" Text="Log Out" />
        </div>
   
        <br />
        Dont forget validators in each one</div>
        <div class="alert-secondary">
    <table class="figure-caption">
        <tr>
            <td class="auto-style3">Add a new Major :</td>
            <td class="auto-style2">Enter the Major Name :&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
              <td class="auto-style1">
                  <asp:Button ID="Button2" runat="server" CssClass="btn-primary" width="200" Text="Add" style="margin-left: 42" OnClick="Button2_Click" />
            </td>
            <td>&nbsp</td>
               <td>&nbsp</td>
        </tr>
        <tr><td></td><td></td><td></td></tr>
        <br />
        <tr><td></td><td></td><td></td></tr>
        <tr>
            <td class="auto-style3">Delete a Major&nbsp;&nbsp;&nbsp; :</td>
            <td class="auto-style2">&nbsp;&nbsp;Select From List a Major :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Major" DataValueField="Major" AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Major]"></asp:SqlDataSource>
            </td>
            <td class="auto-style1">
                <asp:Button ID="Button3" runat="server" CssClass="btn-secondary" Text="Delete" OnClientClick="are you sure delete ?" Width="196px" OnClick="Button3_Click" />
            </td>
               <td>&nbsp</td>
               <td>&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>
        <tr><td colspan="3">
            <asp:Label ID="Label1" runat="server" CssClass="active" ForeColor="#993399"></asp:Label>
            &nbsp;</td></tr>
    </table>
            </div>
        <br/>
        <div contenteditable="false" aria-required="False" class="alert-secondary" >
            <h2>Courses</h2>
         <p class="active">
             Add a Course :</p> 
            <div class="alert-secondary">
            <table class="alert-secondary" >
                <tr>
                       
                       <td class="auto-style14">Enter a Course Name&nbsp;:&nbsp;
                </td>
                    <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                       </td>
                    <td class="auto-style4">Code :</td>
                    <td colspan="2">&nbsp;<asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style5"></asp:TextBox>
                    </td>
                       
                       <td>&nbsp&nbsp;&nbsp;</td>
                </tr>
                <tr>
                    <td class="active" colspan="1" style="width: 418px">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style21">Number Of Credits :</td>
                    <td class="auto-style22">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox4" runat="server" CssClass="active"></asp:TextBox>
                    </td>
                    <td class="auto-style23">Major :&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="Major" DataValueField="Major" AutoPostBack="True">
                </asp:DropDownList>
                    </td>
                    <td class="auto-style24">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Button ID="Button4" runat="server" CssClass="btn-primary" width="200" Text="Add" style="margin-left: 42" OnClick="Button4_Click" />
                    </td>
                </tr>
                <tr><td colspan="1" class="auto-style15">
                    Delete a course</td><td class="arrow" colspan="1">
                        </td>
                    <td class="auto-style17">
                        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="CoursesData" DataTextField="Code" DataValueField="Code" AutoPostBack="True">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="CoursesData" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Code] FROM [Courses]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style19">
                <asp:Button ID="delete" runat="server" CssClass="btn-secondary" Text="Delete" Width="196px" OnClick="delete_course" CausesValidation="False" />
                    </td>
                   </tr>
                <tr><td colspan="4">
            <asp:Label ID="Label2" runat="server" CssClass="active" ForeColor="#993399"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td>&nbsp;</td><td>

                        &nbsp;</td></tr>
                <tr><td colspan="4">Choose Major :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource2" DataTextField="Major" DataValueField="Major" AutoPostBack="True">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Major]"></asp:SqlDataSource>
                    </td> <td>

                        <asp:Button ID="Button5" runat="server" CssClass="auto-style20" Text="View Courses" OnClick="Button5_Click" Width="170px" />
                    </td></tr>
            </table>
                <br />
                <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Code" BackColor="#FF66CC" BorderColor="#0033CC" Caption="Courses table content" CaptionAlign="Bottom" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDeleting="GridView1_RowDeleting" HorizontalAlign="Center" ForeColor="#666666"  >
                
                    <Columns>  
                        <asp:BoundField DataField="Code" HeaderText="Course_ID" />  
                        <asp:BoundField DataField="Name" HeaderText="Course_Name" />  
                        <asp:BoundField DataField="Number_Of_Credits" HeaderText="Credits" />  
                        <asp:BoundField DataField="Major" HeaderText="Major" />  
                        <asp:TemplateField HeaderText="Delete" ShowHeader="False">
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" OnClientClick="fconfirm" CausesValidation="False" CommandName="Delete" Text="Delete" />
                            </ItemTemplate>
                        </asp:TemplateField>
                       
                    </Columns>  
                </asp:GridView> 
              <div>  
                <asp:Label ID="lblresult" runat="server"></asp:Label>  
                  <br />
                  <br />
            </div>   
            <div>
                </div>
            <br />
            <div>
            </div>
            <h3>
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </h3>
        </div>
        </div>
    </form>
    </body>
</html>
