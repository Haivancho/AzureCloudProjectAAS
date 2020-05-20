<%@ Page Title="Specialties" Language="C#" MasterPageFile="~/Site.Master"
    AutoEventWireup="true" CodeBehind="Specialties.aspx.cs"
    Inherits="ProjectAAS.Specialties" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridViewContent" runat="server"
        OnRowCommand="GridViewContent_RowCommand" AutoGenerateColumns="False">
        <columns>
 <asp:ButtonField ButtonType="Link"
 CommandName="Select"
 HeaderText=""
 Text="Select" />
 <asp:BoundField HeaderText="Id" DataField="Id"></asp:BoundField>
 <asp:BoundField HeaderText="Name" DataField="Name"></asp:BoundField>
 </columns>
    </asp:GridView>
</asp:Content>