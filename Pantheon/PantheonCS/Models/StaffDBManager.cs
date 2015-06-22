using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Collections;
using System.Data.SqlClient;
using System.Configuration;

namespace PantheonCS.Models
{
	public class StaffDBManager
    {
		public static ArrayList GetAllStaff()
        {
            ArrayList result = new ArrayList();
            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["PantheonDB"].ConnectionString;
                conn.Open();
                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
				comm.CommandText = "SELECT * from dbo.Staff";
                SqlDataReader dr = comm.ExecuteReader();
                while (dr.Read())
                {
					Staff s = new Staff();
					s.staff_id = (int)dr["staff_id"];
					s.nric = (String)dr["nric"];
                    s.first_name = (String)dr["first_name"];
                    s.last_name = (String)dr["last_name"];
                    s.date_of_birth = (String)dr["date_of_birth"];
                    s.address = (String)dr["address"];
                    s.postal_code = (String)dr["postal_code"];
					s.contact_no = (String)dr["contact_no"];
					s.email = (String)dr["email"];
					s.bank = (String)dr["bank"];
					s.bank_no = (String)dr["bank_no"];
					s.duty_id = (int)dr["duty_id"];
					s.password = (String)dr["password"];
					result.Add(s);
                }
                dr.Close();
                conn.Close();
            }
            catch (SqlException e)
            {
                throw e;
            }
            return result;
        }
        public static Staff GetStaffById(int staff_id)
        {
            Staff s = null;
            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["PantheonDB"].ConnectionString;
                conn.Open();
                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = "SELECT * FROM dbo.Staff WHERE staff_id=@staff_id";
                comm.Parameters.AddWithValue("@staff_id", staff_id);
                SqlDataReader dr = comm.ExecuteReader();
                if (dr.Read())
                {
                    s = new Staff();
					s.staff_id = (int)dr["staff_id"];
					s.nric = (String)dr["nric"];
					s.first_name = (String)dr["first_name"];
					s.last_name = (String)dr["last_name"];
					s.date_of_birth = (String)dr["date_of_birth"];
					s.address = (String)dr["address"];
					s.postal_code = (String)dr["postal_code"];
					s.contact_no = (String)dr["contact_no"];
					s.email = (String)dr["email"];
					s.bank = (String)dr["bank"];
					s.bank_no = (String)dr["bank_no"];
					s.duty_id = (int)dr["duty_id"];
					s.password = (String)dr["password"];
                }
                dr.Close();
                conn.Close();
            }
            catch (SqlException e)
            {
                throw e;
            }
            return s;
        }
        public static int AddStaff(Staff s)
        {
            int rowsinserted = 0;

            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["PantheonDB"].ConnectionString;
                conn.Open();
                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = "INSERT INTO Staff(staff_id, nric, first_name, last_name, date_of_birth, address, postal_code, contact_no, email, bank, bank_no, duty_id, password)" +
					" VALUES (@staff_id, @nric, @first_name, @last_name, @date_of_birth, @address, @postal_code, @contact_no, @email, @bank, @bank_no, @duty_id, @password)";

                comm.Parameters.AddWithValue("@staff_id", s.staff_id);
                comm.Parameters.AddWithValue("@nric", s.nric);
                comm.Parameters.AddWithValue("@first_name", s.first_name);
                comm.Parameters.AddWithValue("@last_name", s.last_name);
                comm.Parameters.AddWithValue("@date_of_birth", s.date_of_birth);
                comm.Parameters.AddWithValue("@address", s.address);
                comm.Parameters.AddWithValue("@postal_code", s.postal_code);
				comm.Parameters.AddWithValue("@contact_no", s.contact_no);
				comm.Parameters.AddWithValue("@email", s.email);
				comm.Parameters.AddWithValue("@bank", s.bank);
				comm.Parameters.AddWithValue("@bank_no", s.bank_no);
				comm.Parameters.AddWithValue("@duty_id", s.duty_id);
				comm.Parameters.AddWithValue("@password", s.password);

                rowsinserted = comm.ExecuteNonQuery();
                conn.Close();
            }
            catch (SqlException e)
            {
                throw e;
            }
            return rowsinserted;
        }

        public static int Update(Staff s)
        {
            int rowsupdated = 0;

            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["PantheonDB"].ConnectionString;
                conn.Open();
                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
				comm.CommandText = "UPDATE dbo.Staff SET nric=@nric, first_name=@first_name, last_name=@last_name, date_of_birth=@date_of_birth, address=@address, postal_code=@postal_code, contact_no=@contact_no, email=@email, bank=@bank, bank_no=@bank_no, duty_id=@duty_id, password=@password where staff_id=@staff_id";
                comm.Parameters.AddWithValue("@staff_id", s.staff_id);
                comm.Parameters.AddWithValue("@nric", s.nric);
				comm.Parameters.AddWithValue("@first_name", s.first_name);
				comm.Parameters.AddWithValue("@last_name", s.last_name);
				comm.Parameters.AddWithValue("@date_of_birth", s.date_of_birth);
				comm.Parameters.AddWithValue("@address", s.address);
				comm.Parameters.AddWithValue("@postal_code", s.postal_code);
				comm.Parameters.AddWithValue("@contact_no", s.contact_no);
				comm.Parameters.AddWithValue("@email", s.email);
				comm.Parameters.AddWithValue("@bank", s.bank);
				comm.Parameters.AddWithValue("@bank_no", s.bank_no);
				comm.Parameters.AddWithValue("@duty_id", s.duty_id);
				comm.Parameters.AddWithValue("@password", s.password);
                rowsupdated = comm.ExecuteNonQuery();
                conn.Close();
            }
            catch (SqlException e)
            {
                throw e;
            }
            return rowsupdated;
        }
    }
}
