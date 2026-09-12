using System;
using System.Web;
using System.Web.UI;

namespace LAB5
{
    public partial class Leave : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Get selected date from Session
                if (Session["date"] != null)
                {
                    DateTime dt = (DateTime)Session["date"];

                    Dateselected.Text =
                        dt.ToShortDateString();
                }
                else
                {
                    Dateselected.Text =
                        "No date selected.";
                }

                // Get applicant name from Cookie
                if (Request.Cookies["ApplicantName"] != null)
                {
                    name.Text =
                        Request.Cookies["ApplicantName"].Value;
                }

                confirmationMessage.Visible = false;
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Store leave information in Session

            Session["ApplicantName"] = name.Text;

            Session["LeaveType"] =
                leaveType.SelectedValue;

            Session["Reason"] =
                reason.Text;

            Session["LoadAdjusted"] =
                loadAdjusted.Text;


            // Create Cookie for Applicant Name

            HttpCookie cookie =
                new HttpCookie("ApplicantName");

            cookie.Value = name.Text;

            cookie.Expires =
                DateTime.Now.AddDays(30);

            Response.Cookies.Add(cookie);


            // Redirect back to Default.aspx

            Response.Redirect("Default.aspx");
        }
    }
}