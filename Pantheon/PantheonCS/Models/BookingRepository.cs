using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PantheonCS.Models
{
    public class BookingRepository : IRoomRepository
    {
        public BookingRepository()
        {
        }
        public IEnumerable<Booking> GetAll()
        {
            return BookingDBManager.GetAllBookings().Cast<Booking>();
        }
        public Booking GetById(int id)
        {
            return BookingDBManager.GetBookingById(id);
        }
        public Booking AddBooking(Booking item)
        {
            if (item == null)
            {
                throw new ArgumentNullException("item");
            }
            if (BookingDBManager.AddBooking(item) == 0)
            {
                return null;
            }
            else
            {
                return item;
            }
        }
        public bool Update(Booking item)
        {
            if (item == null)
            {
                throw new ArgumentNullException("item");
            }
            if (BookingDBManager.Update(item) == 0)
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