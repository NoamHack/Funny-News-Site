<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="deleteAlogoff.aspx.cs" Inherits="deleteAlogoff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
    function deleteAccount() {
        window.location.replace("deleteQuery.aspx");
    }
    function logoff() {
        window.location.replace("logoff.aspx");
    }

</script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="headline" Runat="Server">

    <p align="center" style="font-size: 75px">
    התנתק</p>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">
    <input type="button" value="מחק חשבון" onclick="deleteAccount()" />
<br />
<input type="button" value="התנתק" onclick="logoff()" />

</asp:Content>

