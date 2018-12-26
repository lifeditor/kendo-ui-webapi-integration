using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Web;

namespace KendoUIApplication
{
    public static class GlobalVariables
    {
        public const string AppTitle = "Kendu UI Application";
        public const string UrlWebApiUser = "http://localhost:1805/api/User/";
        public const string UrlWebApiDepartment = "http://localhost:2227/api/Department/";
        public const string DepartmentViewName = "Departments";
        public static HttpClient webApiClient = new HttpClient();

        static GlobalVariables()
        {
            webApiClient.DefaultRequestHeaders.Clear();
            webApiClient.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
        }
    }
}