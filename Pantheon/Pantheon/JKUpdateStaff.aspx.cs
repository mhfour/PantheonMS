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
			string nric = TextBox1.Text;
			string first_name = TextBox2.Text;
			string last_name = TextBox3.Text;
			string date_of_birth = TextBox4.Text;
			string address = TextBox5.Text;
			string postal_code = TextBox6.Text;
			string contact_no = TextBox7.Text;
			string email = TextBox8.Text;
			string bank = TextBox9.Text;
			string bank_no = TextBox10.Text;
			int duty_id = Convert.ToInt32(TextBox11.Text);
			string password = TextBox12.Text;

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
					Response.Redirect("ErrorDisplay.aspx");
				}
			}
		}

		protected void TextBox3_TextChanged(object sender, EventArgs e) {
			SqlConnection con = new SqlConnection();
			con.ConnectionString = "Server=.\\SQLExpress;Database=PantheonDB;Trusted_Connection=True;Integrated Security=SSPI;";

			SqlDataAdapter ada = new SqlDataAdapter("SELECT * FROM Staff WHERE nric="+TextBox3.Text+";", con);

			//Create a new table
			DataTable dt = new DataTable();
			//Add data to the table
			ada.Fill(dt);
			DataRow dr = dt.Rows[0];
			TextBox1.Text = dr["nric"].ToString();
			TextBox2.Text = dr["first_name"].ToString();
			TextBox3.Text = dr["last_name"].ToString();
			TextBox4.Text = dr["date_of_birth"].ToString();
			TextBox5.Text = dr["address"].ToString();
			TextBox6.Text = dr["postal_code"].ToString();
			TextBox7.Text = dr["contact_no"].ToString();
			TextBox8.Text = dr["email"].ToString();
			TextBox9.Text = dr["bank"].ToString();
			TextBox10.Text = dr["bank_no"].ToString();
			TextBox11.Text = dr["duty_id"].ToString();
			TextBox12.Text = dr["password"].ToString();	

		}
	}
}