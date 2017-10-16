namespace ShoppingCart.BusinessModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Product")]
    public class ProductBO
    {
        public ProductBO()
        {
            Carts = new HashSet<CartBO>();
            OrderHistories = new HashSet<OrderHistoryBO>();
        }

        public int ID { get; set; }

        [Required]
        [StringLength(200)]
        public string Name { get; set; }

        [Required]
        public string Description { get; set; }

        public decimal Price { get; set; }

        public int CategoryId { get; set; }

        public bool IsActive { get; set; }

        public int? CreatedBy { get; set; }

        public DateTime CreatedOn { get; set; }

        public int? ModifiedBy { get; set; }

        public DateTime ModifiedOn { get; set; }

        public virtual ICollection<CartBO> Carts { get; set; }

        public virtual CategoryBO Category { get; set; }

        public virtual ICollection<OrderHistoryBO> OrderHistories { get; set; }
    }
}
