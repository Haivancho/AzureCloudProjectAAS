<%@ Page Title="Specialty CreateNew" Language="C#" MasterPageFile="~/Site.Master"
AutoEventWireup="true" CodeBehind="SpecialtyCreateNew.aspx.cs"
Inherits="ProjectAAS.SpecialtyCreateNew" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <h1>Specialty</h1>
 ID
 <br />
 <asp:TextBox ID="TextBoxSpecialtyID" runat="server" />
 <br />
 Name
 <br />
 <asp:TextBox ID="TextBoxSpecialtyName" runat="server" />
 <br />
 <br />
 <asp:Button ID="ButtonSave" runat="server" Text="Save" OnClick="ButtonSave_Click"
/>
</asp:Content>