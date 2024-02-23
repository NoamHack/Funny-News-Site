<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="logIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="headline" Runat="Server">

    <p align="center" style="font-size: 75px">
        התחבר</p>

</asp:Content>
<asp:Content ID="main" ContentPlaceHolderID="Main" Runat="Server">
     <script type="text/javascript">

         function checkForm() {
             var name = document.login.name.value;
             var password = document.login.password.value;
             if (name.length < 3) {
                 alert("שם משתמש לא תקין");
                 return false;
             }
             if (password.length < 3) {
                 alert("סיסמה לא תקינה");
                 return false;
             }
             alert("שלום" + name);
             return true;
         }
    
</script>

    <form name="login" action="selectQuery.aspx" onsubmit="return checkForm()" 
     dir="rtl" style="font-size: 40px" >
  שם פרטי:&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="name" 
        style="font-size: 20px"/>
  &nbsp;&nbsp;&nbsp;
  <br />
  <br />
  
  סיסמה:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="password" name="password" 
        style="font-size: 20px"/>
  <br />
  <br />
 
  <br />
  <input type="submit" value="שלח" style="font-size: 30px"/>
  <input type="reset" value="איפוס" style="font-size: 30px" />


    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />


</form>




</asp:Content>

