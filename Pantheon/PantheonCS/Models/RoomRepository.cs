using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PantheonCS.Models
{
    public class RoomRepository : IRoomRepository
    {
        public RoomRepository()
        {
        }
        public IEnumerable<Room> GetAll()
        {
            return RoomDBManager.GetAllRooms().Cast<Room>();
        }
        public Room GetById(int id)
        {
            return RoomDBManager.GetRoomById(id);
        }
        public bool Update(Room item)
        {
            if (item == null)
            {
                throw new ArgumentNullException("item");
            }
            if (RoomDBManager.UpdateStatus(item) == 0)
            {
                return false;
            }
            else
            {
                return true;
            }
        }
    }
}