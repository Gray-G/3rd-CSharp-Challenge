<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ChallengeEpicSpiesAssignment.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 190px;
            height: 236px;
        }
        .auto-style2 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <img alt="" class="auto-style1" src="file:///C:/Users/Gray/Desktop/CS-ASP_019-Challenge/epic-spies-logo.jpg" /><br />
        <br />
        <span class="auto-style2"><strong>Spy New Assignment Form</strong></span><br />
        <br />
        <br />
        Spy Code Name: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        New Assignment Name:
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        End Date of Previous Assignment:<br />
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        <br />
        <br />
        Start Date of New Assignment:<br />
        <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
        <br />
        <br />
        Projected End Date of New Assignment:<br />
        <asp:Calendar ID="Calendar3" runat="server"></asp:Calendar>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    
    </div>
    </form>
</body>
</html>
