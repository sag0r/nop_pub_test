using Microsoft.AspNetCore.Mvc;
using Nop.Plugin.Api.Attributes;
using Nop.Plugin.Api.DTO.Errors;
using Nop.Plugin.Api.JSON.Serializers;
using Nop.Services.Customers;
using Nop.Services.Discounts;
using Nop.Services.Localization;
using Nop.Services.Logging;
using Nop.Services.Media;
using Nop.Services.Security;
using Nop.Services.Stores;
using System.Net;
using Nop.Plugin.Api.JSON.ActionResults;
using Nop.Plugin.Api.DTO.Vendors;
using Nop.Plugin.Api.Services;

namespace Nop.Plugin.Api.Controllers
{
    public class VendorsController : BaseApiController
    {

        private readonly IVendorApiService _vendorApiService;

        public VendorsController(
            IJsonFieldsSerializer jsonFieldsSerializer,
            IAclService aclService,
            ICustomerService customerService,
            IStoreMappingService storeMappingService,
            IStoreService storeService,
            IDiscountService discountService,
            ICustomerActivityService customerActivityService,
            ILocalizationService localizationService,
            IPictureService pictureService,
            IVendorApiService vendorApiService) : base(jsonFieldsSerializer, aclService, customerService, storeMappingService, storeService, discountService, customerActivityService, localizationService, pictureService)
        {
            _vendorApiService = vendorApiService;
        }

        /// <summary>
        /// Retrieve vendor by spcified id
        /// </summary>
        /// <param name="id">Id of the vendor</param>
        /// <param name="fields">Fields from the customer you want your json to contain</param>
        /// <response code="200">OK</response>
        /// <response code="404">Not Found</response>
        /// <response code="401">Unauthorized</response>
        [HttpGet]
        [Route("/api/vendors/{id}")]
        [ProducesResponseType(typeof(VendorsRootObject), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(ErrorsRootObject), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(string), (int)HttpStatusCode.NotFound)]
        [ProducesResponseType(typeof(string), (int)HttpStatusCode.Unauthorized)]
        [GetRequestsErrorInterceptorActionFilter]
        public IActionResult GetVendorById(int id, string fields = "")
        {
            if (id <= 0)
            {
                return Error(HttpStatusCode.BadRequest, "id", "invalid id");
            }

            var vendor = _vendorApiService.GetVendorById(id);

            if (vendor == null)
            {
                return Error(HttpStatusCode.NotFound, "vendor", "not found");
            }

            var vendorsRootObject = new VendorsRootObject();
            vendorsRootObject.Vendors.Add(vendor);

            var json = JsonFieldsSerializer.Serialize(vendorsRootObject, fields);

            return new RawJsonActionResult(json);
        }
    }
}
