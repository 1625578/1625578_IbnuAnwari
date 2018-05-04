<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="siteproductdetail.aspx.cs" Inherits="_1625578_IbnuAnwari.siteproductdetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Product Detail
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
      
    <form runat="server">
    <table>
       <tr>
          <td><h2>Product Detail</h2></td>
       </tr>

       <tr>
        <td>
        <asp:Image ID="productImage" runat="server" style="width:680px; height:450px;" />
        </td>

        <td>________</td>

        <td>
        <asp:FormView ID="FormViewList" runat="server" DataKeyNames="ProductsId" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                ProductsId:
                <asp:Label ID="ProductsIdLabel1" runat="server" Text='<%# Eval("ProductsId") %>' />
                <br />
                ProductsType:
                <asp:TextBox ID="ProductsTypeTextBox" runat="server" Text='<%# Bind("ProductsType") %>' />
                <br />
                ProductsName:
                <asp:TextBox ID="ProductsNameTextBox" runat="server" Text='<%# Bind("ProductsName") %>' />
                <br />
                ProductsDescription:
                <asp:TextBox ID="ProductsDescriptionTextBox" runat="server" Text='<%# Bind("ProductsDescription") %>' />
                <br />
                ProductsPrice:
                <asp:TextBox ID="ProductsPriceTextBox" runat="server" Text='<%# Bind("ProductsPrice") %>' />
                <br />
                ProductsQuantity:
                <asp:TextBox ID="ProductsQuantityTextBox" runat="server" Text='<%# Bind("ProductsQuantity") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                ProductsType:
                <asp:TextBox ID="ProductsTypeTextBox" runat="server" Text='<%# Bind("ProductsType") %>' />
                <br />
                ProductsName:
                <asp:TextBox ID="ProductsNameTextBox" runat="server" Text='<%# Bind("ProductsName") %>' />
                <br />
                ProductsDescription:
                <asp:TextBox ID="ProductsDescriptionTextBox" runat="server" Text='<%# Bind("ProductsDescription") %>' />
                <br />
                ProductsPrice:
                <asp:TextBox ID="ProductsPriceTextBox" runat="server" Text='<%# Bind("ProductsPrice") %>' />
                <br />
                ProductsQuantity:
                <asp:TextBox ID="ProductsQuantityTextBox" runat="server" Text='<%# Bind("ProductsQuantity") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
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
                    <br />
                    <a href="siteproduct.aspx" runat="server">View Other Product</a>
               </td>
               </tr>
               </table>
             </ItemTemplate>

        </asp:FormView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1625578_co5027_asgConnectionString %>" SelectCommand="SELECT * FROM [Products] WHERE ([ProductsId] = @ProductsId)">
            <SelectParameters>
                <asp:QueryStringParameter Name="ProductsId" QueryStringField="ProductsId" Type="Int32" />
            </SelectParameters>
            </asp:SqlDataSource>

        </td>

        <td>            
           <table>  
               <tr>
                   <td style="padding-top:300px; padding-left:3px;">
                   <p>
                   <asp:Label ID="quantitylabel" runat="server">Select Quantity:</asp:Label>
                   <asp:TextBox ID="quantitytext" runat="server" Width="151px"></asp:TextBox>
                   <asp:DropDownList ID="DDLquantity" runat="server">
                       <asp:ListItem Selected="True">1</asp:ListItem>
                       <asp:ListItem>2</asp:ListItem>
                       <asp:ListItem>3</asp:ListItem>
                       <asp:ListItem>4</asp:ListItem>
                       <asp:ListItem>5</asp:ListItem>
                       <asp:ListItem>6</asp:ListItem>
                   </asp:DropDownList>
                   </p>         
                   </td>
               </tr>
               <tr>
                   <td style="padding-left:3px; padding-top:2px;">
                       <p><asp:Button ID="btnPurchase" runat="server" Text="Purchase Product" OnClick="btnPurchase_Click" /></p>
                        <p><asp:Button ID="AddToCart" runat="server" onclick="btnAddToCart_Click" Text="Add to Cart" /></p>

                   </td>
               </tr>
           </table>
        </td>
        </tr>

        <tr>
            <td>
   
            </td>
       </tr>

     </table>
     </form>
</asp:Content>
