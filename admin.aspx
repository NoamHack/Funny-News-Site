<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="headline" Runat="Server">
  <p align="center" style="font-size: 75px">
      עמוד מנהל</p>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Main" Runat="Server">
    <form id="form1" runat="server" dir="rtl" style="font-size: 35px">
    
<br />
     <asp:GridView ID="GridView1" runat="server" Height="325px" Width="1108px">
</asp:GridView>
<br />
<asp:Button ID="Button1" runat="server" Text="הראה משתמשים" onclick="Button1_Click" 
        Height="30px" />
    &nbsp;<asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
        Text="הכנס משתמש" Height="30px" />
&nbsp;<asp:Button ID="Button3" runat="server" Text="עדכן משתמש" 
    onclick="Button3_Click" Height="30px" />
&nbsp;&nbsp;
    <asp:Button ID="Button4" runat="server" Text="מחק משתמש" 
    onclick="Button4_Click" Height="30px" />

    <br />
    <br />
    שם משתמש:<br />
    
<asp:TextBox ID="TextBox1" runat="server" style="font-size: 20px"></asp:TextBox>
<br />סיסמא:<br />
<asp:TextBox ID="TextBox2" runat="server" style="font-size: 20px"></asp:TextBox>
<br />לידה:<br />
<asp:TextBox ID="TextBox3" runat="server" style="font-size: 20px"></asp:TextBox>
<br />כתובת:<br />
<asp:TextBox ID="TextBox4" runat="server" style="font-size: 20px"></asp:TextBox>
<br />email:<br />
<asp:TextBox ID="TextBox5" runat="server" style="font-size: 20px"></asp:TextBox>
<br />admin?:<br />
<asp:TextBox ID="TextBox6" runat="server" style="font-size: 20px"></asp:TextBox>
<br />id:<br />
<asp:TextBox ID="TextBox7" runat="server" style="font-size: 20px"></asp:TextBox>
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
    <br />
    <br />
    
    <br />
    <br />
    <br />
    <br />
    <br />
    </form>
</asp:Content>

