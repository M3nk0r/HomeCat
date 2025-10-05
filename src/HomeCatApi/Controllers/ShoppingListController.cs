using CrossCutting.HomeCat.Models.Entities;
using Microsoft.AspNetCore.Mvc;

namespace UI.HomeCatApi.Controllers;

[ApiController]
[Route("[controller]")]
public class ShoppingListController : ControllerBase
{

    [HttpGet]
    public IEnumerable<ShoppingList> Get()
    {
        throw new NotImplementedException();
    }
    
    
    
    
}