<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="sitecontact.aspx.cs" Inherits="_1625578_IbnuAnwari.sitecontact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Contact
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">

            <div id="content-contact">
			  
			  <table>
			  <tr>
			  
			  <td style="width: 653px">
	    	  <div class="contact-form">
	    	   <h2><b>State Any Feedback</b></h2>
						
			   	<form class="contact-form" method="post" runat="server">
				
                    <asp:ValidationSummary ID="Sumarry" runat="server" Width="386px" />

                    <p>
                    <b>E-mail :</b>
                    </p>
                    <p>
                    <asp:TextBox ID="txtEmail" names="Email" runat="server" Width="380px" Height="30px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqEmail" runat="server" ErrorMessage="Email is required" ControlToValidate="txtEmail" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator                
                        ID="ValidEmail" runat="server" ErrorMessage="RegularExpressionValidator" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        ControlToValidate="txtEmail" ForeColor="Red" Display="None">
                    </asp:RegularExpressionValidator>
                    </p>

                    <p>
                    <b>Subject :</b>
                    </p>
                    <p>
                    <asp:TextBox ID="txtSubject" name="Subject" runat="server" Width="382px" Height="30px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqSubject" runat="server" ErrorMessage="Subject is required"  ControlToValidate="txtSubject" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                    </p>

                    <p>
                    <b>Message :</b>
                    </p>
                    <p>
                    <asp:TextBox ID="txtbody" Names="Messages" TextMode="MultiLine" runat="server" Height="141px" Width="379px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqTxt" runat="server" ErrorMessage="Please input your messages" ControlToValidate="txtSubject" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                    </p>

                    <p><asp:Button ID="btnsend" runat="server" Text="Send Messages" OnClick="btnsendemail_Click" Height="45px" Width="219px" /></p>
                    
                    <p><asp:Literal ID="litResult" runat="server"></asp:Literal></p>

			    
				</form>
						
	    	  </div>
			  </td>			  		  
			  
			  <td>
	    	  <div class="googlelocation">
	    	   <h2><b>Google Map Location</b></h2>
							    	  						
                <div id="map">

                <script src="Scripts/map.js"></script>

                <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCE8BGIHTFEHrXRS80EzgwG_rgAJXFSh1E&callback=initMap"></script>

                </div>		

               </div>
						
			  </td>		
			 
			  </tr>

			  </table>

              <table>
              <tr>
               <td>
                   <div id="map-static">
                       <h2>Our Shop Map Location : Static View</h2>
                       <h3>Clothing Shop : Ibnu Anwari, Unit 22, 1st Floor, Citis Square Building, Berakas, Bandar Seri Begawan BB2713.</h3>
                       <div id="map-image">
                       <asp:Image runat="server" ImageUrl="images/masterpage/ibnustaticmap.jpg" height="600" width="1090" />
                       </div>
                   </div>
                </td>
               </tr>
              </table>

					
            </div>
			
</asp:Content>
