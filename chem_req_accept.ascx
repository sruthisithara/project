<%@ Control Language="C#" AutoEventWireup="true" CodeFile="chem_req_accept.ascx.cs" Inherits="chem_req_accept" %>

<html>
<head>
</head>
<body>
  <form method="post" action="">
					    	<div>
						    	<span><label>Allot No</label></span>
						    	<span><asp:TextBox ID="TextBox1" runat="server" class="sam" required></asp:TextBox></span>
						    </div>
					     
						    <div>
						     	<span><label>Allot Date</label></span>
						    	<span><asp:TextBox ID="TextBox3" runat="server" class="sam" placeholder="" required></asp:TextBox></span>
						    </div>
						    <div>
						     	<span><label>Expire Date</label></span>
						    	<span><asp:TextBox ID="TextBox2" runat="server" class="sam" placeholder="" required></asp:TextBox></span>
						    </div>
                            
						   <div>
						   	  <span> 
                                     <asp:Button ID="Button1" runat="server" Text="ok" 
                                   onclick="Button1_Click" /></span>
						   	 
						   </div>   
					    </form>
                        
				
              
		
</body></html>


