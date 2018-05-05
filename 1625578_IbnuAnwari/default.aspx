
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="_1625578_IbnuAnwari._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Home
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
     <form id="form1" runat="server">

     <table>
        <tr>
            <td>
	        <div class="slideshowbanner">
            <script src="banner/responsiveslides/slideshowbanner.js"></script>
            <div class="rslides_container ">
              <ul class="rslides" id="slider1">
                <li><asp:Image runat="server" ImageUrl="banner/h1.jpg"  /></li>
                <li><asp:Image runat="server" ImageUrl="banner/h2.jpg"  /></li>
                <li><asp:Image runat="server" ImageUrl="banner/h3.jpg"  /></li>
              </ul>
            </div>
	        </div>
            </td>
        </tr>

        <tr>
            <td>
               <br /><br />

	           <div class="repeater">
 
                <h2>Healthy Product Collection</h2>
                <asp:Repeater ID="Repeaterlist0" runat="server" DataSourceID="SqlDataSource1">
                   <HeaderTemplate>
                    <table><tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <td>
                            <a href="<%#Eval("ProductsId", "siteproductdetail.aspx?ProductsId={0}") %>">
                            <asp:Image ID="productImage" runat="server" ImageURL='<%#string.Format("images/products/{0}.jpg", Eval("ProductsId"))%>' width="234" height="200"  /></a>
                        <br>
                        </br>
                            <a href="<%#Eval("ProductsId", "siteproductdetail.aspx?ProductsId={0}") %>"><%#Eval ("ProductsName")%></a>
                        <br>
                        </br>
                            <a><%#Eval ("ProductsType") %></a> 
                        <br> 
                        </br>                         
                            <a>$<%#Eval ("ProductsPrice") %></a></td>
                    </ItemTemplate>
                    <FooterTemplate>
                    </tr></table>
                    </FooterTemplate>
                  </asp:Repeater>

	               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1625578_co5027_asgConnectionString %>" 
                       SelectCommand="SELECT TOP 5 * FROM [Products] WHERE ProductsType = 'Organic' AND ProductsQuantity &gt;= 1 ORDER BY ProductsId DESC"></asp:SqlDataSource>

	           </div>
            </td>
        </tr>

        <tr>
            <td>
	        <div class="repeater">

                <h2>Penwak Product Collection</h2>
                <asp:Repeater ID="Repeaterlist02" runat="server" DataSourceID="SqlDataSource2">

                    <HeaderTemplate>
                    <table><tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <td>
                            <a href="<%#Eval("ProductsId", "siteproductdetail.aspx?ProductsId={0}") %>">
                            <asp:Image ID="productImage" runat="server" ImageURL='<%#string.Format("images/products/{0}.jpg", Eval("ProductsId"))%>' width="234" height="200"  /></a>
                            <br>
                            </br>
                            <a href="<%#Eval("ProductsId", "siteproductdetail.aspx?ProductsId={0}") %>"><%#Eval ("ProductsName")%></a>
                            <br>
                            </br>
                            <a><%#Eval ("ProductsType") %></a>  
                            <br>  
                            </br>                        
                            <a>$<%#Eval ("ProductsPrice") %></a></td>
                    </ItemTemplate>
                    <FooterTemplate>
                    </tr></table>
                    </FooterTemplate>

                </asp:Repeater>
	            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db_1625578_co5027_asgConnectionString %>" SelectCommand="SELECT TOP 5 * FROM [Products] WHERE ProductsType = 'Tradisional' AND ProductsQuantity &gt;= 1 ORDER BY ProductsId DESC"></asp:SqlDataSource>
	        </div>
            </td>
        </tr>

        <tr>
            <td>
	        <div class="repeater">

                <h2>Other Recently Available Collection</h2>
                <asp:Repeater ID="Repeaterlist03" runat="server" DataSourceID="SqlDataSource3">

                    <HeaderTemplate>
                    <table><tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <td>
                            <a href="<%#Eval("ProductsId", "siteproductdetail.aspx?ProductsId={0}") %>">
                            <asp:Image ID="productImage" runat="server" ImageURL='<%#string.Format("images/products/{0}.jpg", Eval("ProductsId"))%>' width="234" height="200"/></a>
                            <br>
                            </br>
                            <a href="<%#Eval("ProductsId", "siteproductdetail.aspx?ProductsId={0}") %>"><%#Eval ("ProductsName")%></a>
                            <br>
                            </br>
                            <a><%#Eval ("ProductsType") %></a>
                            <br>
                            </br>                        
                            <a>$<%#Eval ("ProductsPrice") %></a></td>
                    </ItemTemplate>
                    <FooterTemplate>
                    </tr></table>
                    </FooterTemplate>

                </asp:Repeater>
	            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:db_1625578_co5027_asgConnectionString %>" SelectCommand="SELECT TOP 5 * FROM [Products] WHERE ProductsQuantity &gt;= 1 ORDER BY ProductsId DESC"></asp:SqlDataSource>
	        </div>
            </td>
        </tr>

    </table>

     </form>
</asp:Content>
