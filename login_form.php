<?php
include("login_header.html");
?>
<head>
 <script type="text/javascript">
   function validate()
	{					
       if(f1.usr.value=="")
		{
		 alert('Enter the username');
	     f1.usr.focus();

		 return false;
		}
	   if(f1.pass.value=="")
		{
		 alert('Enter your password');
		 f1.pass.focus();

		 return false;
		}
       if(f1.pass.value.length<4)
        {
         alert("password should be atleast 4...");
   		 f1.pass.focus();
		 
         return false;
        }
      return true;
    }
  </script>
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
    <td><input name="usr" type="text" placeholder="Username"></td>
  </tr>
   <tr>
    <td width="101" height="30">Password</td>
    <td><input name="pass" type="password" placeholder="Password"></td>
  </tr>
   <tr>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><input name="submit" type="submit" value="LOGIN" onClick='return validate();' width="400"></td>
  </tr>
 </table>
</form>
</body>
<?php
  include("login_footer.html");
?>                   

