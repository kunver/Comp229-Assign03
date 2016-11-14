<%@ Page Title="Students" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="Comp229_Assign03.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Student ID number:</h3>
    <p>Student First Name:</p>
    <p>Student Last Name:</p>
    <p>Student's Courses:</p>
    <p>Date Enrolled:</p>
    <p>Something not right? Click to update your information</p>
    <p>
        <asp:Button ID="updatebtn" runat="server" OnClick="Button1_Click" href="Update.aspx" Text="Update Information" />
    </p>
    <p>Want to withdraw? (Canot be undone)</p>
    <p>
        <asp:Button ID="deletebtn" runat="server" Text="Delete" />
    </p>
</asp:Content>
