namespace ShoppingCart.BusinessModel
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public class ShoppingCartDBContext : DbContext
    {
        public ShoppingCartDBContext()
            : base("name=ShoppingCartDBContext")
        {
            Database.SetInitializer<ShoppingCartDBContext>(null);
        }

        public virtual DbSet<CartBO> Carts { get; set; }
        public virtual DbSet<CategoryBO> Categories { get; set; }
        public virtual DbSet<CustomerBO> Customers { get; set; }
        public virtual DbSet<CustomerAddressBO> CustomerAddresses { get; set; }
        public virtual DbSet<CustomerRoleBO> CustomerRoles { get; set; }
        public virtual DbSet<OrderHistoryBO> OrderHistories { get; set; }
        public virtual DbSet<ProductBO> Products { get; set; }
        public virtual DbSet<ShippingAddressBO> ShippingAddresses { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<CartBO>()
                .Property(e => e.Price)
                .HasPrecision(18, 0);

            modelBuilder.Entity<CategoryBO>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<CategoryBO>()
                .HasMany(e => e.Products)
                .WithRequired(e => e.Category)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<CustomerBO>()
                .Property(e => e.NAME)
                .IsUnicode(false);

            modelBuilder.Entity<CustomerBO>()
                .Property(e => e.Email)
                .IsUnicode(false);

            modelBuilder.Entity<CustomerBO>()
                .Property(e => e.Password)
                .IsUnicode(false);

            modelBuilder.Entity<CustomerBO>()
                .Property(e => e.Phone)
                .IsUnicode(false);

            modelBuilder.Entity<CustomerBO>()
                .HasMany(e => e.CustomerAddresses)
                .WithRequired(e => e.Customer)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<CustomerBO>()
                .HasMany(e => e.OrderHistories)
                .WithRequired(e => e.Customer)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<CustomerAddressBO>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<CustomerAddressBO>()
                .Property(e => e.Email)
                .IsUnicode(false);

            modelBuilder.Entity<CustomerAddressBO>()
                .Property(e => e.Phone)
                .IsUnicode(false);

            modelBuilder.Entity<CustomerAddressBO>()
                .Property(e => e.Address1)
                .IsUnicode(false);

            modelBuilder.Entity<CustomerAddressBO>()
                .Property(e => e.Address2)
                .IsUnicode(false);

            modelBuilder.Entity<CustomerRoleBO>()
                .Property(e => e.RoleName)
                .IsUnicode(false);

            modelBuilder.Entity<CustomerRoleBO>()
                .HasMany(e => e.Customers)
                .WithOptional(e => e.CustomerRole)
                .HasForeignKey(e => e.RoleID);

            modelBuilder.Entity<OrderHistoryBO>()
                .Property(e => e.Price)
                .HasPrecision(18, 0);

            modelBuilder.Entity<OrderHistoryBO>()
                .Property(e => e.Status)
                .IsUnicode(false);

            modelBuilder.Entity<ProductBO>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<ProductBO>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<ProductBO>()
                .Property(e => e.Price)
                .HasPrecision(18, 0);

            modelBuilder.Entity<ProductBO>()
                .HasMany(e => e.OrderHistories)
                .WithRequired(e => e.Product)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ShippingAddressBO>()
                .Property(e => e.NAME)
                .IsUnicode(false);

            modelBuilder.Entity<ShippingAddressBO>()
                .Property(e => e.Email)
                .IsUnicode(false);

            modelBuilder.Entity<ShippingAddressBO>()
                .Property(e => e.Phone)
                .IsUnicode(false);

            modelBuilder.Entity<ShippingAddressBO>()
                .Property(e => e.Address1)
                .IsUnicode(false);

            modelBuilder.Entity<ShippingAddressBO>()
                .Property(e => e.Address2)
                .IsUnicode(false);

            modelBuilder.Entity<ShippingAddressBO>()
                .Property(e => e.STATE)
                .IsUnicode(false);
        }
    }
}
