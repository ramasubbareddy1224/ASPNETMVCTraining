namespace ShoppingCart.BusinessModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CustomerRole")]
    public class CustomerRoleBO
    {
        public CustomerRoleBO()
        {
            Customers = new HashSet<CustomerBO>();
        }

        public int ID { get; set; }

        [Required]
        [StringLength(50)]
        public string RoleName { get; set; }

        public bool IsActive { get; set; }

        public int? CreatedBy { get; set; }

        public DateTime CreatedOn { get; set; }

        public int? ModifiedBy { get; set; }

        public DateTime ModifiedOn { get; set; }

        public virtual ICollection<CustomerBO> Customers { get; set; }
    }
}
