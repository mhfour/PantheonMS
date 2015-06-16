using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Pantheon.Classes;
using System.Globalization;
using System.Net.Http;
using System.Net.Http.Headers;

namespace Pantheon
{
    public partial class EditBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Request.Params["id"] != null)
                {
                    int id = Int32.Parse(Request.Params["id"]);

                    HttpClient client = new HttpClient();

                    client.BaseAddress = new Uri("http://localhost:8000/"); // Our API URL. 

                    // Add an Accept header for JSON format. 
                    client.DefaultRequestHeaders.Accept.Add(
                        new MediaTypeWithQualityHeaderValue("application/json"));

                    var b = new Booking();
                    HttpResponseMessage response = client.GetAsync("api/booking?id=" + id).Result;

                    if (response.IsSuccessStatusCode)
                    {
                        Booking responseBody = response.Content.ReadAsAsync<Booking>().Result;

                        tbxRoomUnit.Value = responseBody.roomunit;
                        tbxRoomType.Value = responseBody.roomtype;
                    }
                }
            }
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            HttpClient client = new HttpClient();

            client.BaseAddress = new Uri("http://localhost:8000/"); // Our API URL. 

            // Add an Accept header for JSON format. 
            client.DefaultRequestHeaders.Accept.Add(
                new MediaTypeWithQualityHeaderValue("application/json"));

            var b = new Booking();

            int bookingId = Int32.Parse(Request.QueryString["id"].ToString());

            b.bookingid = bookingId;
            b.roomunit = tbxRoomUnit.Value;
            b.roomtype = tbxRoomType.Value;

            HttpResponseMessage response = client.PutAsJsonAsync("api/booking?id=" + b.bookingid, b).Result;

            if (response.IsSuccessStatusCode)
            {
                Session["success"] = true;
                Response.Redirect("~/Admin/BookingDetails.aspx");
            }
            else
            {
                alertFail.Visible = true;
            }
        }
    }
}
