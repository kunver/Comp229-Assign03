<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="Comp229_Assign03.Update" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
 <h3>Student ID number:</h3>
    <p>Please enter you new credentials</p>
    <p>Student First Name:<asp:TextBox ID="Firstname" runat="server"></asp:TextBox>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Firstname"
    ValidationExpression="[a-zA-Z ]" ErrorMessage="Please enter a valid name" />
    </p>
    <p>Student Last Name:<asp:TextBox ID="Lastname" runat="server"></asp:TextBox>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Lastname"
    ValidationExpression="[a-zA-Z ]" ErrorMessage="Please enter a valid name" />
    </p>
<p>
    <asp:Button ID="Button1" runat="server" Text="Update" />
    </p>
    
</asp:Content>
