<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="siteregister.aspx.cs" Inherits="_1625578_IbnuAnwari.siteregister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Register
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">

       <div id="content-register">
			  
			  <table>
			  <tr>
			  
			  <td>		  
	    	  <div class="register-form">
	    	   <h2><b>Register For New Account</b></h2>
						
		        <form class="register-form" name="register-form" method="post" runat="server" style="width: 411px; height: 287px;">
				
			       <asp:Label ID="Label1" runat="server" Text="Username :" name="name" required="required" placeholder="Name"></asp:Label>
                    <br />
                    <br />
                   <asp:TextBox ID="txtregEmail" class="register-control" required="required" runat="server" placeholder="State your Username..." Width="400px" Height="40px"></asp:TextBox>
				
			        <br />
				
			        <br />
				
			       <asp:Label ID="Label2" runat="server" Text="Password :" name="password" required="required" placeholder="Password"></asp:Label>
                    <br />
                    <br />
                   <asp:TextBox ID="TxtRegPassword" runat="server" TextMode="Password" type="text" class="register-control" required="required" placeholder="State your Password..." Width="400px" Height="40px"></asp:TextBox>
	
                    <br />
	
                    <br />
	
                    <asp:Button ID="btnReg" runat="server" Text="Register" OnClick="btnReg_Click" Width="150px" Height="41px"/>

                    <br />

                    <br />

                    <asp:Literal ID="litRegisterError" runat="server"></asp:Literal>			    
              
				</form>
                  						
	    	  </div>
			  </td>			  		  
					 
			  </tr>
			  </table>
					
            </div>

</asp:Content>
