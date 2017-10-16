using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ShoppingCart.BusinessModel
{
    public class CustomerBO : BaseBO
    {
        public int ID { get; set; }
        public string NAME { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string Phone { get; set; }
        public int RoleID { get; set; }

    }
}
