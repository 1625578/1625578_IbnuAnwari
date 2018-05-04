<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="siteshoppingcart.aspx.cs" Inherits="_1625578_IbnuAnwari.siteshoppingcart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Shopping Cart
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">

    <form runat="server">
     <table>
       <tr>
          <td><h2>Product Detail &gt; Shopping Cart</h2></td>
       </tr>

       <tr>
        <td>
        <asp:Image ID="productImage" runat="server" style="width:680px; height:450px;" />
        </td>

        <td>________</td>

        <td>
            <table>
               <tr>
               <td>
                  <p>
                    <b>Product ID:</b><br />
                    <asp:Label ID="ProductsIdLabel" runat="server" Text='<%# Eval ("ProductsId") %>' />
                  </p>
                  <p>
                    <b>Type:</b><br />
                   <asp:Label ID="ProductsNameLabel" runat="server" Text='<%# Bind("ProductsType") %>' />
                  </p>
                  <p>
                    <b>Name:</b><br />
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("ProductsName") %>' />
                  </p>
                  <p>
                    <b>Description:</b><br />
                    <asp:Label ID="ProductsDescriptionLabel" runat="server" Text='<%# Bind("ProductsDescription") %>' />
                  </p>
                  <p>
                    <b>Price:</b><br />
                    <asp:Label ID="ProductsPriceLabel" runat="server" Text='<%# Bind("ProductsPrice") %>' />
                  </p>
                  <p>
                    <b>Available Quantity</b><br />
                    <asp:Label ID="ProductsQuantityLabel" runat="server" Text='<%# Bind("ProductsQuantity") %>' />
                  </p>
                    <p>
                    <b>Total:</b><br />
                    <asp:Literal ID="litTotal" runat="server" Text=""></asp:Literal>
                    </p>

                    <p>
                    <b>Total Amount:</b><br />
                    <asp:Literal ID="litTotalAmount" runat="server" Text=""></asp:Literal>
                    </p>

                    <p>
                    <asp:Button ID="btnCheckOut" runat="server" PostBackUrl="~/siteshoppingcart.aspx" width="160px" Text="Continue Checkout"/>               
                    _"OR"_
                    <asp:LinkButton ID="lnkContinue" runat="server" PostBackUrl="~/siteproduct.aspx" Text="Continue Shopping" />
 
                    </p>   

                    <a href="siteproduct.aspx" runat="server">Back to Product</a>

             </td>
             </tr>
            </table>
           </td>

         </tr>
     </table>
   </form>

</asp:Content>
