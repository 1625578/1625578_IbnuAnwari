<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminlistproduct.aspx.cs" Inherits="_1625578_IbnuAnwari.adminlistproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    List of Product
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="admincontent" runat="server">
    List of Product
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="admindetail" runat="server">

    <asp:GridView ID="GridViewList" runat="server" style="text-align:center;" Width="890px" AutoGenerateColumns="False" DataKeyNames="ProductsId" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" HeaderText="Option" />
            <asp:BoundField DataField="ProductsId" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="ProductsId" />
            <asp:BoundField DataField="ProductsType" HeaderText="Type" SortExpression="ProductsType" />
            <asp:BoundField DataField="ProductsName" HeaderText="Name" SortExpression="ProductsName" />
            <asp:BoundField DataField="ProductsDescription" HeaderText="Description" SortExpression="ProductsDescription" />
            <asp:BoundField DataField="ProductsPrice" HeaderText="Price" SortExpression="ProductsPrice" />
            <asp:BoundField DataField="ProductsQuantity" HeaderText="Quantity" SortExpression="ProductsQuantity" />
            <asp:HyperLinkField DataNavigateUrlFields="ProductsId" DataNavigateUrlFormatString="adminupload.aspx?ProductsId={0}" HeaderText="Images" Text="Upload" />
            <asp:HyperLinkField DataNavigateUrlFields="ProductsId" DataNavigateUrlFormatString="admineditproduct.aspx?ProductsId={0}" HeaderText="Detail" Text="Edit" />
        </Columns>

    </asp:GridView>
  
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1625578_co5027_asgConnectionString %>" DeleteCommand="DELETE FROM [Products] WHERE [ProductsId] = @original_ProductsId AND (([ProductsType] = @original_ProductsType) OR ([ProductsType] IS NULL AND @original_ProductsType IS NULL)) AND (([ProductsName] = @original_ProductsName) OR ([ProductsName] IS NULL AND @original_ProductsName IS NULL)) AND (([ProductsDescription] = @original_ProductsDescription) OR ([ProductsDescription] IS NULL AND @original_ProductsDescription IS NULL)) AND (([ProductsPrice] = @original_ProductsPrice) OR ([ProductsPrice] IS NULL AND @original_ProductsPrice IS NULL)) AND [ProductsQuantity] = @original_ProductsQuantity" InsertCommand="INSERT INTO [Products] ([ProductsType], [ProductsName], [ProductsDescription], [ProductsPrice], [ProductsQuantity]) VALUES (@ProductsType, @ProductsName, @ProductsDescription, @ProductsPrice, @ProductsQuantity)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Products]" UpdateCommand="UPDATE [Products] SET [ProductsType] = @ProductsType, [ProductsName] = @ProductsName, [ProductsDescription] = @ProductsDescription, [ProductsPrice] = @ProductsPrice, [ProductsQuantity] = @ProductsQuantity WHERE [ProductsId] = @original_ProductsId AND (([ProductsType] = @original_ProductsType) OR ([ProductsType] IS NULL AND @original_ProductsType IS NULL)) AND (([ProductsName] = @original_ProductsName) OR ([ProductsName] IS NULL AND @original_ProductsName IS NULL)) AND (([ProductsDescription] = @original_ProductsDescription) OR ([ProductsDescription] IS NULL AND @original_ProductsDescription IS NULL)) AND (([ProductsPrice] = @original_ProductsPrice) OR ([ProductsPrice] IS NULL AND @original_ProductsPrice IS NULL)) AND [ProductsQuantity] = @original_ProductsQuantity">
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
  
</asp:Content>
