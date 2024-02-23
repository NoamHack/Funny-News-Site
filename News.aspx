<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head2" Runat="Server">
    <style type="text/css">

* {box-sizing: border-box;}
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

.mySlides {display: none;}
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

  .text {font-size: 11px}
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="headline" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Main" Runat="Server">

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>

    <p>
        &nbsp;</p>
    <div class="slideshow-container" dir=rtl>
        <div class="mySlides fade">
            <div class="numbertext">
                1 / 5</div>
            <img src="img/presentacion_alimentos_buffets_6_autoOrient_i.jpg" />
            <div class="text">
               </div>
        </div>
         <div class="slideshow-container" dir=rtl>
        <div class="mySlides fade">
            <div class="numbertext">
                2 / 3</div>
            <img src="img/189891573_335154374635602_8043682296379961471_n_autoOrient_i.jpg" />
            <div class="text">
               </div>
        </div>
         <div class="slideshow-container" dir=rtl>
        <div class="mySlides fade">
            <div class="numbertext">
                3 / 4</div>
            <img src="img/488860pic_I.jpg" />
            <div class="text">
               </div>
        </div>
        </div>
         <div class="slideshow-container" dir=rtl>
        <div class="mySlides fade">
            <div class="numbertext">
                4 / 5</div>
            <img src="https://img.mako.co.il/2020/11/12/SHAF1.jpg" />
            <div class="text">
                Caption Two</div>
        </div>
         <div class="slideshow-container" dir=rtl>
        <div class="mySlides fade">
            <div class="numbertext">
                5 / 5</div>
            <img src="https://img.mako.co.il/2017/07/09/TZLIVA_i.jpg" />
            <div class="text">
                </div>
        </div>
    <br />
    <div dir=rtl>
        <span class="dot"></span>
        <span class="dot"></span>
        <span class="dot"></span>
        <span class="dot"></span>
        <span class="dot"></span>
    </div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 5000); // Change image every 2 seconds
}
</script>

    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <ul dir="rtl" style="font-size: 40px">
        <li><a href="N1.aspx">כל הכבוד: עדן אלנה הגיעה למקום הראשון</a></li>
    </ul>
    <p>
        &nbsp;</p>
    <ul dir="rtl" style="font-size: 40px">
        <li><a href="N2.aspx">מה יקרה עכשיו כשהמנדט של נתניהו פקע? אין לי מושג, אני לא ממש מבין בזה</a></li>
    </ul>
    <p>
        &nbsp;</p>
    <ul dir="rtl" style="font-size: 40px">
        <li><a href="N3.aspx">מפגינים ניפצו חלון של נהג יהודי כי חשבו שהוא ערבי, וכשהתברר שהוא יהודי הם אספו לו 350 שקל.</a></li>
    </ul>
    <p>
        &nbsp;</p>
    <ul dir="rtl" style="font-size: 40px">
        <li><a href="N4.aspx">8 זני חיות מרהיבים שנכחדו השנה</a></li>
    </ul>
    <p>
        &nbsp;</p>
    <ul dir="rtl" style="font-size: 40px">
        <li><a href="N5.aspx">מיצב מחאה חדש נגד נתניהו בכיכר רבין: גרב</a></li>
    </ul>
    <p>
        &nbsp;</p>
    <ul dir="rtl" style="font-size: 40px">
        <li><a href="N6.aspx">הדברים שעשו לנו את ה-5,780 שנה</a></li>
    </ul>
    <p>
        &nbsp;</p>
    <ul dir="rtl" style="font-size: 40px">
        <li><a href="N7.aspx">לא תאמינו מה האישה הזאת עושה בזמן סקס</a></li>

        <li><a href="N8.aspx">טור דעה על מחאת המכנסונים</a></li>
    </ul>
    <p>
        &nbsp;</p>
    <ul dir="rtl" style="font-size: 40px">
        <li><a href="N9.aspx">המדריך של שרה נתניהו לדברים קלים ופשוטים</a></li>
        <li><a href="N10.aspx">DIY: ערכת יום עצמאות להכנה בבית</a></li>
    </ul>
</asp:Content>

