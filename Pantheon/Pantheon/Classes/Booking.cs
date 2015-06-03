using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Pantheon.Classes
{
    public class Booking
    {
        public int guestname
        {
            get;
            set;
        }
        public String roomtype
        {
            get;
            set;
        }
        public String roomunit
        {
            get;
            set;
        }
        public int noofadults
        {
            get;
            set;
        }
        public int noofchildren
        {
            get;
            set;
        }
        public DateTime checkindatetime
        {
            get;
            set;
        }
        public DateTime checkoutdate
        {
            get;
            set;
        }
    }
}