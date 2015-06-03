using PantheonCS.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;

namespace PantheonCS.Controllers
{
    [EnableCors(origins: "http://localhost:5000", headers: "*", methods: "*")]
    public class BookingController : ApiController
    {
        private BookingRepository repo = new BookingRepository();

        public IEnumerable<Booking> GetAll()
        {
            return repo.GetAll();
        }
        public Booking GetBooking(int id)
        {
            return repo.GetById(id);
        }
        [HttpPost]
        public HttpResponseMessage AddBooking(Booking item)
        {
            repo.AddBooking(item);
            return new HttpResponseMessage(HttpStatusCode.Accepted);
        }
        [HttpPut]
        public bool UpdateBooking(int id, Booking rm)
        {
            return repo.Update(rm);
        }
    }
}
