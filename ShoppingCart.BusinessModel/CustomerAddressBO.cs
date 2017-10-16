namespace ShoppingCart.BusinessModel
{

    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    [Table("CustomerAddress")]
    public class CustomerAddressBO
    {
        public int ID { get; set; }

        [Required]
        [StringLength(100)]
        public string Name { get; set; }

        [Required]
        [StringLength(50)]
        public string Email { get; set; }

        [Required]
        [StringLength(10)]
        public string Phone { get; set; }

        [Required]
        [StringLength(500)]
        public string Address1 { get; set; }

        [StringLength(500)]
        public string Address2 { get; set; }

        public int PinCode { get; set; }

        public int CustomerId { get; set; }

        public virtual CustomerBO Customer { get; set; }
    }
}
