using Pantheon.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pantheon
{
    public partial class StatusChange : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Force the __doPostBack() js function to be generated. Having one ASP web control will generate it but I didn't use any.
            this.Page.ClientScript.GetPostBackEventReference(this, string.Empty);

            // Programmatically add a server click handler to a HTML server control.
            btnSubmit.ServerClick += new EventHandler(btnSubmit_ServerClick);
        }
        protected void btnSubmit_ServerClick(object sender, EventArgs e)
        {
            HttpClient client = new HttpClient();

            client.BaseAddress = new Uri("http://localhost:8000/");

            // Add an Accept header for JSON format. 
            client.DefaultRequestHeaders.Accept.Add(
                new MediaTypeWithQualityHeaderValue("application/json"));

            var r = new Room();

            int roomid = Int32.Parse(Request.QueryString["id"].ToString());

            r.roomid = roomid;
            r.roomstatus = ddlStatus.Value;

            HttpResponseMessage response = client.PutAsJsonAsync("api/room?id=" + r.roomid, r).Result;

            if (response.IsSuccessStatusCode)
            {
                Session["success"] = true;
                Response.Redirect("~/RoomStatus.aspx");
            }
            else
            {
                alertFail.Visible = true;
                alertSuccess.Visible = false;
            }
        }
    }
}