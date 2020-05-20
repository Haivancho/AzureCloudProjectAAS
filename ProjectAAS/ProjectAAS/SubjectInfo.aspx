<%@ Page Title="Subject Info" Language="C#" MasterPageFile="~/Site.Master"
    AutoEventWireup="true" CodeBehind="SubjectInfo.aspx.cs"
    Inherits="ProjectAAS.SubjectInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Subject</h1>
    ID
 <br />
    <asp:TextBox ID="TextBoxSubjectID" runat="server" Enabled="false" />
    <br />
    Name
 <br />
    <asp:TextBox ID="TextBoxSubjectName" runat="server" />
    <br />
    <br />
    <asp:Button ID="ButtonSave" runat="server" Text="Save" OnClick="ButtonSave_Click" />
</asp:Content>
