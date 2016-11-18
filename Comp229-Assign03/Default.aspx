<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Comp229_Assign03._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        
        <h1>Rob's College</h1>
        <h3>Here at Rob&#39;s College we strive for your academic greatness.</h3>
        </div>
   
    <div class="row">
        <div class="col-md-4">
            <h2>Our Students</h2>
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">

                <ItemTemplate>
         
                   <p> <a href="Students.aspx?id=<%# Eval("StudentID") %>"><%# Eval("FirstMidName") %> <%# Eval("LastName") %></a></p>
                     
             
          </ItemTemplate>
                </asp:Repeater>
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Comp229Assign03ConnectionString %>" SelectCommand="SELECT [FirstMidName], [LastName], [StudentID] FROM [Students]"></asp:SqlDataSource>
            
        </div>
        <div class="col-md-4">
            <h2>Wish to Enroll?</h2>
            <p>
             Please enter your first name and last name.
            </p>
            <p>
              First Name:<asp:TextBox ID="Fname" runat="server" MaxLength="10"></asp:TextBox>
           <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="Fname" runat="server" ErrorMessage="Only letters allowed" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
            </p>
            <p>
               Last Name:<asp:TextBox ID="Lname" runat="server" MaxLength="10"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="Lname" runat="server" ErrorMessage="Only letters allowed" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
            </p>
            <p>
                <asp:Button ID="AddStudent" runat="server" Text="Enroll" OnClick="AddStudent_Click" />
            </p>

          
        </div>
        <div class="col-md-4">
            <h2>Update Your Info</h2>
            <p>
                Add or Remove your courses here</p>
            <p>
                
                <a class="btn btn-default" href="Courses.aspx">Courses</a>
            </p>
        </div>
    </div>

</asp:Content>
