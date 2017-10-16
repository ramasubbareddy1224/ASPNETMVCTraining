namespace ShoppingCart.BusinessModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    [Table("Category")]
    public class CategoryBO : BaseBO
    {

        public CategoryBO()
        {
            Products = new HashSet<ProductBO>();
        }

        public int ID { get; set; }

        [Required]
        [StringLength(200)]
        public string Name { get; set; }

        public bool IsActive { get; set; }

        public int? CreatedBy { get; set; }

        public DateTime CreatedOn { get; set; }

        public int? ModifiedBy { get; set; }

        public DateTime ModifiedOn { get; set; }

        public virtual ICollection<ProductBO> Products { get; set; }
    }
}
