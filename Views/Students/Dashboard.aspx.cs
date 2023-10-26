using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineSchool.Views.Students
{
    public partial class Dashboard : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            if (!IsPostBack)
            {
                CountDepartments();
                CountStudents();
                CountTeachers();
            }
        }
        private void CountDepartments()
        {

            string Query = "select Count(*) from DepartmentTb1";
            DepTb.InnerText = Con.GetData(Query).Rows[0][0].ToString() + " Departments";

        }
        private void CountStudents()
        {

            string Query = "select Count(*) from StudentTb1";
            StudTb.InnerText = Con.GetData(Query).Rows[0][0].ToString() + " Students";

        }
        private void CountTeachers()
        {

            string Query = "select Count(*) from TeacherTb1";
            TeacherTb.InnerText = Con.GetData(Query).Rows[0][0].ToString() + " Teachers";

        }
        private void CountSubjects()
        {

            string Query = "select Count(*) from DepartmentTb1";
            DepTb.InnerText = Con.GetData(Query).Rows[0][0].ToString() + " Departments";

        }

    }
}