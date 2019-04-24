<%@ Control Language="C#" AutoEventWireup="true" CodeFile="remove_product1.ascx.cs" Inherits="remove_product1" %>
<html>
<head>
</head>
<body>
  <form method="post" action="">
					    	<div>
						    	<span><label>Product Id</label></span>
						    	<span><asp:TextBox ID="TextBox1" runat="server" class="sam" ReadOnly></asp:TextBox></span>
						    </div>
					      <div>
						    	<span><label>Product Name</label></span>
						    	<span><asp:TextBox ID="TextBox2" runat="server" class="sam" ReadOnly></asp:TextBox></span>
						    </div>
						    <div>
						     	<span><label>Generic Name</label></span>
						    	<span><asp:TextBox ID="TextBox3" runat="server" class="sam" ReadOnly></asp:TextBox></span>
						    </div>
						    <div>
						    	<span><label>Packing</label></span>
						    	<span><asp:TextBox ID="TextBox4" runat="server" class="sam" ReadOnly></asp:TextBox></span>
						    </div>
                            <div>
						    	<span><label>Unit Price</label></span>
						    	<span><asp:TextBox ID="TextBox5" runat="server" class="sam" ReadOnly></asp:TextBox></span>
						    </div>
                            <div>
						    	<span><label>Image</label></span>
						    	<span> 
                                    <asp:Image ID="Image1" runat="server" Width="300px" Height="150px" /></span>
						    </div>
						   <div>
						   	  <span> 
                                     <asp:Button ID="Button1" runat="server" Text="REMOVE" 
                                   onclick="Button1_Click" /></span>
						   	 
						   </div>   
					    </form>
                        
				
              
		
</body></html>

