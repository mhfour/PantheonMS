using System;
using System.Collections.Generic;
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
			SqlDataAdapter ada = new SqlDataAdapter("UPDATE dbo.Staff SET nric=@nric,first_name=@first_name,last_name=@last_name,date_of_birth=@date_of_birth,address=@address,postal_code=@postal_code,contact_no=@contact_no,email=@email,bank=@bank,bank_no=@bank_no,duty_id=@duty_id,password=@password)", con);
		}
	}
}