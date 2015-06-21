using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pantheon {
	public partial class JKViewStaff : System.Web.UI.Page {
		protected void Page_Load(object sender, EventArgs e) {
			if (!Page.IsPostBack) {

				SqlConnection con = new SqlConnection();
				con.ConnectionString = "Server=.\\SQLExpress;Database=PantheonDB;Trusted_Connection=True;Integrated Security=SSPI;";

				SqlDataAdapter ada = new SqlDataAdapter("SELECT * FROM Staff", con);
				//Create a new table
				DataTable dt = new DataTable();
				//Add data to the table
				ada.Fill(dt);

				//Persist the table in the Session object.
				Session["StaffList"] = dt;

				//Bind data to the GridView control.
				BindData();
			}

		}
		private void BindData() {
			GridViewStaff.DataSource = Session["StaffList"];
			GridViewStaff.DataBind();
		}
		protected void ButtonBookingSchedule_Click(object sender, EventArgs e) {
			Response.Redirect("BookingDetails.aspx", true);
		}

		protected void ButtonStaff_Click(object sender, EventArgs e) {
			Response.Redirect("JKViewStaff.aspx", true);
		}

		protected void ButtonDS_Click(object sender, EventArgs e) {
			Response.Redirect("JKViewDS.aspx", true);
		}

		protected void ButtonGuest_Click(object sender, EventArgs e) {
			Response.Redirect("GuestDetails.aspx", true);
		}

		protected void ButtonAdd_Click(object sender, EventArgs e) {
			Response.Redirect("JKAddStaff.aspx", true);
		}

		protected void ButtonDelete_Click(object sender, EventArgs e) {
			Response.Redirect("JKDeleteStaff.aspx", true);
		}

		protected void ButtonEdit_Click(object sender, EventArgs e) {
			Response.Redirect("JKUpdateStaff.aspx", true);
		}



	}
}