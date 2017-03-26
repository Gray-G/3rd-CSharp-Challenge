<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ChallengeEpicSpiesAssignment.Default" MaintainScrollPositionOnPostback="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            font-size: x-large;
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style3 {
            width: 154px;
            height: 190px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <img alt="" class="auto-style3" src="epic-spies-logo.jpg" /><br />
        <br />
        <strong><span class="auto-style2">Epic Spies Assignment Form</span></strong></div>
        <p>
            Spy Code Name:
            <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox>
        </p>
        <p>
            New Assignment Name: <asp:TextBox ID="assignmentTextBox" runat="server"></asp:TextBox>
        </p>
        <p>
            End Date of Previous Assignment:<asp:Calendar ID="previousCalendar" runat="server"></asp:Calendar>
        </p>
        <p>
            Start Date of New Assignment:<asp:Calendar ID="startCalendar" runat="server"></asp:Calendar>
        </p>
        <p>
            Projected End Date of New Assignment:<asp:Calendar ID="endCalendar" runat="server"></asp:Calendar>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="assignButton" runat="server" OnClick="assignButton_Click" Text="Assign" />
        </p>
        <p>
            <asp:Label ID="resultLabel" runat="server"></asp:Label>
        </p>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
</html>
