<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="sitelogin.aspx.cs" Inherits="_1625578_IbnuAnwari.sitelogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Login
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">

       <div id="content-login">
			  
			  <table>
			  <tr>			  
		  		  
			  <td>
	    	  <div class="login-form">
	    	   <h2><b>Login to your Account</b></h2>
						
               <form class="login-form" name="login-form" method="post" runat="server">
				
				   <asp:Label ID="Label3" runat="server" Text="Username :" name="name" required="required" placeholder="Username"></asp:Label>
                   <br />
                   <br />
                   <asp:TextBox ID="txtLoginEmail" class="login-control" required="required" runat="server" placeholder="Fill your Correct Username..."></asp:TextBox>
				   <br />
				   <br />
				   <asp:Label ID="Label4" runat="server" Text="Password :" name="password" required="required" placeholder="Password"></asp:Label>
                   <br />
                   <br />
                   <asp:TextBox ID="TxtLoginPassword" runat="server" TextMode="Password" type="text" class="login-control" required="required" placeholder="Fill your Correct Password..."></asp:TextBox>
                   <br />
                   <br />
                   <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" Height="40px" Width="149px" />	    
                   <br />
                   <br />
                   <asp:Literal ID="litLoginError" runat="server"></asp:Literal>

				</form>
						
	    	  </div>
			  </td>		
			 
			  </tr>
			  </table>
					
            </div>

</asp:Content>
