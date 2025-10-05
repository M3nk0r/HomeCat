namespace CrossCutting.HomeCat.Models.Entities;

public class Pantry
{
    public required string UserId { get; set; }
    public required string Name { get; set; }
    public string? Description { get; set; }
    public int Count { get; set; }
    public string? ProductId { get; set; }
    public int? Category { get; set; }
}