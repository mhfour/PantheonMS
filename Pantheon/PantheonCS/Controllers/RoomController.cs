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
    public class RoomController : ApiController
    {
        private RoomRepository repo = new RoomRepository();

        public IEnumerable<Room> GetAll()
        {
            return repo.GetAll();
        }
        public Room GetRoom(int id)
        {
            return repo.GetById(id);
        }
        [HttpPut]
        public bool PutCategory(int id, Room rm)
        {
            return repo.Update(rm);
        }
    }
}
