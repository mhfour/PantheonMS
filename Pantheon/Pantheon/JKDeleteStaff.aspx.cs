using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pantheon {
	public partial class JKDeleteStaff : System.Web.UI.Page {
		protected void Page_Load(object sender, EventArgs e) {

		}

		protected void ButtonDelete_Click(object sender, EventArgs e) {
			
			string nric = TextBox1.Text;
			SqlConnection con = new SqlConnection();
			con.ConnectionString = "Server=.\\SQLExpress;Database=PantheonDB;Trusted_Connection=True;Integrated Security=SSPI;";

			string query = "DELETE FROM dbo.Staff WHERE nric = @nric";

			using (SqlCommand command = new SqlCommand(query, con)) {
				//a shorter syntax to adding parameters
				command.Parameters.AddWithValue("@nric", nric);

				//make sure you open and close(after executing) the connection
				try {
					con.Open();
					command.ExecuteNonQuery();
					con.Close();
					Response.Redirect("JKViewStaff.aspx", false);
				} catch (Exception ex) {
					this.Session["There is no such NRIC in our database. Please try another NRIC."] = ex.Message;
					Response.Redirect("ErrorDisplay.aspx");
				}
			}
		}
	}
}