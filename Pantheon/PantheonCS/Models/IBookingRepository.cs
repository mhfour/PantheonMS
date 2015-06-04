using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PantheonCS.Models
{
    public interface IBookingRepository
    {
        IEnumerable<Booking> GetAll();
        Booking GetById(int id);
        Booking AddBooking(Booking item);
        bool Update(Booking item);
    }
}