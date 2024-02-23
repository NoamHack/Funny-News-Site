<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="headline" Runat="Server">

    <p align="center" style="font-size: 75px">
       הירשם</p>

</asp:Content>
<asp:Content ID="main" ContentPlaceHolderID="Main" Runat="Server">
    <script type="text/javascript">
    function checkForm() {

        var name = document.register.name.value;
        var password = document.register.password.value;
        var adress = document.register.adress.value;
        var email = document.register.email.value;
        var birth = document.register.birth.value;
        var pattern = /^([0-9]{2})-([0-9]{2})-([0-9]{4})$/;
        var validRegex = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~]+@[a-zA-Z0-9]+(?:\.[a-zA-Z0-9]+)*$/;

          if (!validRegex.test(email)) 
          {

    alert("אימייל לא תקין");
    return false;
    }
        if (birth == "" || pattern.test(birth)) {
            alert("תאריך לידה שגוי");
            return false;
        }
         if (name.length == 0) 
        {
            alert("לא הזנת שם משתמש");
            return false;
        }
        if (adress.length == 0) 
        {
            alert("לא הזנת כתובת");
            return false;
        }
        if (password.length < 3)
        {
        alert ("הסיסמא שהזנת אינה תקינה");
            return false;
            }
        if (email.length < 3) {
            alert("האימייל שהזנת אינו תקין");
            return false;
        }
        if (email.indexOf("@") == 0) {
            alert("כתובת אימייל לא יכולה להתחיל עם שטרודל")
            return false;
        }
        if (email.indexOf(".") == 0) {
            alert("כתובת אימייל לא יכולה להתחיל עם נקודה")
            return false;
        }
        if (email.lastIndexOf(".") == email.length - 1) {
            alert("כתובת אימייל לא יכולה להסתיים בנקודה")
            return false;
        }
        if (birth.length < 3) {
            alert("תאריך הלידה שהזנת אינו תקין");
            return false;
        }
        return true;

    }
    </script>
    <form name="register" action="insertQuery.aspx" onsubmit="return checkForm()" 
dir="rtl" style="font-size: 40px">
    שם משתמש:&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="text" name="name" style="font-size: 20px" /><br />
&nbsp;&nbsp;&nbsp;&nbsp;
    <br /> 
    אימייל:&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="text" name="email" style="font-size: 20px" />
    &nbsp;&nbsp;<br />
    &nbsp;
    <br /> 
    סיסמה:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="password" name="password" style="font-size: 20px" />
    <br />
    <br /> 
    שנת לידה:&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="text" name="birth" style="font-size: 20px" />
    <br />
    &nbsp;&nbsp;&nbsp;
    <br />  
    כתובת:&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="text" name="adress" style="font-size: 20px" />
    &nbsp;&nbsp;<br />
    &nbsp;
    <br /> 
    <input type="radio" name="admin" value="false" />לא אדמין
    <br />
    <input type="radio" name="admin" value="true" />כן אדמין
    <br />
    <br />
    <input type="submit" value="שלח" style="font-size: 30px" />
    <input type="reset" value="איפוס" size="50" style="font-size: 30px" />
    <br />
    <br />
    <br />
    <br />
    </form>


</asp:Content>

