<%@ Control Language="C#" AutoEventWireup="true" CodeFile="login.ascx.cs" Inherits="login" %>
<html>
<head>
</head>
<body> 
<form action="login.php" method="post" name="f1">
   <table width="537" align="center">
   <tr>
    <td width="228"></td>
    <td height="2"></td>
    <td width="192"></td>
  </tr>
  <tr>
    <td rowspan="3"><img src="images/login.jpg"></td>
    <td width="101" height="30">Username</td>
    <td><asp:TextBox ID="TextBox1" runat="server" placeholder="username" class="sam" required></asp:TextBox></td>
    <td><asp:Label ID="Label3" runat="server" ForeColor="Red" Text="Enter Username" 
                Visible="False"></asp:Label></td>
  </tr>
 <tr>
 <td>
 <br />
 </td>
     

 </tr>
 
 
   <tr>
    <td width="101" height="30">Password</td>
    <td><asp:TextBox ID="TextBox2" runat="server" placeholder="password" TextMode="Password" class="sam" required></asp:TextBox></td>
    <td><asp:Label ID="Label4" runat="server" ForeColor="Red" Text="Enter Password" 
                Visible="False"></asp:Label></td>
  </tr>
   <tr>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>
        <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
      </td>
  </tr>
 </table>
</form>
</body>

</html>
