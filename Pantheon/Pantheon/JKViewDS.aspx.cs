using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pantheon {
	public partial class JKViewDS : System.Web.UI.Page {
		protected void Page_Load(object sender, EventArgs e) {
			if (!Page.IsPostBack) {

				SqlConnection con = new SqlConnection();
				con.ConnectionString = "Server=.\\SQLExpress;Database=PantheonDB;Trusted_Connection=True;Integrated Security=SSPI;";

				SqlDataAdapter ada = new SqlDataAdapter("SELECT * FROM DutySchedule", con);
				//Create a new table
				DataTable dt = new DataTable();
				//Add data to the table
				ada.Fill(dt);

				//Persist the table in the Session object.
				Session["DSList"] = dt;

				//Bind data to the GridView control.
				BindData();
			}
		}
		private void BindData() {
			GridViewStaff.DataSource = Session["DSList"];
			GridViewStaff.DataBind();
		}
		protected void ButtonBookingSchedule_Click(object sender, EventArgs e) {
			Server.Transfer("BookingDetails.aspx", true);
		}

		protected void ButtonStaff_Click(object sender, EventArgs e) {
			Server.Transfer("JKViewStaff.aspx", true);
		}

		protected void ButtonDS_Click(object sender, EventArgs e) {
			Response.Redirect("JKViewDS.aspx", true);
		}

		protected void ButtonGuest_Click(object sender, EventArgs e) {
			Server.Transfer("GuestDetails.aspx", true);
		}



	}
}