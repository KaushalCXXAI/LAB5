using System;
using System.Web.UI;

namespace LAB5
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                selectedDate.Text = "Please select a date.";

                // Check if leave has already been applied
                if (Session["ApplicantName"] != null)
                {
                    leaveDetailsPanel.Visible = true;

                    // Display applicant name
                    applicantName.Text = Session["ApplicantName"].ToString();

                    // Display selected leave date
                    if (Session["date"] != null)
                    {
                        DateTime dt = (DateTime)Session["date"];
                        leaveDate.Text = dt.ToShortDateString();
                    }

                    // Display leave type
                    if (Session["LeaveType"] != null)
                    {
                        displayLeaveType.Text =
                            Session["LeaveType"].ToString();
                    }

                    // Display reason
                    if (Session["Reason"] != null)
                    {
                        displayReason.Text =
                            Session["Reason"].ToString();
                    }

                    // Display load adjusted with
                    if (Session["LoadAdjusted"] != null)
                    {
                        displayLoadAdjusted.Text =
                            Session["LoadAdjusted"].ToString();
                    }
                }
            }
        }

        protected void Calendar1_SelectionChanged(
            object sender,
            EventArgs e)
        {
            DateTime selected = Calendar1.SelectedDate;

            // Store selected date in Session
            Session["date"] = selected;

            selectedDate.Text =
                "Selected Date: " +
                selected.ToShortDateString();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Check if date is selected
            if (Calendar1.SelectedDate == DateTime.MinValue)
            {
                selectedDate.Text =
                    "Please select a date first.";

                return;
            }

            // Go to Leave page
            Response.Redirect("Leave.aspx");
        }
    }
}