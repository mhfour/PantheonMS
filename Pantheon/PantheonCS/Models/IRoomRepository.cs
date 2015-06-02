using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PantheonCS.Models
{
    public interface IRoomRepository
    {
        IEnumerable<Room> GetAll();
        Room GetById(int id);
        bool Update(Room item);
    }
}