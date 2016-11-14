<%@ Page Title="Courses" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="Comp229_Assign03.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
        <div class="row">
        <div class="col-md-4">
            <h2>Enrolled Students</h2>
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">

                <ItemTemplate>
         
                  <p><a href="Students.aspx"><%# Eval("FirstMidName") %> <%# Eval("LastName") %></a></p>
                    
                     
             
          </ItemTemplate>
                </asp:Repeater>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Comp229Assign03ConnectionString %>" SelectCommand="SELECT FirstMidName, LastName FROM Students WHERE EXISTS (SELECT EnrollmentID, CourseID, StudentID, Grade FROM Enrollments WHERE (Students.StudentID = StudentID))"></asp:SqlDataSource>
            
            <br />
            Wish to add or drop a class?<br />
            Student ID:<asp:TextBox ID="studentidbx" runat="server" CausesValidation="True"></asp:TextBox><asp:RangeValidator runat="server" Type="Integer" MinimumValue="6" MaximumValue="6" ControlToValidate="studentidbx" 
ErrorMessage="Enter your 6 digit student ID" Display="None" />
&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Title" DataValueField="Title">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Comp229Assign03ConnectionString %>" SelectCommand="SELECT [Title], [CourseID] FROM [Courses]"></asp:SqlDataSource>
            <asp:Button ID="addbtn" runat="server" Text="Add" OnClick="addbtn_Click" />
&nbsp;&nbsp;
            <asp:Button ID="rmvbtn" runat="server" Text="Remove" OnClick="rmvbtn_Click" />
            
        </div>
    </div>
</asp:Content>
