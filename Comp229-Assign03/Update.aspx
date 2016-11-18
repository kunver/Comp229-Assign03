<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="Comp229_Assign03.Update" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
 <h3>Student ID number:</h3>
    <p>Please enter you new credentials</p>
    <p>Student First Name:<asp:TextBox ID="Firstname" runat="server" MaxLength="10"></asp:TextBox>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="Firstname" runat="server" ErrorMessage="Only letters allowed" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
    </p>
    <p>Student Last Name:<asp:TextBox ID="Lastname" runat="server" MaxLength="10"></asp:TextBox>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="Lastname" runat="server" ErrorMessage="Only letters allowed" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
    </p>
<p>
    <asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />
    </p>
    
</asp:Content>
