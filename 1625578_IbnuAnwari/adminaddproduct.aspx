<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminaddproduct.aspx.cs" Inherits="_1625578_IbnuAnwari.adminaddproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Add Product
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="admincontent" runat="server">
    Add New Product
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="admindetail" runat="server">

    <asp:FormView ID="FormViewList" runat="server" DataKeyNames="ProductsId" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="145px" Width="516px">
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
            <b>Insert New Product Detail</b>
            <table>
                <tr>
                    <td><br />
                        Product Type:<br>
                        <asp:TextBox ID="ProductsTypeTextBox" runat="server" Text='<%# Bind("ProductsType") %>' />
                        <br /><br />
                        Product Name:<br>
                        <asp:TextBox ID="ProductsNameTextBox" runat="server" Text='<%# Bind("ProductsName") %>' />
                        <br /><br />
                        Product Description:<br>
                        <asp:TextBox ID="ProductsDescriptionTextBox" runat="server" Text='<%# Bind("ProductsDescription") %>' />
                        <br></br>
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Click to Update detail into Product List" />
                    </td>
                    <td>
                        Product Price:<br>
                        <asp:TextBox ID="ProductsPriceTextBox" runat="server" Text='<%# Bind("ProductsPrice") %>' />
                        <br></br>
                        Product Quantity:<br>
                        <asp:TextBox ID="ProductsQuantityTextBox" runat="server" Text='<%# Bind("ProductsQuantity") %>' />
                        <br />
                        <br />
                    </td>
                </tr>
            </table>
        </InsertItemTemplate>
        <ItemTemplate>
            ProductsId:
            <asp:Label ID="ProductsIdLabel" runat="server" Text='<%# Eval("ProductsId") %>' />
            <br />
            ProductsType:
            <asp:Label ID="ProductsTypeLabel" runat="server" Text='<%# Bind("ProductsType") %>' />
            <br />
            ProductsName:
            <asp:Label ID="ProductsNameLabel" runat="server" Text='<%# Bind("ProductsName") %>' />
            <br />
            ProductsDescription:
            <asp:Label ID="ProductsDescriptionLabel" runat="server" Text='<%# Bind("ProductsDescription") %>' />
            <br />
            ProductsPrice:
            <asp:Label ID="ProductsPriceLabel" runat="server" Text='<%# Bind("ProductsPrice") %>' />
            <br />
            ProductsQuantity:
            <asp:Label ID="ProductsQuantityLabel" runat="server" Text='<%# Bind("ProductsQuantity") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>


    </asp:FormView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1625578_co5027_asgConnectionString %>" DeleteCommand="DELETE FROM [Products] WHERE [ProductsId] = @original_ProductsId AND (([ProductsType] = @original_ProductsType) OR ([ProductsType] IS NULL AND @original_ProductsType IS NULL)) AND (([ProductsName] = @original_ProductsName) OR ([ProductsName] IS NULL AND @original_ProductsName IS NULL)) AND (([ProductsDescription] = @original_ProductsDescription) OR ([ProductsDescription] IS NULL AND @original_ProductsDescription IS NULL)) AND (([ProductsPrice] = @original_ProductsPrice) OR ([ProductsPrice] IS NULL AND @original_ProductsPrice IS NULL)) AND [ProductsQuantity] = @original_ProductsQuantity" InsertCommand="INSERT INTO [Products] ([ProductsType], [ProductsName], [ProductsDescription], [ProductsPrice], [ProductsQuantity]) VALUES (@ProductsType, @ProductsName, @ProductsDescription, @ProductsPrice, @ProductsQuantity)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Products] WHERE ([ProductsId] = @ProductsId)" UpdateCommand="UPDATE [Products] SET [ProductsType] = @ProductsType, [ProductsName] = @ProductsName, [ProductsDescription] = @ProductsDescription, [ProductsPrice] = @ProductsPrice, [ProductsQuantity] = @ProductsQuantity WHERE [ProductsId] = @original_ProductsId AND (([ProductsType] = @original_ProductsType) OR ([ProductsType] IS NULL AND @original_ProductsType IS NULL)) AND (([ProductsName] = @original_ProductsName) OR ([ProductsName] IS NULL AND @original_ProductsName IS NULL)) AND (([ProductsDescription] = @original_ProductsDescription) OR ([ProductsDescription] IS NULL AND @original_ProductsDescription IS NULL)) AND (([ProductsPrice] = @original_ProductsPrice) OR ([ProductsPrice] IS NULL AND @original_ProductsPrice IS NULL)) AND [ProductsQuantity] = @original_ProductsQuantity">
        <DeleteParameters>
            <asp:Parameter Name="original_ProductsId" Type="Int32" />
            <asp:Parameter Name="original_ProductsType" Type="String" />
            <asp:Parameter Name="original_ProductsName" Type="String" />
            <asp:Parameter Name="original_ProductsDescription" Type="String" />
            <asp:Parameter Name="original_ProductsPrice" Type="Decimal" />
            <asp:Parameter Name="original_ProductsQuantity" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProductsType" Type="String" />
            <asp:Parameter Name="ProductsName" Type="String" />
            <asp:Parameter Name="ProductsDescription" Type="String" />
            <asp:Parameter Name="ProductsPrice" Type="Decimal" />
            <asp:Parameter Name="ProductsQuantity" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="ProductsId" QueryStringField="ProductsId" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="ProductsType" Type="String" />
            <asp:Parameter Name="ProductsName" Type="String" />
            <asp:Parameter Name="ProductsDescription" Type="String" />
            <asp:Parameter Name="ProductsPrice" Type="Decimal" />
            <asp:Parameter Name="ProductsQuantity" Type="Int32" />
            <asp:Parameter Name="original_ProductsId" Type="Int32" />
            <asp:Parameter Name="original_ProductsType" Type="String" />
            <asp:Parameter Name="original_ProductsName" Type="String" />
            <asp:Parameter Name="original_ProductsDescription" Type="String" />
            <asp:Parameter Name="original_ProductsPrice" Type="Decimal" />
            <asp:Parameter Name="original_ProductsQuantity" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <br>
    <a href="adminlistproduct.aspx">Check the New Added Product Detail in the List</a>
    </br>

</asp:Content>
