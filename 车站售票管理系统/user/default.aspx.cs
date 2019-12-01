using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_default : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{

	}
	protected void imgbtnCalendar_Click(object sender, ImageClickEventArgs e)
	{
		Calendar1.Visible = !Calendar1.Visible;
	}

	protected void Calendar1_SelectionChanged(object sender, EventArgs e)
	{
		txtTime.Text = Calendar1.SelectedDate.ToString();
		Calendar1.Visible = false;
	}
}