﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="add_distributor.ascx.cs" Inherits="add_distributor" %>

<html>
<head>
</head>
<body>
  <form method="post" action="">
					    	<div>
						    	<span><label>Area Code</label></span>
						    	<span><asp:TextBox ID="TextBox1" runat="server" class="sam" required></asp:TextBox></span>
						    </div>
					      <div>
						    	<span><label>District</label></span>
						    	<span><asp:TextBox ID="TextBox2" runat="server" class="sam" placeholder="" required></asp:TextBox></span>
						    </div>
						    <div>
						     	<span><label>Name</label></span>
						    	<span><asp:TextBox ID="TextBox3" runat="server" class="sam" placeholder="" required></asp:TextBox></span>
						    </div>
						    <div>
						    	<span><label>Address</label></span>
						    	<span><asp:TextBox ID="TextBox4" runat="server" class="sam" placeholder="" height="50px" required></asp:TextBox></span>
						    </div>
                            <div>
						    	<span><label>Phone</label></span>
						    	<span><asp:TextBox ID="TextBox5" runat="server" class="sam" placeholder="" required></asp:TextBox></span>
						    </div>
                            <div>
						    	<span><label>Email</label></span>
						    	<span><asp:TextBox ID="TextBox6" runat="server" class="sam" placeholder="" required></asp:TextBox></span>
						    </div>
                            <div>
						    	<span><label>Office Address</label></span>
						    	<span><asp:TextBox ID="TextBox7" runat="server" class="sam" placeholder="" height="50px" required></asp:TextBox></span>
						    </div>
						   <div>
						   	  <span> 
                                     <asp:Button ID="Button1" runat="server" Text="ADD" 
                                   onclick="Button1_Click" /></span>
						   	 
						   </div>   
					    </form>
                        
				
              
		
</body></html>

