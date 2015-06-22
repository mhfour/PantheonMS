using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PantheonCS.Models
{
    public interface IStaffRepository
    {
        IEnumerable<Staff> GetAll();
		Staff GetById(int staff_id);
		Staff AddStaff(Staff item);
        bool Update(Booking item);
    }
}