<%@ Page Title="Courses" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="Comp229_Assign03.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%# Eval("LastName") %>.</h2>
        <div class="row">
        <div class="col-md-4">
            <h2>Enrolled Students</h2>
                 <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">

                <ItemTemplate>
         
                   <p> <a href="Students.aspx?id=<%# Eval("StudentID") %>"><%# Eval("FirstMidName") %> <%# Eval("LastName") %></a></p>
                     
             
          </ItemTemplate>
                </asp:Repeater>
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Comp229Assign03ConnectionString %>" SelectCommand="SELECT [FirstMidName], [LastName], [StudentID] FROM [Students]"></asp:SqlDataSource>
            
            <br />
            Wish to add or drop a class?<br />
           <p>  Student ID:<asp:TextBox ID="studentidbx" runat="server" CausesValidation="True"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="studentidbx" runat="server" ErrorMessage="Enter your student ID" ValidationExpression="^[0-9]{1,6}$"></asp:RegularExpressionValidator></p>
            


<p>Course ID:<asp:DropDownList ID="classlist" runat="server" DataSourceID="SqlDataSource2" DataTextField="CourseID" DataValueField="CourseID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Comp229Assign03ConnectionString %>" SelectCommand="SELECT [CourseID] FROM [Courses]"></asp:SqlDataSource></p>
            <p>Grade:<asp:TextBox ID="gradebx" runat="server" Width="42px"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="gradebx" runat="server" ErrorMessage="Enter your grade." ValidationExpression="^(?:100|[1-9]?[0-9])$"></asp:RegularExpressionValidator></p>
            

           <p> <asp:Button ID="addbutton" runat="server" OnClick="addbutton_Click" Text="Add" />
&nbsp;
<asp:Button ID="rmvbtn" runat="server" Text="Remove" OnClick="rmvbtn_Click" /></p>
            
        </div>
    </div>
</asp:Content>
