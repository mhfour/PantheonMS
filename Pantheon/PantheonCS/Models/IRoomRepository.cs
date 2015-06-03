using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PantheonCS.Models
{
    public interface IRoomRepository
    {
        IEnumerable<Room> GetAll();
        Room GetById(int id);
        bool Update(Room item);
    }
}