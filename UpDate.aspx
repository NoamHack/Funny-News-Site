<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UpDate.aspx.cs" Inherits="UpDate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript">
    function checkForm() {
        var fname = document.login.txtFName.value;
        var password = document.login.txtPassword.value;
        alert(fname);
        alert(password);
        if (fname.length < 3) {
            alert("שם משתמש לא תקין");
            return false;
        }
        if (password.length < 3) {
            alert("סיסמה לא תקינה");
            return false;
        }
        return true;
    }   
</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form name="login" action="UpdateQuery.aspx" onsubmit="return checkForm()" >
  שם פרטי:&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="txtFName"/>
  &nbsp;&nbsp;&nbsp;
  <br /> <br />
  סיסמה:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="password" name="txtPassword"/>
  <br /> <br /> <br />
  <input type="submit" value="שלח"/>
  <input type="reset" value="איפוס" />
</form>



</asp:Content>

