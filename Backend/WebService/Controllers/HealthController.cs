using Microsoft.AspNetCore.Mvc;

namespace WebService.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class HealthController : ControllerBase
    {
        [HttpGet]
        public ActionResult<HealthViewModel> Get()
        {
            return new HealthViewModel
            {
                Ok = true
            };
        }
    }

    public class HealthViewModel
    {
        public bool Ok { get; set; }
    }
}
