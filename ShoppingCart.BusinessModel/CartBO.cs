using System.ComponentModel.DataAnnotations.Schema;

namespace ShoppingCart.BusinessModel
{
    [Table("Cart")]
    public class CartBO : BaseBO
    {
        public int ID { get; set; }

        public int? ProductId { get; set; }

        public int? CustomerId { get; set; }

        public int Quantity { get; set; }

        public decimal Price { get; set; }

        public virtual CustomerBO Customer { get; set; }

        public virtual ProductBO Product { get; set; }
    }
}
