using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pantheon {
	public partial class JKUpdateStaff : System.Web.UI.Page {
		protected void Page_Load(object sender, EventArgs e) {

		}

		protected void ButtonUpdate_Click(object sender, EventArgs e) {
			string nric = TextBoxNRIC.Text;
			string first_name = TextBoxFirstName.Text;
			string last_name = TextBoxLastName.Text;
			string date_of_birth = TextBoxDoB.Text;
			string address = TextBoxAddress.Text;
			string postal_code = TextBoxPostal.Text;
			string contact_no = TextBoxContactNo.Text;
			string email = TextBoxEmail.Text;
			string bank = TextBoxBank.Text;
			string bank_no = TextBoxBankNo.Text;
			int duty_id = Convert.ToInt32(TextBoxDutyID.Text);
			string password = TextBoxPassword.Text;

			SqlConnection con = new SqlConnection();
			con.ConnectionString = "Server=.\\SQLExpress;Database=PantheonDB;Trusted_Connection=True;Integrated Security=SSPI;";
			string query ="UPDATE dbo.Staff SET first_name=@first_name,last_name=@last_name,"+
				"date_of_birth=@date_of_birth,address=@address,postal_code=@postal_code,"+
				"contact_no=@contact_no,email=@email,bank=@bank,bank_no=@bank_no,duty_id=@duty_id,password=@password"+
				"WHERE nric = @nric";
			
			using (SqlCommand command = new SqlCommand(query, con)) {
				//a shorter syntax to adding parameters
				command.Parameters.AddWithValue("@nric", nric);
				command.Parameters.AddWithValue("@first_name", first_name);
				command.Parameters.AddWithValue("@last_name", last_name);
				command.Parameters.AddWithValue("@date_of_birth", date_of_birth);
				command.Parameters.AddWithValue("@address", address);
				command.Parameters.AddWithValue("@postal_code", postal_code);
				command.Parameters.AddWithValue("@contact_no", contact_no);
				command.Parameters.AddWithValue("@email", email);
				command.Parameters.AddWithValue("@bank", bank);
				command.Parameters.AddWithValue("@bank_no", bank_no);
				command.Parameters.AddWithValue("@duty_id", duty_id);
				command.Parameters.AddWithValue("@password", password);

				//make sure you open and close(after executing) the connection
				try {
					con.Open();
					command.ExecuteNonQuery();
					con.Close();
					Response.Redirect("JKViewStaff.aspx", false);
				} catch (Exception ex) {
					this.Session["There is no such NRIC in our database. Please try another NRIC."] = ex.Message;
					//Response.Redirect("ErrorDisplay.aspx");
				}
			}
		}

		protected void ButtonLoadData_Click(object sender, EventArgs e) {
			SqlConnection con = new SqlConnection();
			con.ConnectionString = "Server=.\\SQLExpress;Database=PantheonDB;Trusted_Connection=True;Integrated Security=SSPI;";

			SqlDataAdapter ada = new SqlDataAdapter("SELECT first_name, last_name, date_of_birth, address, postal_code, contact_no, email, bank, bank_no, duty_id, password FROM Staff WHERE nric= '" + TextBoxNRIC.Text + "';", con);

			//Create a new table
			DataTable dt = new DataTable();
			//Add data to the table
			ada.Fill(dt);
			DataRow dr = dt.Rows[0];
			//TextBoxNRIC.Text = dr["nric"].ToString();
			TextBoxFirstName.Text = dr["first_name"].ToString();
			TextBoxLastName.Text = dr["last_name"].ToString();
			TextBoxDoB.Text = dr["date_of_birth"].ToString();
			TextBoxAddress.Text = dr["address"].ToString();
			TextBoxPostal.Text = dr["postal_code"].ToString();
			TextBoxContactNo.Text = dr["contact_no"].ToString();
			TextBoxEmail.Text = dr["email"].ToString();
			TextBoxBank.Text = dr["bank"].ToString();
			TextBoxBankNo.Text = dr["bank_no"].ToString();
			TextBoxDutyID.Text = dr["duty_id"].ToString();
			TextBoxPassword.Text = dr["password"].ToString();	


		}
	}
}