<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Course Registration.aspx.cs" Inherits="Draft1.Course_Registration" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Bootstrap/Scripts/jquery-1.9.1.min.js"></script>
    <script src="Bootstrap/Scripts/jquery-1.9.1.js"></script>
    <link href="Bootstrap/CSS/bootstrap.min.css" rel="stylesheet" />
   <script>
       function fnconfirm() {
           if (confirm("are you sure to drop this course ?") == true) {
               return true;
           } else {
               return false;
           }
       }
   </script>
    <style type="text/css">
        .auto-style1 {
            width: 14px;
        }
        .auto-style3 {
            height: 94px;
        }
        .auto-style4 {
            height: 94px;
            width: 215px;
        }
        .auto-style6 {
            height: 94px;
            width: 263px;
        }
        .auto-style9 {
            width: 360px;
        }
        .auto-style10 {
            width: 428px;
        }
        .auto-style11 {
            width: 430px;
        }
        .auto-style12 {
            width: 490px;
        }
        .auto-style13 {
            width: 1136px;
        }
        .auto-style14 {
            width: 12px;
        }
        .align{
            text-align:center;
        }
         .alignbut{
            text-align:right;
        }
        .auto-style15 {
            text-align: center;
            width: 1199px;
        }
    </style>
   
    </head>
<body>
    <form id="form1" runat="server">
        <div class="alert-dark">
    <div>
    
        <div>
            <asp:Button ID="Button1" runat="server" BorderStyle="Groove" ClientIDMode="Predictable" CssClass="btn-info" Font-Italic="True" OnClick="Button1_Click" Text="Grades" Width="233px" />
            <asp:Button ID="Button3" runat="server" ClientIDMode="Predictable" CssClass="btn-info focus" Font-Bold="False" Font-Italic="True" OnClick="Button2_Click1" Text="Course Registration" Width="233px" /></div>
      <div class="alignbut"> <asp:Button ID="Button6" runat="server" CssClass="btn-danger"  OnClick="Button6_Click" Text="Log Out" /></div>
        
                   <br />
            <br />
            <br />
              <div class="auto-style15">
            <p class="alert-primary">

              <asp:Label ID="Label6" runat="server" ></asp:Label> </p></div>
                
           
            <br />
            <br />
            <br />
        </div>
    
   
      <h2> 
           Course Registeration  :
          </h2>


            Major :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <asp:Label ID="Label5" runat="server" CssClass="alert-success" Font-Size="Large"></asp:Label>
            <br />
            <br />
                        <br />
            <br />
             <table class="auto-style4">
                <tr>
                    <td class="auto-style3">&nbsp;Select&nbsp;a Course : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h3> &nbsp;</h3></td>
                    
                 
                    <td class="auto-style3" colspan="1">
                        &nbsp;</td>
                   
                    <td class="auto-style6">
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Code" DataValueField="Code" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" CssClass="alert-success">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Code] FROM [Courses] WHERE ([Major] = @Major)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="Label5" Name="Major" PropertyName="Text" Type="String" />
                            </SelectParameters>
                          
                        </asp:SqlDataSource>
                        </td>
                   <td class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Credits:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style9">
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        <asp:Label ID="Label8" runat="server" ForeColor="Red" Font-Bold="True" Font-Italic="True" Font-Size="Large" CssClass="alert-danger"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        &nbsp;</td>
                    <td class="auto-style13">
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10" colspan="2">&nbsp;</td>
                    <td class="auto-style11">Course Name :</td>
                    <td class="auto-style9">
                        <asp:Label ID="Label9" runat="server" ForeColor="#6600CC" CssClass="alert-info" Font-Bold="True" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="auto-style13">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;</td>
                    <td>&nbsp;&nbsp;&nbsp; <asp:Button ID="Button2" runat="server" CssClass="btn-primary" width="200" Text="Add" style="margin-left: 42" OnClick="Button2_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" colspan="2">
                        &nbsp;</td>
                    <td colspan="2">
                        &nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td class="auto-style13">
                        &nbsp;</td>
            
                    <td>
                        <asp:Label ID="Label10" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr><td colspan="2">&nbsp;</td>
                    <td></td>
                    <td class="auto-style14">Total sum of credits :</td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label12" runat="server" CssClass="alert" Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>
                        </td>
                       <td class="auto-style9">
            <br />
                    </td>
                    <td class="auto-style13">
                        &nbsp;</td>
                    </tr>
                 </table>
            <asp:GridView ID="GridView1"  runat="server" AutoGenerateColumns="False" DataKeyNames="Code" BackColor="White" BorderColor="#CCCCCC" Caption="Courses table content" CaptionAlign="Bottom" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDeleting="GridView1_RowDeleting" BorderStyle="Ridge" BorderWidth="1px" CellPadding="3" HorizontalAlign="Center"  >
                 
                    <Columns>
                         <asp:BoundField DataField="Code" HeaderText="Course ID" />  
                       <asp:BoundField DataField="C_Number" HeaderText="Credits" />  
                         <asp:TemplateField HeaderText="Drop">
                             <ItemTemplate>
                                 <asp:Button ID="Button1" OnClientClick="return fnconfirm();" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                             </ItemTemplate>
                         </asp:TemplateField>
                       
                    </Columns>
                 
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView> 
            <br />
                    <br />
                    <br />
                        <asp:Label ID="Label4" runat="server" Visible="False"></asp:Label>

            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Code] FROM [Registered_Courses] WHERE ([ID] = @ID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Label4" Name="ID" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
          
        </div>
        <div>
              <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Major], [Code] FROM [Registered_Courses] WHERE ([ID] = @ID)">
                  <SelectParameters>
                      <asp:ControlParameter ControlID="Label4" Name="ID" PropertyName="Text" Type="Int32" />
                  </SelectParameters>
            </asp:SqlDataSource>
            <asp:Label ID="lblID" runat="server" ForeColor="Red"></asp:Label>
        </div>
        
    </form>
</body>
</html>
