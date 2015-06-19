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
		private void BindData() {
			GridView1.DataSource = Session["StaffList"];
			GridView1.DataBind();
		}
		protected void Button1_Click(object sender, EventArgs e) {
			Server.Transfer("BookingDetails.aspx", true);
		}

		protected void Button5_Click(object sender, EventArgs e) {
			Server.Transfer("GuestDetails.aspx", true);
		}

		protected void Button6_Click(object sender, EventArgs e) {
			Server.Transfer("JKViewStaff.aspx", true);
		}

		protected void Button7_Click(object sender, EventArgs e) {
			Server.Transfer("JsDutySchedule.aspx", true);
		}




	}
}