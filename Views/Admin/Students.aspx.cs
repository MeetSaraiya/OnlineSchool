using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineSchool.Views.Admin
{
    public partial class Students : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
        Con = new Models.Functions();
            if (!IsPostBack)
            {

                ShowStudents();
                GetDepartment();
                GetTeacher();
            }

        }
            
        private void ShowStudents()
        {
            string Query = "select *  from StudentTb1";
            StudentList.DataSource = Con.GetData(Query);
            StudentList.DataBind();
        }
        private void GetDepartment()
        {
            string Query = "select * from DepartmentTb1";
            StDepCb.DataTextField = Con.GetData(Query).Columns["DepName"].ToString();
            StDepCb.DataValueField = Con.GetData(Query).Columns["DepId"].ToString();
            StDepCb.DataSource = Con.GetData(Query);
            StDepCb.DataBind();
        }
        private void GetTeacher()
        {
            string Query = "select * from TeacherTb1";
            StTeacherCb.DataTextField = Con.GetData(Query).Columns["TName"].ToString();
            StTeacherCb.DataValueField = Con.GetData(Query).Columns["TId"].ToString();
            StTeacherCb.DataSource = Con.GetData(Query);
            StTeacherCb.DataBind();
        }
        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (StDepCb.SelectedIndex == -1 || StTeacherCb.SelectedIndex == -1 || StEmailTb.Value == "" || StPhoneTb.Value == "" || StPassTb.Value == "" ||  StAddressTb.Value == "")
                {
                    ErrMsg.InnerText = "Missing Data !!!";

                }
                else
                {
                    string StName = StNameTb.Value;
                    string StEmail = StEmailTb.Value;
                    string StPhone= StPhoneTb.Value;
                    string StAddress= StAddressTb.Value;
                    string StDOB= BdateTb.Value.ToString().Substring(0, 10);
                    string StGen= StGenCb.SelectedItem.Value;
                    string StPass= StPassTb.Value;
                    int Dep  = Convert.ToInt32(StDepCb.SelectedValue.ToString());
                    int Teacher = Convert.ToInt32(StTeacherCb.SelectedValue.ToString());
                    string Query = "Insert into StudentTb1 values('{0}','{1}','{2}','{3}','{4}','{5}','{6}',{7},{8} )";
                    Query = string.Format(Query, StName, StEmail, StPhone, StAddress, StDOB, StGen, StPass,Dep,Teacher);
                    // Query = string.Format(Query, Name, Email,DOBTB>SalaryTb.Value Salary, Password);
                    Con.SetData(Query);
                    ShowStudents();
                    ErrMsg.InnerText = "Student Added!!!";
                    StNameTb.Value = "";
                    StEmailTb.Value = "";
                    StPhoneTb.Value = "";
                    StAddressTb.Value = "";
                    StPassTb.Value = "";
                    StGenCb.SelectedIndex = -1;
                    StDepCb.SelectedIndex = -1;
                    StTeacherCb.SelectedIndex = -1;
                 

                }
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
        int Key = 0;
        //protected void StudentList_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    StNameTb.Value = StudentList.SelectedRow.Cells[2].Text;
        //    StEmailTb.Value = StudentList.SelectedRow.Cells[3].Text;
        //    StPhoneTb.Value = StudentList.SelectedRow.Cells[4].Text;
        //    StAddressTb.Value = StudentList.SelectedRow.Cells[5].Text;
        //    BdateTb.Value = StudentList.SelectedRow.Cells[6].Text;
        //    StGenCb.SelectedItem.Value= StudentList.SelectedRow.Cells[7].Text;
        //    StPassTb.Value = StudentList.SelectedRow.Cells[8].Text;        
        //    StDepCb.SelectedValue = StudentList.SelectedRow.Cells[9].Text;
        //    StTeacherCb.SelectedValue = StudentList.SelectedRow.Cells[10].Text;


        //    if (StNameTb.Value == "")
        //    {
        //        Key = 0;
        //    }
        //    else
        //    {
        //        Key = Convert.ToInt32(StudentList.SelectedRow.Cells[1].Text);
        //    }
        //}
        protected void StudentList_SelectedIndexChanged(object sender, EventArgs e)
        {
            StNameTb.Value = StudentList.SelectedRow.Cells[2].Text;
            StEmailTb.Value = StudentList.SelectedRow.Cells[3].Text;
            StPhoneTb.Value = StudentList.SelectedRow.Cells[4].Text;
            StAddressTb.Value = StudentList.SelectedRow.Cells[5].Text;
            BdateTb.Value = StudentList.SelectedRow.Cells[6].Text;
            StGenCb.SelectedItem.Value = StudentList.SelectedRow.Cells[7].Text;
            StPassTb.Value = StudentList.SelectedRow.Cells[8].Text;
            StDepCb.SelectedValue = StudentList.SelectedRow.Cells[9].Text;
            StTeacherCb.SelectedValue = StudentList.SelectedRow.Cells[10].Text;


            if (StNameTb.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(StudentList.SelectedRow.Cells[1].Text);
            }
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (StDepCb.SelectedIndex == -1 || StTeacherCb.SelectedIndex == -1 || StEmailTb.Value == "" || StPhoneTb.Value == "" || StPassTb.Value == "" || StAddressTb.Value == "")
                {
                    ErrMsg.InnerText = "Missing Data !!!";

                }
                else
                {
                    string StName = StNameTb.Value;
                    string StEmail = StEmailTb.Value;
                    string StPhone = StPhoneTb.Value;
                    string StAddress = StAddressTb.Value;
                    string StDOB = BdateTb.Value.ToString().Substring(0, 10);
                    string StGen = StGenCb.SelectedItem.Value;
                    string StPass = StPassTb.Value;
                    int Dep = Convert.ToInt32(StDepCb.SelectedValue.ToString());
                    int Teacher = Convert.ToInt32(StTeacherCb.SelectedValue.ToString());
                    string Query = "Update StudentTb1 set StName = '{0}',StEmail = '{1}', StPhone= '{2}',StAddress='{3}',StDOB = '{4}',StGen = '{5}',StPass='{6}', StDepartment = {7},StTeacher = {8} where StId={9}";
                    Query = string.Format(Query, StName, StEmail, StPhone, StAddress, StDOB, StGen, StPass, Dep, Teacher, StudentList.SelectedRow.Cells[1].Text);
                    // Query = string.Format(Query, Name, Email,DOBTB>SalaryTb.Value Salary, Password);
                    Con.SetData(Query);
                    ShowStudents();
                    ErrMsg.InnerText = "Student Updated!!!";
                    StNameTb.Value = "";
                    StEmailTb.Value = "";
                    StPhoneTb.Value = "";
                    StAddressTb.Value = "";
                    StPassTb.Value = "";
                    StGenCb.SelectedIndex = -1;
                    StDepCb.SelectedIndex = -1;
                    StTeacherCb.SelectedIndex = -1;


                }
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (StDepCb.SelectedIndex == -1 || StTeacherCb.SelectedIndex == -1 || StEmailTb.Value == "" || StPhoneTb.Value == "" || StPassTb.Value == "" || StAddressTb.Value == "")
                {
                    ErrMsg.InnerText = "Missing Data !!!";

                }
                else
                {
                    
                    string Query = "Delete from StudentTb1 where StId={0}";
                    Query = string.Format(Query, StudentList.SelectedRow.Cells[1].Text);
                    // Query = string.Format(Query, Name, Email,DOBTB>SalaryTb.Value Salary, Password);
                    Con.SetData(Query);
                    ShowStudents();
                    ErrMsg.InnerText = "Student Deleted!!!";
                    StNameTb.Value = "";
                    StEmailTb.Value = "";
                    StPhoneTb.Value = "";
                    StAddressTb.Value = "";
                    StPassTb.Value = "";
                    StGenCb.SelectedIndex = -1;
                    StDepCb.SelectedIndex = -1;
                    StTeacherCb.SelectedIndex = -1;


                }
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
    }
}