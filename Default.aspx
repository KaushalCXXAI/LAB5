<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LAB5.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Academic Calendar</title>
</head>

<body>

<form id="form1" runat="server">

    <div>

        <h1>Academic Calendar & Leave Management System</h1>

        <h2>Select Leave Date</h2>

        <asp:Calendar
            ID="Calendar1"
            runat="server"
            OnSelectionChanged="Calendar1_SelectionChanged">
        </asp:Calendar>

        <br />

        <asp:Label
            ID="selectedDate"
            runat="server"
            Text="Please select a date.">
        </asp:Label>

        <br />
        <br />

        <asp:Button
            ID="btnSubmit"
            runat="server"
            Text="Apply for Leave"
            OnClick="btnSubmit_Click" />

        <br />
        <br />

        <asp:Panel
            ID="leaveDetailsPanel"
            runat="server"
            Visible="false">

            <h2>Applied Leave Details</h2>

            <asp:Label
                ID="lblApplicant"
                runat="server"
                Text="Applicant Name: ">
            </asp:Label>

            <asp:Label
                ID="applicantName"
                runat="server">
            </asp:Label>

            <br />
            <br />

            <asp:Label
                ID="lblLeaveDate"
                runat="server"
                Text="Leave Date: ">
            </asp:Label>

            <asp:Label
                ID="leaveDate"
                runat="server">
            </asp:Label>

            <br />
            <br />

            <asp:Label
                ID="lblLeaveType"
                runat="server"
                Text="Leave Type: ">
            </asp:Label>

            <asp:Label
                ID="displayLeaveType"
                runat="server">
            </asp:Label>

            <br />
            <br />

            <asp:Label
                ID="lblReason"
                runat="server"
                Text="Reason: ">
            </asp:Label>

            <asp:Label
                ID="displayReason"
                runat="server">
            </asp:Label>

            <br />
            <br />

            <asp:Label
                ID="lblLoadAdjusted"
                runat="server"
                Text="Load Adjusted With: ">
            </asp:Label>

            <asp:Label
                ID="displayLoadAdjusted"
                runat="server">
            </asp:Label>

        </asp:Panel>

    </div>

</form>

</body>
</html>