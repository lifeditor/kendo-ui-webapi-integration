using System.Collections.Generic;
using System.Net.Http;
using System.Web.Mvc;
using Kendo.Mvc.Extensions;
using Kendo.Mvc.UI;
using KendoUIApplication.Models;

namespace KendoUIApplication.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            HttpResponseMessage response = GlobalVariables.webApiClient.GetAsync(GlobalVariables.UrlWebApiDepartment).Result;
            ViewData[GlobalVariables.DepartmentViewName] = response.Content.ReadAsAsync<List<Department>>().Result;

            return View();
        }

        public ActionResult Read([DataSourceRequest] DataSourceRequest request)
        {
            HttpResponseMessage response = GlobalVariables.webApiClient
                .GetAsync(GlobalVariables.UrlWebApiUser).Result;
            List<User> userList = response.Content.ReadAsAsync<List<User>>().Result;

            return Json(userList.ToDataSourceResult(request), JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult Update([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<User> users)
        {
            if (users != null && ModelState.IsValid)
            {
                foreach (var user in users)
                {
                    HttpResponseMessage response = GlobalVariables.webApiClient
                        .PutAsJsonAsync(GlobalVariables.UrlWebApiUser + user.Id, user).Result;
                }
            }

            return Json(users.ToDataSourceResult(request, ModelState));
        }

        [HttpPost]
        public ActionResult Create([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<User> users)
        {
            var results = new List<User>();

            if (users != null && ModelState.IsValid)
            {
                foreach (var user in users)
                {
                    HttpResponseMessage response = GlobalVariables.webApiClient
                        .PostAsJsonAsync(GlobalVariables.UrlWebApiUser, user).Result;
                    results.Add(response.Content.ReadAsAsync<User>().Result);
                }
            }

            return Json(results.ToDataSourceResult(request, ModelState));
        }

        public ActionResult Delete([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<User> users)
        {
            if (users != null && ModelState.IsValid)
            {
                foreach (var user in users)
                {
                    HttpResponseMessage response = GlobalVariables.webApiClient
                        .DeleteAsync(GlobalVariables.UrlWebApiUser + user.Id).Result;
                }
            }

            return Json(users.ToDataSourceResult(request, ModelState));
        }
    }
}
