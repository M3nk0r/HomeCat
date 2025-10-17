using CrossCutting.HomeCat.Models.Entities;
using Data.HomeCat.Data;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace UI.HomeCatApi.Controllers;

[ApiController]
[Route("[controller]")]
public class ProductController : ControllerBase
{
    public HomeCatContext _context;

    public ProductController(HomeCatContext context)
    {
        _context = context;
    }

    [HttpGet]
    public async Task<IActionResult> Get()
    {
        _context.Product.Add(new Product()
        {
            Id = Guid.NewGuid().ToString(),
            Name = "Test",
            Description = "Test",
        });
        
        await _context.SaveChangesAsync();
        
        return Ok(await _context.Product.ToListAsync());
    }
}