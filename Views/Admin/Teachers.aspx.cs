using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineSchool.Views.Admin
{
    public partial class Teachers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowTeachers();
        }
        Models.Functions Con;

        private void ShowTeachers()
        {
            string Query = "select * from TeacherTb1";
            TeachersList.DataSource = Con.GetData(Query);
            TeachersList.DataBind();
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            try
            {
                if(TNameTb.Value==""|| TEmailTb.Value==""|| SalaryTb.Value==""|| PassTb.Value =="")
                {
                    ErrMsg.InnerText = "Missing Data !!!";

                }
                else
                {
                    string Name = TNameTb.Value;
                    string Email=TEmailTb.Value;
                    string Salary=SalaryTb.Value;
                    string Password= PassTb.Value;
                    string Query = "Insert into TeacherTb1 values('{0}','{1}','{2}',{3},'{4}')";
                //    Query = string.Format(Query, Name, Email, Salary, Password);
                    Query = string.Format(Query, Name, Email, DOBTb.Value.ToString().Substring(0,10), Salary, Password);
                    Con.SetData(Query);
                    ShowTeachers();
                    ErrMsg.InnerText = "Teacher Added !!!";
                    TNameTb.Value = "";
                    TEmailTb.Value = "";
                    SalaryTb.Value = "";
                    PassTb.Value = "";
                }
            }
            catch ( Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
        int Key = 0;
        protected void TeachersList_SelectedIndexChanged(object sender, EventArgs e)
        {
           // TNameTb.Value = TeachersList.SelectedRow.Cells[1].Text;
            TNameTb.Value = TeachersList.SelectedRow.Cells[2].Text;
            TEmailTb.Value = TeachersList.SelectedRow.Cells[3].Text;
            DOBTb.Value = TeachersList.SelectedRow.Cells[4].Text;
            SalaryTb.Value = TeachersList.SelectedRow.Cells[5].Text;
            PassTb.Value = TeachersList.SelectedRow.Cells[6].Text;
            //if(TNameTb.Value == "")
            //{
            //    Key = 0;
            //}
            //else
            //{
            //    Key = Convert.ToInt32(TeachersList.SelectedRow.Cells[1].Text);
            //}
        }
        
        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (TNameTb.Value == "" || TEmailTb.Value == "" || SalaryTb.Value == "" || PassTb.Value == "")
                {
                    ErrMsg.InnerText = "Missing Data !!!";

                }
                else
                {
                    string Name = TNameTb.Value;
                    string Email = TEmailTb.Value;
                    string Salary = SalaryTb.Value;
                    string Password = PassTb.Value;
                    string Query = "Update TeacherTb1 set TName = '{0}',TEmail = '{1}',TDOB='{2}',TSalary = {3},TPass = '{4}' where TID = {5}";
                   
                    Query = string.Format(Query, Name, Email, DOBTb.Value.ToString().Substring(0, 10), Salary, Password, TeachersList.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowTeachers();
                    ErrMsg.InnerText = "Teacher Updated !!!";
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
            /*
              try
            {
                if (DepNameTb.Value == "" || RemTb.Value == "")
                {
                    ErrMsg.InnerText = "Missing Data !!!";

                }
                else
                {
                    string Department = DepNameTb.Value;
                    string Remarks = RemTb.Value;

                    string Query = "update DepartmentTb1 set DepName='{0}',DepRem='{1}' where DepId={2}";
                    //    Query = string.Format(Query, Name, Email, Salary, Password);
                    Query = string.Format(Query, Department, Remarks, DepartmentList.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowDepartments();
                    ErrMsg.InnerText = "Department updated !!!";

                }
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
             */
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (TNameTb.Value == "" || TEmailTb.Value == "" || SalaryTb.Value == "" || PassTb.Value == "")
                {
                    ErrMsg.InnerText = "Missing Data !!!";

                }
                else
                {
                    string Name = TNameTb.Value;
                    string Email = TEmailTb.Value;
                    string Salary = SalaryTb.Value;
                    string Password = PassTb.Value;
                    string Query = "Delete from TeacherTb1  where TID = {0}";
                    //    Query = string.Format(Query, Name, Email, Salary, Password);
                    Query = string.Format(Query, TeachersList.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowTeachers();
                    ErrMsg.InnerText = "Teacher Deleted !!!";
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }

        protected void TeachersList_SelectedIndexChanged1(object sender, EventArgs e)
        {
            TNameTb.Value = TeachersList.SelectedRow.Cells[2].Text;
            TEmailTb.Value = TeachersList.SelectedRow.Cells[3].Text;
            DOBTb.Value = TeachersList.SelectedRow.Cells[4].Text;
            SalaryTb.Value = TeachersList.SelectedRow.Cells[5].Text;
            PassTb.Value = TeachersList.SelectedRow.Cells[6].Text;

            if (TNameTb.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(TeachersList.SelectedRow.Cells[1].Text);
                }
            }
        }
}