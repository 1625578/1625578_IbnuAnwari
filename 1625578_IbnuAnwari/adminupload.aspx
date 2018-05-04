<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminupload.aspx.cs" Inherits="_1625578_IbnuAnwari.adminupload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Upload
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="admincontent" runat="server">
    List of Product > Upload Images
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="admindetail" runat="server">

    <div id="adminuploadbox">
    <table>
    <tr>

    <td>
   
    <asp:FileUpload ID="FileUploadControl" runat="server" Height="35px" Width="499px" />
    <br>   
    <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" Height="34px" Width="390px" />
    <br />
    <asp:Literal ID="litUpload" runat="server"></asp:Literal>
    <br />
    <a href="adminlistproduct.aspx">Click to Check Uploaded Image on List of Product</a>
    </>
    </td>

    <td>
    <b>Upload Instruction</b>
    <p>Step 1:<br>Press Browse Button to Select any Images of the Product.</p>
    <p>Step 2:<br>Press Upload Button once Image has been selected on Field.</p>
    <p>Step 3:<br>Press Click to Check Uploaded Image on List of Product.</p>
     </td>
    
    </tr>
    </table>
    </div>


</asp:Content>
