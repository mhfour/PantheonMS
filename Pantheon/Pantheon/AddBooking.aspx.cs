using Pantheon.Classes;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pantheon
{
    public partial class AddBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btnSubmit.ServerClick += new EventHandler(btnSubmit_ServerClick);

        }

        protected void btnSubmit_ServerClick(object sender, EventArgs e)
        {
            Booking booking = new Booking();

            try
            {
                // Second layer of validation.
                //if (!string.IsNullOrEmpty(tbxCheckInDate.Value))
                //{

                booking.roomtype = tbxRoomType.Value;
                booking.roomunit = tbxRoomUnit.Value;
                var k = tbxCheckInDate.Value;
                booking.checkindatetime = DateTime.ParseExact(tbxCheckInDate.Value, "dd/MM/yyyy HH:mm", CultureInfo.CurrentCulture);
                booking.checkoutdatetime = DateTime.ParseExact(tbxCheckOutDate.Value, "dd/MM/yyyy HH:mm", CultureInfo.CurrentCulture);
                booking.noofadults = Int32.Parse(tbxAdults.Value);
                booking.noofchildren = Int32.Parse(tbxChildren.Value);

                booking.guestname = tbxGuestName.Value;



                HttpClient client = new HttpClient();

                client.BaseAddress = new Uri("http://localhost:8000/"); // Our API URL.
                // Add an Accept header for JSON format. 
                client.DefaultRequestHeaders.Accept.Add(
                    new MediaTypeWithQualityHeaderValue("application/json"));

                HttpResponseMessage response = client.PostAsJsonAsync("api/booking", booking).Result;
                if (response.IsSuccessStatusCode)
                {
                    //Uri gizmoUri = response.Headers.Location;
                    Session["success"] = true;
                    Response.Redirect("~/BookingDetails.aspx");
                }
                else
                {
                    alertFail.Visible = true;
                }
                //}
                //else
                //{
                //    alertFail.Visible = true;
                //    alertSuccess.Visible = false;
                //}
            }
            catch (Exception ex)
            {
                alertFail.Visible = true;
                alertSuccess.Visible = false;
            }
        }
    }
}