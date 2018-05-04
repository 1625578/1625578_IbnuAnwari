<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminregistereduser.aspx.cs" Inherits="_1625578_IbnuAnwari.adminregistereduser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Registered User
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="admincontent" runat="server">
    List of Registered User
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="admindetail" runat="server">

<asp:GridView ID="GridView1" runat="server" style="text-align:center;" Width="890px" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
    </Columns>
</asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1625578_co5027_asgConnectionString %>" DeleteCommand="DELETE FROM [AspNetUsers] WHERE [Id] = @original_Id AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND [UserName] = @original_UserName" InsertCommand="INSERT INTO [AspNetUsers] ([Email], [UserName], [Id]) VALUES (@Email, @UserName, @Id)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Email], [UserName], [Id] FROM [AspNetUsers]" UpdateCommand="UPDATE [AspNetUsers] SET [Email] = @Email, [UserName] = @UserName WHERE [Id] = @original_Id AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND [UserName] = @original_UserName">
        <DeleteParameters>
            <asp:Parameter Name="original_Id" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
            <asp:Parameter Name="original_UserName" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Id" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="original_Id" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
            <asp:Parameter Name="original_UserName" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
