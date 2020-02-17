<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="InstituteEntity.Student" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

      <br />
    <br />
    <style>
        th {
            background-color:dodgerblue;
            font-size:20px;
            padding:15px;
        }


    </style>
    <!--All below coding has used the entity framework and CRUD based operation is used and all data is autogenrated -->
    <!--heading are given for the understanding purpose -->
    <h1 align="center"><u> Admission Details </u></h1>
    <div><h2>The following table is used for student admission which is using CRUD operation in which admin can add the data of the student, can update the record if needed and can delete the record also. Moreover this is auto genrated data that is used only for the purpose of the admin.</h2> </div><br/>
    <marquee><h2 align="center">Admission Record  </h2></marquee>
    <div class="container">
        <div class="row">





            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="ID" InsertItemPosition="LastItem">
                <AlternatingItemTemplate>
                    <tr style="background-color: #FFFFFF;color: #284775;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="FatherNameLabel" runat="server" Text='<%# Eval("FatherName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DobLabel" runat="server" Text='<%# Eval("Dob") %>' />
                        </td>
                        <td>
                            <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CourseLabel" runat="server" Text='<%# Eval("Course") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ContactLabel" runat="server" Text='<%# Eval("Contact") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color: #999999;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                            <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="FatherNameTextBox" runat="server" Text='<%# Bind("FatherName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DobTextBox" runat="server" Text='<%# Bind("Dob") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="CourseTextBox" runat="server" Text='<%# Bind("Course") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="ContactTextBox" runat="server" Text='<%# Bind("Contact") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="FatherNameTextBox" runat="server" Text='<%# Bind("FatherName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DobTextBox" runat="server" Text='<%# Bind("Dob") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="CourseTextBox" runat="server" Text='<%# Bind("Course") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="ContactTextBox" runat="server" Text='<%# Bind("Contact") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color: #E0FFFF;color: #333333;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="FatherNameLabel" runat="server" Text='<%# Eval("FatherName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DobLabel" runat="server" Text='<%# Eval("Dob") %>' />
                        </td>
                        <td>
                            <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CourseLabel" runat="server" Text='<%# Eval("Course") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ContactLabel" runat="server" Text='<%# Eval("Contact") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                        <th runat="server"></th>
                                        <th runat="server">ID</th>
                                        <th runat="server">Name</th>
                                        <th runat="server">FatherName</th>
                                        <th runat="server">Dob</th>
                                        <th runat="server">Address</th>
                                        <th runat="server">Course</th>
                                        <th runat="server">Contact</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF"></td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="FatherNameLabel" runat="server" Text='<%# Eval("FatherName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DobLabel" runat="server" Text='<%# Eval("Dob") %>' />
                        </td>
                        <td>
                            <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CourseLabel" runat="server" Text='<%# Eval("Course") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ContactLabel" runat="server" Text='<%# Eval("Contact") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:InstituteDBConnectionString7 %>" DeleteCommand="DELETE FROM [Student] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Student] ([Name], [FatherName], [Dob], [Address], [Course], [Contact]) VALUES (@Name, @FatherName, @Dob, @Address, @Course, @Contact)" SelectCommand="SELECT * FROM [Student] ORDER BY [ID] DESC" UpdateCommand="UPDATE [Student] SET [Name] = @Name, [FatherName] = @FatherName, [Dob] = @Dob, [Address] = @Address, [Course] = @Course, [Contact] = @Contact WHERE [ID] = @ID">
                       <DeleteParameters>
                           <asp:Parameter Name="ID" Type="Int32" />
                       </DeleteParameters>
                       <InsertParameters>
                           <asp:Parameter Name="Name" Type="String" />
                           <asp:Parameter Name="FatherName" Type="String" />
                           <asp:Parameter Name="Dob" Type="String" />
                           <asp:Parameter Name="Address" Type="String" />
                           <asp:Parameter Name="Course" Type="String" />
                           <asp:Parameter Name="Contact" Type="String" />
                       </InsertParameters>
                       <UpdateParameters>
                           <asp:Parameter Name="Name" Type="String" />
                           <asp:Parameter Name="FatherName" Type="String" />
                           <asp:Parameter Name="Dob" Type="String" />
                           <asp:Parameter Name="Address" Type="String" />
                           <asp:Parameter Name="Course" Type="String" />
                           <asp:Parameter Name="Contact" Type="String" />
                           <asp:Parameter Name="ID" Type="Int32" />
                       </UpdateParameters>
            </asp:SqlDataSource>
                   </div>
          </div>
</asp:Content>
