namespace ShoppingCart.BusinessModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("CustomerAddress")]
    public class CustomerBO
    {
        public CustomerBO()
        {
            Carts = new HashSet<CartBO>();
            ShippingAddresses = new HashSet<ShippingAddressBO>();
            CustomerAddresses = new HashSet<CustomerAddressBO>();
            OrderHistories = new HashSet<OrderHistoryBO>();
        }

        public int ID { get; set; }

        [Required]
        [StringLength(200)]
        public string NAME { get; set; }

        [Required]
        [StringLength(200)]
        public string Email { get; set; }

        [Required]
        [StringLength(50)]
        public string Password { get; set; }

        [Required]
        [StringLength(10)]
        public string Phone { get; set; }

        public int? RoleID { get; set; }

        public bool? IsActive { get; set; }

        public int? CreatedBy { get; set; }

        public DateTime CreatedOn { get; set; }

        public int? ModifiedBy { get; set; }

        public DateTime ModifiedOn { get; set; }

        public virtual ICollection<CartBO> Carts { get; set; }

        public virtual CustomerRoleBO CustomerRole { get; set; }

        public virtual ICollection<ShippingAddressBO> ShippingAddresses { get; set; }

        public virtual ICollection<CustomerAddressBO> CustomerAddresses { get; set; }

        public virtual ICollection<OrderHistoryBO> OrderHistories { get; set; }
    }
}
