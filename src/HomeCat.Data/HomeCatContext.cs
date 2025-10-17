using CrossCutting.HomeCat.Models.Entities;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace Data.HomeCat.Data;

public class HomeCatContext : IdentityDbContext<IdentityUser>
{
    public DbSet<Pantry> Pantry { get; set; }
    public DbSet<Product> Product { get; set; }
    public DbSet<ShoppingList> ShoppingList { get; set; }
    
    // protected sealed override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    // {
    //     optionsBuilder.UseNpgsql("Host=127.0.0.1;Password=Wert123!;Persist Security Info=True;Username=postgres;Database=homecat");
    // }
    
    public HomeCatContext(DbContextOptions<HomeCatContext> options) : base(options)
    {
        
    }
    
    public HomeCatContext()
    {
        
    }
    
}