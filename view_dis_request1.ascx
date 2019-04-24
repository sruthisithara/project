<%@ Control Language="C#" AutoEventWireup="true" CodeFile="view_dis_request1.ascx.cs" Inherits="view_dis_request1" %>

<html>
<head>
</head>
<body>
  <form method="post" action="">
					    	<div>
						    	<span><label>Request No</label></span>
						    	<span><asp:TextBox ID="TextBox1" runat="server" class="sam" ReadOnly></asp:TextBox></span>
						    </div>
					      <div>
						    	<span><label>Area Code</label></span>
						    	<span><asp:TextBox ID="TextBox2" runat="server" class="sam" ReadOnly></asp:TextBox></span>
						    </div>
						    <div>
						     	<span><label>Product Code</label></span>
						    	<span><asp:TextBox ID="TextBox3" runat="server" class="sam" ReadOnly></asp:TextBox></span>
						    </div>
						    <div>
						    	<span><label>Unit Price</label></span>
						    	<span><asp:TextBox ID="TextBox4" runat="server" class="sam" ReadOnly></asp:TextBox></span>
						    </div>
                            <div>
						    	<span><label>Quantity</label></span>
						    	<span><asp:TextBox ID="TextBox5" runat="server" class="sam" ReadOnly></asp:TextBox></span>
						    </div>
                             <div>
						    	<span><label>Amount</label></span>
						    	<span><asp:TextBox ID="TextBox6" runat="server" class="sam" ReadOnly></asp:TextBox></span>
						    </div>
                             <div>
						    	<span><label>Request Date</label></span>
						    	<span><asp:TextBox ID="TextBox7" runat="server" class="sam" ReadOnly></asp:TextBox></span>
						    </div>
                            
                            
						   <div>
						   	  <span> 
                                     <asp:Button ID="Button1" runat="server" Text="accept" 
                                   onclick="Button1_Click" /></span>
						   	 
						   </div>   
                              
					    </form>
                        
				
              
		
</body></html>


