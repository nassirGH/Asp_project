<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formlog.aspx.cs" Inherits="Draft1.formlog" %>
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>login screen</title>
  
  
  <script src="Bootstrap/CSS/index.js"></script>
     <link href="Bootstrap/CSS/style.css" rel="stylesheet" />

  
</head>

<body>

  <div class="wrapper">
	<div class="container">
		<h1>Welcome</h1>
		
		<form class="form" runat="server">
			<asp:TextBox ID="TextBox1" runat="server"  placeholder="Username" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server"    placeholder="Password" TextMode="Password"></asp:TextBox>
			
			<asp:Button ID="Button1" runat="server" Text="Login" Width="265px" OnClick="Button1_Click" />
		    </form>
	</div>
	
	<ul class="bg-bubbles">
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
	</ul>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

  

    <script  src="js/index.js"></script>




</body>

</html>
