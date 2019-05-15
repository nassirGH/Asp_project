<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateGrades.aspx.cs" Inherits="Draft1.UpdateGrades" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Bootstrap/CSS/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 484px;
        }
        .auto-style2 {
            width: 174px;
        }
        .auto-style3 {
            width: 209px;
        }
        .auto-style4 {
            width: 209px;
            height: 35px;
        }
        .auto-style5 {
            height: 35px;
        }
        .auto-style6 {
            width: 174px;
            height: 35px;
        }
        .auto-style7 {
            width: 484px;
            height: 35px;
        }
        .alignbut{
            text-align:right;
                      }
    </style>
</head>
<body>
    <form id="form1" class="alert-warning" runat="server">
        <asp:Button ID="Button6" runat="server" CssClass="btn-warning" Text="Courses" Width="231px" ForeColor="White" OnClick="Button6_Click" />
        <asp:Button ID="Button7" runat="server" CssClass="btn-warning" OnClick="Button7_Click" Text="Manage Grades" Width="246px" ForeColor="White" />
        <div class="alignbut">
    
        
            <asp:Button ID="Button9" runat="server" CssClass="alert-danger" OnClick="Button9_Click" Text="Log Out" />
        </div>
    <table class="figure-caption">
        <tr><td></td></tr>
        <tr><td class="auto-style4" colspan="4"></td></tr>
          <tr><td>your Major :</td>
              <td>
                  <asp:Label ID="Label3" runat="server" CssClass="alert-primary"></asp:Label>
              </td>
              <td></td>
              <td></td>
          </tr>
         <tr><td class="auto-style4" colspan="4"></td></tr>
        <tr>
            
            <td class="auto-style3">your&nbsp; Course&nbsp;&nbsp;&nbsp; :</td>
            <td class="auto-style2">
                <asp:Label ID="Label4" runat="server" CssClass="alert-warning"></asp:Label>
            </td>
              <td class="auto-style1">
                  &nbsp;&nbsp;
                  </td>
            <td>
                &nbsp;</td>
               <td>&nbsp;</td>
        </tr>
        <tr><td class="auto-style4"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style4">Select student ID :</td>
            <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="ID" DataValueField="ID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ID] FROM [Registered_Courses] WHERE ([Code] = @Code)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label4" Name="Code" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="auto-style7">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Enter the Grade :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
               <td class="auto-style5">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
               <td class="auto-style5">&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>
           <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="auto-style1">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Enter the secret key :&nbsp;&nbsp;&nbsp;&nbsp;</td>
               <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
               <td>&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>
        <tr><td colspan="3">
                <asp:Label ID="Label1" runat="server" ForeColor="#9900CC"></asp:Label>
                </td>
            <td>
                  <asp:Button ID="Button2" runat="server" CssClass="btn-primary"  onclientclick="return confirm('are you sure to add this grade?');" width="200" Text="Add" style="margin-left: 42" OnClick="Button2_Click" />
           </td>
           
          <td>  &nbsp;</td></tr>
    </table>
    
        <br />

          <h3>Update Grade :</h3>
 <table class="figure-caption">
        <tr><td class="auto-style3">Add a new Major :</td>
            <td>
                <asp:Label ID="Label6" runat="server" CssClass="alert-success"></asp:Label>
            </td>
        </tr>
        <tr>
            
            <td class="auto-style3">Select a Course&nbsp;&nbsp;&nbsp; :</td>
            <td class="auto-style2">
                <asp:Label ID="Label7" runat="server" CssClass="alert-danger"></asp:Label>
            </td>
              <td class="auto-style1">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  </td>
            <td>
                &nbsp;</td>
               <td>&nbsp;</td>
        </tr>
        <tr><td class="auto-style4"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style4">Select student ID :</td>
            <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="ID" DataValueField="ID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ID] FROM [Registered_Courses] WHERE ([Code] = @Code)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label7" Name="Code" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="auto-style7">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Enter the Grade :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
               <td class="auto-style5">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
               <td class="auto-style5">&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>
           <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="auto-style1">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
               <td>&nbsp;</td>
               <td>&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>
        <tr><td colspan="3">
                <asp:Label ID="Label2" runat="server" ForeColor="#9900CC"></asp:Label>
                </td>
            <td>
                  <asp:Button ID="Button1" runat="server" OnClientClick="return confirm('are you sure to update this grade?')="  CssClass="btn-secondary" width="200" Text="Update" style="margin-left: 42" OnClick="Button1_Click" />
           </td>
           
          <td>  &nbsp;</td></tr>
    </table>
    
      

        Your Course :
        <asp:Label ID="Label5" runat="server" CssClass="alert-warning"></asp:Label>
        <br />
    
      

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="StudentID,CourseID" DataSourceID="Grades" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Caption="Grades of all Students in the selected course" CaptionAlign="Bottom">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="StudentID" HeaderText="StudentID" ReadOnly="True" SortExpression="StudentID" />
                <asp:BoundField DataField="CourseID" HeaderText="CourseID" ReadOnly="True" SortExpression="CourseID" />
                <asp:BoundField DataField="Mark" HeaderText="Mark" SortExpression="Mark" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="Grades" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Mark], [StudentID], [CourseID] FROM [Grades] WHERE ([CourseID] = @CourseID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label5" Name="CourseID" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
      

    </form>
</body>
</html>
