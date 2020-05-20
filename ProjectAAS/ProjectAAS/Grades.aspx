<%@ Page Title="Grades" Language="C#" MasterPageFile="~/Site.Master"
AutoEventWireup="true" CodeBehind="Grades.aspx.cs" Inherits="ProjectAAS.Grades"
%>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <h1>Grades</h1>
 <asp:GridView ID="GridViewContent" runat="server"
OnRowCommand="GridViewContent_RowCommand" AutoGenerateColumns="False">
 <Columns>
 <asp:ButtonField ButtonType="Link"
 CommandName="Select"
 HeaderText=""
 Text="Select" />
 <asp:BoundField HeaderText="FNumber" DataField="FNumber"></asp:BoundField>
 <asp:BoundField HeaderText="SubjectName" DataField="SubjectName"></asp:BoundField>
 <asp:BoundField HeaderText="FinalGrade" DataField="FinalGrade"></asp:BoundField>
 </Columns>
 </asp:GridView>
 <br />
 <asp:LinkButton ID="LinkButtonCreateNew" runat="server" Text="Create new"
OnClick="LinkButtonCreateNew_Click" />
</asp:Content>
