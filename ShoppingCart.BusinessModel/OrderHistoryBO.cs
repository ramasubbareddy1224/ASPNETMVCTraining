namespace ShoppingCart.BusinessModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("OrderHistory")]
    public class OrderHistoryBO
    {
        public int ID { get; set; }

        public int CustomerId { get; set; }

        public int ProductId { get; set; }

        public decimal Price { get; set; }

        [Required]
        [StringLength(50)]
        public string Status { get; set; }

        public virtual CustomerBO Customer { get; set; }

        public virtual ProductBO Product { get; set; }
    }
}
