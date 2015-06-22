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
    public class StaffController : ApiController {
        private StaffRepository repo = new StaffRepository();

        public IEnumerable<Staff> GetAll() {
            return repo.GetAll();
        }
		public Staff GetStaff(int id) {
            return repo.GetById(id);
        }

        [HttpPost]
		public HttpResponseMessage AddStaff(Staff item) {
			repo.AddStaff(item);
            return new HttpResponseMessage(HttpStatusCode.Accepted);
        }
        
		[HttpPut]
		public bool UpdateBooking(int staff_id, Staff s) {
            return repo.Update(s);
        }
    }
}
