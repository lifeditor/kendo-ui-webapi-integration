using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace KendoUIApplication.Models
{
    [Table("Users")]
    public class User
    {
        [Key]
        public int Id { get; set; }
        public string UserName { get; set; }
        public int DepartmentId { get; set; }

        [ForeignKey("DepartmentId")]
        public Department FKDepartment { get; set; }
    }

    [Table("Departments")]
    public partial class Department
    {
        [Key]
        public int Id { get; set; }
        public string Title { get; set; }
    }
}