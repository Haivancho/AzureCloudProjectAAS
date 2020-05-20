<%@ Page Title="Subject CreateNew" Language="C#" MasterPageFile="~/Site.Master"
    AutoEventWireup="true" CodeBehind="SubjectCreateNew.aspx.cs"
    Inherits="ProjectAAS.SubjectCreateNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Subject</h1>
    ID
 <br />
    <asp:TextBox ID="TextBoxSubjectID" runat="server" />
    <br />
    Name
 <br />
    <asp:TextBox ID="TextBoxSubjectName" runat="server" />
    <br />
    <br />
    <asp:Button ID="ButtonSave" runat="server" Text="Save" OnClick="ButtonSave_Click" />
</asp:Content>

