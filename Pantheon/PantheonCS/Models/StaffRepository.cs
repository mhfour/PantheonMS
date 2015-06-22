using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PantheonCS.Models;

namespace PantheonCS.Models
{
	public class StaffRepository : IStaffRepository
    {
        public StaffRepository()
        {
        }

        public IEnumerable<Staff> GetAll() {
            return StaffDBManager.GetAllStaff().Cast<Staff>();
        }

		public Staff GetById(int staff_id) {
			return StaffDBManager.GetStaffById(staff_id);
        }

		public Staff AddStaff(Staff item) {
            if (item == null) {
                throw new ArgumentNullException("item");
            }

			if (StaffDBManager.AddStaff(item) == 0) {
                return null;
            } else {
                return item;
            }
        }

		public bool Update(Staff item) {
            if (item == null) {
                throw new ArgumentNullException("item");
            } if (StaffDBManager.Update(item) == 0) {
                return false;
            } else {
                return true;
            }
        }
    }
}