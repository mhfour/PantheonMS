using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PantheonCS.Models
{
	public class Staff
    {
		public int staff_id {
            get;
            set;
        }

		public String nric {
			get;
			set;
		}

        public String first_name {
            get;
            set;
        }

        public String last_name {
            get;
            set;
        }

        public String date_of_birth {
            get;
            set;
        }

        public String address {
            get;
            set;
        }

        public String postal_code {
            get;
            set;
        }

        public String contact_no {
            get;
            set;
        }

        public String email {
            get;
            set;
        }
 
		public String bank {
			get;
			set;
		}

		public String bank_no {
			get;
			set;
		}

		public int duty_id {
			get;
			set;
		}

		public String password {
			get;
			set;
		}
    }
}