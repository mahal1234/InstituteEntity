<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Salary.aspx.cs" Inherits="InstituteEntity.Salary" %>
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
                           <asp:Label ID="ContactLabel" runat="server" Text='<%# Eval("Contact") %>' />
                       </td>
                       <td>
                           <asp:Label ID="SalaryLabel" runat="server" Text='<%# Eval("Salary") %>' />
                       </td>
                       <td>
                           <asp:Label ID="PaymentDateLabel" runat="server" Text='<%# Eval("PaymentDate") %>' />
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
                           <asp:TextBox ID="ContactTextBox" runat="server" Text='<%# Bind("Contact") %>' />
                       </td>
                       <td>
                           <asp:TextBox ID="SalaryTextBox" runat="server" Text='<%# Bind("Salary") %>' />
                       </td>
                       <td>
                           <asp:TextBox ID="PaymentDateTextBox" runat="server" Text='<%# Bind("PaymentDate") %>' />
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
                           <asp:TextBox ID="ContactTextBox" runat="server" Text='<%# Bind("Contact") %>' />
                       </td>
                       <td>
                           <asp:TextBox ID="SalaryTextBox" runat="server" Text='<%# Bind("Salary") %>' />
                       </td>
                       <td>
                           <asp:TextBox ID="PaymentDateTextBox" runat="server" Text='<%# Bind("PaymentDate") %>' />
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
                           <asp:Label ID="ContactLabel" runat="server" Text='<%# Eval("Contact") %>' />
                       </td>
                       <td>
                           <asp:Label ID="SalaryLabel" runat="server" Text='<%# Eval("Salary") %>' />
                       </td>
                       <td>
                           <asp:Label ID="PaymentDateLabel" runat="server" Text='<%# Eval("PaymentDate") %>' />
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
                                       <th runat="server">Contact</th>
                                       <th runat="server">Salary</th>
                                       <th runat="server">PaymentDate</th>
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
                           <asp:Label ID="ContactLabel" runat="server" Text='<%# Eval("Contact") %>' />
                       </td>
                       <td>
                           <asp:Label ID="SalaryLabel" runat="server" Text='<%# Eval("Salary") %>' />
                       </td>
                       <td>
                           <asp:Label ID="PaymentDateLabel" runat="server" Text='<%# Eval("PaymentDate") %>' />
                       </td>
                   </tr>
               </SelectedItemTemplate>
            </asp:ListView>
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:InstituteDBConnectionString5 %>" DeleteCommand="DELETE FROM [Salary] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Salary] ([Name], [Contact], [Salary], [PaymentDate]) VALUES (@Name, @Contact, @Salary, @PaymentDate)" SelectCommand="SELECT * FROM [Salary] ORDER BY [ID] DESC" UpdateCommand="UPDATE [Salary] SET [Name] = @Name, [Contact] = @Contact, [Salary] = @Salary, [PaymentDate] = @PaymentDate WHERE [ID] = @ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Contact" Type="String" />
                    <asp:Parameter Name="Salary" Type="String" />
                    <asp:Parameter Name="PaymentDate" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Contact" Type="String" />
                    <asp:Parameter Name="Salary" Type="String" />
                    <asp:Parameter Name="PaymentDate" Type="String" />
                    <asp:Parameter Name="ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            
        </div>
          </div>
</asp:Content>
