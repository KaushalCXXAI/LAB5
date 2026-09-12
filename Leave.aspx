<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Leave.aspx.cs" Inherits="LAB5.Leave" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Leave Application</title>
</head>

<body>

<form id="form1" runat="server">

    <div>

        <h1>Leave Application</h1>

        <asp:Label
            ID="nameLabel"
            runat="server"
            Text="Applicant Name:">
        </asp:Label>

        <asp:TextBox
            ID="name"
            runat="server">
        </asp:TextBox>

        <br />
        <br />

        <asp:Label
            ID="SDLabel"
            runat="server"
            Text="Selected Date:">
        </asp:Label>

        <asp:Label
            ID="Dateselected"
            runat="server">
        </asp:Label>

        <br />
        <br />

        <asp:Label
            ID="Label1"
            runat="server"
            Text="Leave Type:">
        </asp:Label>

        <asp:DropDownList
            ID="leaveType"
            runat="server">

            <asp:ListItem
                Text="Sick Leave"
                Value="Sick Leave">
            </asp:ListItem>

            <asp:ListItem
                Text="Casual Leave"
                Value="Casual Leave">
            </asp:ListItem>

            <asp:ListItem
                Text="Personal Leave"
                Value="Personal Leave">
            </asp:ListItem>

        </asp:DropDownList>

        <br />
        <br />

        <asp:Label
            ID="Label2"
            runat="server"
            Text="Reason:">
        </asp:Label>

        <asp:TextBox
            ID="reason"
            runat="server"
            TextMode="MultiLine"
            Rows="4"
            Columns="50">
        </asp:TextBox>

        <br />
        <br />

        <asp:Label
            ID="Label3"
            runat="server"
            Text="Load Adjusted With:">
        </asp:Label>

        <asp:TextBox
            ID="loadAdjusted"
            runat="server">
        </asp:TextBox>

        <br />
        <br />

        <asp:Button
            ID="btnSubmit"
            runat="server"
            Text="Submit Leave Application"
            OnClick="btnSubmit_Click" />

        <br />
        <br />

        <asp:Label
            ID="confirmationMessage"
            runat="server"
            Text="Leave Application Submitted Successfully!"
            Visible="false">
        </asp:Label>

    </div>

</form>

</body>
</html>