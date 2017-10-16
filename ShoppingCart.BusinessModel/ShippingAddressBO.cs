namespace ShoppingCart.BusinessModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ShippingAddress")]
    public class ShippingAddressBO
    {
        public int ID { get; set; }

        [Required]
        [StringLength(200)]
        public string NAME { get; set; }

        [Required]
        [StringLength(200)]
        public string Email { get; set; }

        [Required]
        [StringLength(10)]
        public string Phone { get; set; }

        [Required]
        [StringLength(500)]
        public string Address1 { get; set; }

        [StringLength(500)]
        public string Address2 { get; set; }

        [Required]
        [StringLength(20)]
        public string STATE { get; set; }

        public int PinCode { get; set; }

        public int? CustomerId { get; set; }

        public bool? IsActive { get; set; }

        public int? CreatedBy { get; set; }

        public DateTime CreatedOn { get; set; }

        public int? ModifiedBy { get; set; }

        public DateTime ModifiedOn { get; set; }

        public virtual CustomerBO Customer { get; set; }
    }
}
