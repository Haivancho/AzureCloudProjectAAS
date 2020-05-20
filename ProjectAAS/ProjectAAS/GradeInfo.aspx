<%@ Page Title="Grade Info" Language="C#" MasterPageFile="~/Site.Master"
AutoEventWireup="true" CodeBehind="GradeInfo.aspx.cs"
Inherits="ProjectAAS.GradeInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <h1>Grade</h1>
 FNumber
 <br />
 <asp:TextBox ID="TextBoxStudentFNumber" runat="server" Enabled ="false" />
 <br />
 Subject
 <br />
 <asp:DropDownList ID="DropDownListSubject" runat="server" />
 <br />
 FinalGrade
 <br />
 <asp:TextBox ID="TextBoxFinalGrade" runat="server" />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="TextBoxFinalGrade" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Grade must be between 2 and 6" ControlToValidate="TextBoxFinalGrade" ForeColor="Red" MaximumValue="6" MinimumValue="2"></asp:RangeValidator>
 <br />
 <br />
 <asp:Button ID="ButtonSave" runat="server" Text="Save" OnClick="ButtonSave_Click"
/>
</asp:Content>