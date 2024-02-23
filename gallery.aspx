<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript">
    var a;
    var index = 2;
    function setTimer() {
        a = setTimeout(slide, 1000);
    }

    function slide() {
        if (index > 6)
            index = 1;
        image.src = "img/" + index + ".jpg";
        index++;
    }
    function stop() {
        clearTimeout(a);
    }

</script>
    <style type="text/css">
        .style6
        {
            font-size: 20pt;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<p class="style6"><strong>גלריית התמונות שלנו :</strong></p>
<img src="img/1.jpg" height="350" alt="pic" name="image" onload="setTimer()" />
<br />
<input type="button" value="stop" onclick="stop()" />
<input type="button" value="start" onclick="setTimer()" />
</asp:Content>

