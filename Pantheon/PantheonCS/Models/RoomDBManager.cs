using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Collections;
using System.Data.SqlClient;
using System.Configuration;

namespace PantheonCS.Models
{
    public class RoomDBManager
    {
        public static ArrayList GetAllRooms()
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
                comm.CommandText = "SELECT * from dbo.Room";
                SqlDataReader dr = comm.ExecuteReader();
                while (dr.Read())
                {
                    Room r = new Room();
                    r.roomid = (int)dr["room_id"];
                    r.roomlvl = (int)dr["room_level"];
                    r.roomunit = (String)dr["room_unit"];
                    r.roomtype = (String)dr["room_type"];
                    r.roomstatus = (String)dr["room_status"];
                    result.Add(r);
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
        public static Room GetRoomById(int id)
        {
            Room r = null;
            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["PantheonDB"].ConnectionString;
                conn.Open();
                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = "SELECT * FROM dbo.Room WHERE roomid=@room_id";
                comm.Parameters.AddWithValue("@room_id", id);
                SqlDataReader dr = comm.ExecuteReader();
                if (dr.Read())
                {
                    r = new Room();
                    r.roomid = (int)dr["room_id"];
                    r.roomlvl = (int)dr["room_level"];
                    r.roomunit = (String)dr["room_unit"];
                    r.roomtype = (String)dr["room_type"];
                    r.roomstatus = (String)dr["room_status"];
                }
                dr.Close();
                conn.Close();
            }
            catch (SqlException e)
            {
                throw e;
            }
            return r;
        }
        public static int UpdateStatus(Room item)
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
                comm.CommandText = "UPDATE dbo.Room SET roomlvl=@room_level, roomunit=@room_unit, roomtype=@room_type, roomstatus=@room_status  where roomid=@room_id";
                comm.Parameters.AddWithValue("@room_level", item.roomlvl);
                comm.Parameters.AddWithValue("@room_unit", item.roomunit);
                comm.Parameters.AddWithValue("@room_type", item.roomtype);
                comm.Parameters.AddWithValue("@room_status", item.roomstatus);
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