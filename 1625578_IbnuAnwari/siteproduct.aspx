<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="siteproduct.aspx.cs" Inherits="_1625578_IbnuAnwari.siteproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Product
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">

   <form id="form1" runat="server">

    <div class="productbox">


        <table>
        <tr>
        <td>
            <table>
                <tr>
                <td>
                    <h2>Available Ibnu Product in Online Stores:</h2>
                </td>
                <td style="padding-left:290px;">
                    <asp:TextBox ID="searchtext" runat="server" Width="320px"></asp:TextBox>
                    <asp:Button ID="searchproduct" runat="server" Text="Search Product" OnClick="searchproduct_Click" Width="137px"/>
                </td>
                </tr>
            </table>
        </td>
        </tr>

        <tr>
        <td>
        <div class="repeater">
        <asp:Repeater ID="RepeaterSearch" runat="server" DataSourceID="SqlDataSource3">
              <HeaderTemplate>
                 <table><tr>
                  </HeaderTemplate>
                   <ItemTemplate>
                            <td>
                                <div class="searchbox">
                                  <p><asp:Image ID="productImage" runat="server" ImageURL='<%#string.Format("images/products/{0}.jpg", Eval("ProductsId"))%>' width="20" height="15" /></a> 
                                     <a href="<%#Eval("ProductsId", "siteproductdetail.aspx?ProductsId={0}") %>"><%#Eval ("ProductsName")%></a>  |</p>
                                </div>
                            </td>
                     </ItemTemplate>
                    <FooterTemplate>
                  </tr></table>
              </FooterTemplate>
         </asp:Repeater>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:db_1625578_co5027_asgConnectionString %>" SelectCommand="SELECT * FROM [Products] WHERE ([ProductsName] LIKE '%' + @ProductsName + '%')">
                <SelectParameters>
                    <asp:QueryStringParameter Name="ProductsName" QueryStringField="searchproduct" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
      </div>
      </td>
      </tr>

      <tr><td><div class="backline"><hr></div></td></tr>

        <tr>
        <td>
        <div class="repeater">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
              <HeaderTemplate>
                 <table><tr>
                  </HeaderTemplate>
                   <ItemTemplate>
                            <td style="padding-top:5px; padding-bottom:5px;">
                                <a href="<%#Eval("ProductsId", "siteproductdetail.aspx?ProductsId={0}") %>">
                                <asp:Image ID="productImage" runat="server" ImageURL='<%#string.Format("images/products/{0}.jpg", Eval("ProductsId"))%>' width="234" height="200" /></a>
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

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1625578_co5027_asgConnectionString %>" SelectCommand="SELECT TOP 5 * FROM [Products] WHERE ProductsType = 'Organic' AND ProductsQuantity &gt; 0 ORDER BY ProductsId DESC"></asp:SqlDataSource>
      </div>
      </td>
      </tr>

      <tr><td><div class="backline"><hr></div></td></tr>

      <tr>
      <td>
          <div class="repeater">
          <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
              <HeaderTemplate>
                 <table><tr>
                  </HeaderTemplate>
                   <ItemTemplate>
                            <td style="padding-top:5px; padding-bottom:5px;">
                                <a href="<%#Eval("ProductsId", "siteproductdetail.aspx?ProductsId={0}") %>">
                                <asp:Image ID="productImage" runat="server" ImageURL='<%#string.Format("images/products/{0}.jpg", Eval("ProductsId"))%>' width="234" height="200" /></a>
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
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db_1625578_co5027_asgConnectionString %>" SelectCommand="SELECT TOP 5 * FROM [Products] WHERE ProductsType = 'Tradisional' AND ProductsQuantity &gt; 0 ORDER BY ProductsId DESC"></asp:SqlDataSource>
          </div>
      </td>
      </tr>

      <tr><td><div class="backline"><hr></div></td></tr>

      <tr>
         <td>
         <div class="repeater">
          <asp:Repeater ID="Repeater3" runat="server" DataSourceID="SqlDataSource4">
              <HeaderTemplate>
                 <table><tr>
                  </HeaderTemplate>
                   <ItemTemplate>
                            <td style="padding-top:5px; padding-bottom:5px;">
                                <a href="<%#Eval("ProductsId", "siteproductdetail.aspx?ProductsId={0}") %>">
                                <asp:Image ID="productImage" runat="server" ImageURL='<%#string.Format("images/products/{0}.jpg", Eval("ProductsId"))%>' width="234" height="200" /></a>
                            <br>
                            </br>
                                <a href="<%#Eval("ProductsId", "siteproductdetail.aspx?ProductsId={0}") %>"><%#Eval ("ProductsName")%></a>
                            <br>
                            </br>
                                <a><%#Eval ("ProductsType") %></a> 
                            <br> 
                            </br>                         
                                <a>$<%#Eval ("ProductsPrice") %></a>
                            </td>
                     </ItemTemplate>
                    <FooterTemplate>
                  </tr></table>
              </FooterTemplate>
            </asp:Repeater>
             <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:db_1625578_co5027_asgConnectionString %>" SelectCommand="SELECT TOP 5 * FROM [Products]"></asp:SqlDataSource>
           </div>
         </td>
     </tr>

      </table>
      </div>
    </form>
</asp:Content>
