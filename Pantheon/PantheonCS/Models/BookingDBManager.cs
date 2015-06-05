using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Collections;
using System.Data.SqlClient;
using System.Configuration;

namespace PantheonCS.Models
{
    public class BookingDBManager
    {
        public static ArrayList GetAllBookings()
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
                comm.CommandText = "SELECT * from dbo.Booking";
                SqlDataReader dr = comm.ExecuteReader();
                while (dr.Read())
                {
                    Booking b = new Booking();
                    b.bookingid = (int)dr["booking_id"];
                    b.guestname = (String)dr["guest_name"];
                    b.roomunit = (String)dr["room_unit"];
                    b.roomtype = (String)dr["room_type"];
                    b.noofadults = (int)dr["no_of_adults"];
                    b.noofchildren = (int)dr["no_of_children"];
                    b.checkindatetime = DateTime.Parse(dr["check_in_datetime"].ToString());
                    b.checkoutdatetime = DateTime.Parse(dr["check_out_datetime"].ToString());
                    result.Add(b);
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
        public static Booking GetBookingById(int id)
        {
            Booking b = null;
            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["PantheonDB"].ConnectionString;
                conn.Open();
                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = "SELECT * FROM dbo.Booking WHERE booking_id=@booking_id";
                comm.Parameters.AddWithValue("@booking_id", id);
                SqlDataReader dr = comm.ExecuteReader();
                if (dr.Read())
                {
                    b = new Booking();
                    b.bookingid = (int)dr["booking_id"];
                    b.guestname = (String)dr["guest_name"];
                    b.roomunit = (String)dr["room_unit"];
                    b.roomtype = (String)dr["room_type"];
                    b.noofadults = (int)dr["no_of_adults"];
                    b.noofchildren = (int)dr["no_of_children"];
                    b.checkindatetime = DateTime.Parse(dr["check_in_datetime"].ToString());
                    b.checkoutdatetime = DateTime.Parse(dr["check_out_datetime"].ToString());
                }
                dr.Close();
                conn.Close();
            }
            catch (SqlException e)
            {
                throw e;
            }
            return b;
        }
        public static int AddBooking(Booking b)
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
                comm.CommandText = "INSERT INTO Booking(guest_name, room_unit, room_type, no_of_adults, no_of_children, check_in_datetime, check_out_datetime)" +
                    " VALUES (@guest_name, @room_unit, @room_type , @no_of_adults, @no_of_children, @check_in_datetime, @check_out_datetime)";

                comm.Parameters.AddWithValue("@guest_name", b.guestname);
                comm.Parameters.AddWithValue("@room_unit", b.roomunit);
                comm.Parameters.AddWithValue("@room_type", b.roomtype);
                comm.Parameters.AddWithValue("@no_of_adults", b.noofadults);
                comm.Parameters.AddWithValue("@no_of_children", b.noofchildren);
                comm.Parameters.AddWithValue("@check_in_datetime", b.checkindatetime);
                comm.Parameters.AddWithValue("@check_out_datetime", b.checkoutdatetime);
                rowsinserted = comm.ExecuteNonQuery();
                conn.Close();
            }
            catch (SqlException e)
            {
                throw e;
            }
            return rowsinserted;
        }
        public static int Update(Booking bk)
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
                comm.CommandText = "UPDATE dbo.Booking SET room_unit=@room_unit, room_type=@room_type, check_out_datetime=@check_out_datetime where bookingid=@booking_id";
                comm.Parameters.AddWithValue("@room_unit", bk.roomunit);
                comm.Parameters.AddWithValue("@room_type", bk.roomtype);
                comm.Parameters.AddWithValue("@check_out_datetime", bk.checkoutdatetime);
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
