using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChallengeEpicSpiesAssignment
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) // logic to avoid user-selected calendar dates being reset by post-back events
            {
                previousCalendar.SelectedDate = DateTime.Now.Date;
                startCalendar.SelectedDate = DateTime.Now.Date.AddDays(14);
                startCalendar.VisibleDate = startCalendar.SelectedDate;
                endCalendar.SelectedDate = DateTime.Now.Date.AddDays(21);
                endCalendar.VisibleDate = endCalendar.SelectedDate;
            }
        }

        protected void assignButton_Click(object sender, EventArgs e)
        {
            const double RATE = 500.0;
            const double BONUS = 1000.0;

            // Calculate duration of assignment
            TimeSpan totalAssignmentDuration = endCalendar.SelectedDate.Subtract(startCalendar.SelectedDate);

            // Spies cost $500 per day
            double totalCost = totalAssignmentDuration.TotalDays * RATE;

            // If assignment is longer than 21 days, include $1000 bonus
            if (totalAssignmentDuration.TotalDays > 21) totalCost += BONUS;

            resultLabel.Text = $"Assignment of {nameTextBox.Text} to assignment " +
                $"{assignmentTextBox.Text} is authorized. Budget total: {totalCost:C}.";

            TimeSpan timeBetweenAssigments = startCalendar.SelectedDate.Subtract(previousCalendar.SelectedDate);
            if (timeBetweenAssigments.TotalDays < 14)
            {
                resultLabel.Text = "Must allow at least two weeks between previous " +
                    "assignment and new assignment.";

                DateTime earliestNewAssignmentDate = previousCalendar.SelectedDate.AddDays(14);

                startCalendar.SelectedDate = earliestNewAssignmentDate;
                startCalendar.VisibleDate = earliestNewAssignmentDate;
            }
        }
    }
}