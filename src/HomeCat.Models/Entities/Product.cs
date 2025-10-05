namespace CrossCutting.HomeCat.Models.Entities;

public class Product
{
    public required string Id { get; set; }
    public required string Name { get; set; }
    public string? Description { get; set; }
    public string? Barcode { get; set; }
}