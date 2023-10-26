using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineSchool.Views.Admin
{
    public partial class Departments : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowDepartments();
         
        }
        private void ShowDepartments()
        {
            string Query = "select * from DepartmentTb1";
            DepartmentList.DataSource = Con.GetData(Query);
            DepartmentList.DataBind();
        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
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

                    string Query = "Insert into DepartmentTb1 values('{0}','{1}')";

                    Query = string.Format(Query, Department, Remarks);
                    Con.SetData(Query);
                    ShowDepartments();
                    ErrMsg.InnerText = "Department Added !!!";
                    DepNameTb.Value = "";
                    RemTb.Value = "";
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }

        int Key = 0;
        protected void DepartmentsList_SelectedIndexChanged(object sender, EventArgs e)
        {
            DepNameTb.Value = DepartmentList.SelectedRow.Cells[2].Text;
            RemTb.Value = DepartmentList.SelectedRow.Cells[3].Text;
            if (DepNameTb.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(DepartmentList.SelectedRow.Cells[1].Text);
            }
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
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
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
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

                    string Query = "delete from DepartmentTb1 where DepId={0}";
                    //    Query = string.Format(Query, Name, Email, Salary, Password);
                    Query = string.Format(Query, DepartmentList.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowDepartments();
                    ErrMsg.InnerText = "Department updated !!!";

                }
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }

        protected void DepartmentList_SelectedIndexChanged(object sender, EventArgs e)
        {
            DepNameTb.Value = DepartmentList.SelectedRow.Cells[2].Text;
            RemTb.Value = DepartmentList.SelectedRow.Cells[3].Text;
            if (DepNameTb.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(DepartmentList.SelectedRow.Cells[1].Text);
            }
        }
    }
}