<%@ Control Language="C#" AutoEventWireup="true" CodeFile="add_product.ascx.cs" Inherits="add_product" %>
<html>
<head>
</head>
<body>
  <form method="post" action="">
					    	<div>
						    	<span><label>Product Id</label></span>
						    	<span><asp:TextBox ID="TextBox1" runat="server" class="sam" required></asp:TextBox></span>
						    </div>
					      <div>
						    	<span><label>Product Name</label></span>
						    	<span><asp:TextBox ID="TextBox2" runat="server" class="sam" placeholder="" required></asp:TextBox></span>
						    </div>
						    <div>
						     	<span><label>Generic Name</label></span>
						    	<span><asp:TextBox ID="TextBox3" runat="server" class="sam" placeholder="" required></asp:TextBox></span>
						    </div>
						    <div>
						    	<span><label>Packing</label></span>
						    	<span><asp:TextBox ID="TextBox4" runat="server" class="sam" placeholder="" required></asp:TextBox></span>
						    </div>
                            <div>
						    	<span><label>Unit Price</label></span>
						    	<span><asp:TextBox ID="TextBox5" runat="server" class="sam" placeholder="" required></asp:TextBox></span>
						    </div>
                            <div>
						    	<span><label>Image</label></span>
						    	<span> 
                                    <asp:FileUpload ID="FileUpload1" runat="server" /> </span>
						    </div>
						   <div>
						   	  <span> 
                                     <asp:Button ID="Button1" runat="server" Text="Button" 
                                   onclick="Button1_Click" /></span>
						   	 
						   </div>   
					    </form>
                        
				
              
		
</body></html>
