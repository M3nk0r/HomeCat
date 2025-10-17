using Microsoft.EntityFrameworkCore;

namespace CrossCutting.HomeCat.Models.Entities;

[PrimaryKey(nameof(Id), nameof(UserId))]
public class ShoppingList
{
    public required string UserId { get; set; }
    public required string Id { get; set; }
    public required string Name { get; set; }
    public string? Description { get; set; }
    public int Count { get; set; }
    public bool Bought { get; set; }
    public string? ProductId { get; set; }
    public Product? Product { get; set; }
    public int? Category { get; set; }
}
