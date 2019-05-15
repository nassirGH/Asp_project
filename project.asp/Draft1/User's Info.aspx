<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User's Info.aspx.cs" Inherits="Draft1.User_s_Info" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Bootstrap/CSS/bootstrap.min.css" rel="stylesheet" />
    <script src="Bootstrap/Scripts/jquery-1.9.1.js"></script>
    <script src="Bootstrap/Scripts/jquery-1.9.1.min.js"></script>
    <script src="Bootstrap/Scripts/jquery-1.9.1.intellisense.js"></script>
    <style type="text/css">
        .auto-style2 {
            width: 434px;
            direction: ltr;
        }
        .auto-style3 {
            width: 226px;
            direction: ltr;
        }
        .auto-style4 {
            color: #fff;
            background-color: #343a40;
            border-color: #343a40;
            margin-left: 0;
            font-size: 12pt;
        }
        .auto-style5 {
            width: 226px;
            height: 34px;
        }
        .auto-style6 {
            width: 434px;
            height: 34px;
        }
        .auto-style7 {
            height: 34px;
            direction: ltr;
        }
        .auto-style8 {
            direction: ltr;
        }
        .auto-style10 {
            width: 434px;
            height: 34px;
            direction: ltr;
        }
        .auto-style11 {
            width: 226px;
            height: 34px;
            direction: ltr;
            }
        .auto-style12 {
            color: #383d41;
            background-color: #e2e3e5;
            border-color: #d6d8db;
            direction: ltr;
        }
        .auto-style13 {
            width: 226px;
            direction: ltr;
            font-size: smaller;
        }
        .auto-style14 {
            color: #212529;
            background-color: #ffc107;
            border-color: #ffc107;
            font-size: 12pt;
        }
        .auto-style15 {
            font-size: medium;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
      
        <asp:Button ID="Button1" runat="server" BorderStyle="Inset" ClientIDMode="Predictable" CssClass="btn-danger" Text="Major &amp; Courses" OnClick="Button1_Click" />
   
    
        <asp:Button ID="Button10" runat="server" BorderStyle="Inset" ClientIDMode="Predictable" CssClass="btn-danger" Text="User's Information" OnClick="Button8_Click" Width="293px" />
   
    
<div class="auto-style12">
                Add a new Student :
     <br />
</div>
           
            <div class="alert-secondary">
                <table style="width:100%;" class="form-control">
                    <tr>
                        <td class="auto-style7">Enter the First Name :</td>
                        <td class="arrow">
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </td>

                        <td class="auto-style10">Enter the Last Name :</td>
                            <td>
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                            <td class="auto-style8">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style8">Enter ID Number :</td>
                        <td class="auto-style10">
                            <asp:TextBox ID="TextBox7" runat="server" TextMode="Number"></asp:TextBox>
                        </td>
                        <td class="auto-style8">Select Major :</td>
                            <td>
                                <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="Majors" DataTextField="Major" DataValueField="Major">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Majors" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Major]"></asp:SqlDataSource>
                        </td>
                    </tr>
                       <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style7">
                            <asp:Label ID="Label9" runat="server" CssClass="alert-success" Text="example : 88888"></asp:Label>
                           </td>
                        <td class="auto-style8">&nbsp;</td>
                            <td class="auto-style8">&nbsp;</td>
                    </tr>
                       <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style10">
                           </td>
                        <td class="auto-style8">&nbsp;</td>
                            <td>
                  <asp:Button ID="Button6" runat="server" CssClass="btn-primary" width="200" Text="Register" style="margin-left: 42" OnClick="Register_btn" />
                           </td>
                    </tr>
                </table>
           
            <h3 class="auto-style8">
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </h3>
            <div class="auto-style8">
                Add a new Teacher :<br />
            </div>
               <div>
                <table style="width:100%;" class="form-control">
                    <tr>
                        <td class="auto-style7">Enter the First Name :</td>
                        <td class="arrow">
                            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                        </td>

                        <td class="auto-style10">Enter the Last Name :</td>
                            <td>
                            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style10">
                           </td>
                        <td class="auto-style8">&nbsp;</td>
                            <td>
                           </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">Enter an Email :</td>
                        <td class="auto-style10">
                            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style8">Create a password :</td>
                            <td>
                            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                           <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style10">
                               </td>
                        <td class="auto-style8">&nbsp;</td>
                            <td>
                                
                               </td>
                    </tr>
                       <tr>
                        <td class="auto-style10">Select a Course :</td>
                        <td class="auto-style12">
                            <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Code" DataValueField="Code">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Code] FROM [Courses] WHERE ([Major] = @Major)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList6" Name="Major" PropertyName="SelectedValue" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                           </td>
                        <td class="auto-style2">Select Major :</td>
                            <td class="auto-style13">
                                <asp:DropDownList ID="DropDownList6" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Major" DataValueField="Major">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Major]"></asp:SqlDataSource>
                           </td>
                    </tr>
                       <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style7">&nbsp;</td>
                        <td aria-sort="none" class="auto-style8">&nbsp;</td>
                            <td class="auto-style8">
                                &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                        </td>
                        <td class="auto-style8">###show only the unassigned courses</td>
                            <td class="auto-style8">&nbsp;</td>
                         <td>
                  <asp:Button ID="Button7" runat="server" CssClass="btn-danger" width="200" Text="Submit" style="margin-left: 42" OnClick="Submit" />
                           </td>
                    </tr>
                </table>
            </div>
            <h3 class="auto-style8">
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </h3>
            <h3 class="auto-style8">&nbsp;</h3>
            <h3 class="auto-style8">Delete a User :</h3>
                <table  class="form-control">
                <tr>
                    <td class="auto-style3">Enter Student&#39;s ID :</td>
                    <td class="auto-style2">
                        &nbsp;&nbsp;
                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button8" runat="server" CssClass="auto-style4" OnClick="Button8_Click" Text="Delete" Width="203px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style8">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label8" runat="server" Font-Size="Small" Text="       Delete Student Data&nbsp;" CssClass="auto-style15"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">Enter a Teacher ID :</td>
                    <td class="auto-style10">&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button9" runat="server" CssClass="auto-style14" OnClick="Button9_Click" Text="Delete " Width="203px" />
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style5">
                        <asp:Label ID="Label7" runat="server" Font-Size="Small" Text="       Delete Teacher Data&nbsp;" CssClass="alert-warning"></asp:Label>
                     </td>
                </tr>
                </table>
               
                <p class="auto-style8">
                        <asp:Label ID="Label5" runat="server" ForeColor="#23A029"></asp:Label>
                    </p>
       
    </div>
    </form>
</body>
</html>
