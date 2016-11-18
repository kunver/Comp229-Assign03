<%@ Page Title="Students" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="Comp229_Assign03.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Student ID number:<asp:Label ID="LabelID" runat="server" Text="Label"></asp:Label>
    </h3>
    <p>Student First Name:<asp:Label ID="labelfname" runat="server" Text="Label"></asp:Label>
    </p>
    <p>Student Last Name:<asp:Label ID="LabelLname" runat="server" Text="Label"></asp:Label>
    </p>
     <p>Date Enrolled:<asp:Label ID="labeldate" runat="server" Text="Label"></asp:Label>
    <p>Student's Courses:</p>  <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">

                <ItemTemplate>
         
                   <p> <%# Eval("CourseID") %></p>
                     
             
          </ItemTemplate>
                </asp:Repeater>
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Comp229Assign03ConnectionString %>" SelectCommand="SELECT [CourseID] FROM [Enrollments] WHERE ([StudentID] = @StudentID)">
                   <SelectParameters>
                       <asp:QueryStringParameter Name="StudentID" QueryStringField="id" Type="Int32" />
                   </SelectParameters>
    </asp:SqlDataSource>
   
    </p>
    <p>Something not right? Click to update your information</p>
    <p>
        <asp:Button ID="updatebtn" runat="server" OnClick="Button1_Click" href="Update.aspx" Text="Update Information" />
    </p>
    <p>Want to withdraw? (Canot be undone)</p>
    <p>
        <asp:Button ID="deletebtn" runat="server" Text="Delete" OnClick="deletebtn_Click" />
    </p>
</asp:Content>
