using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineSchool.Views.Students
{
    public partial class ViewSchedule : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            if (!IsPostBack)
            {
                ShowTTableMonday();
                ShowTTableTuesday();
                ShowTTableWednesday();
                ShowTTableThursday();
                ShowTTableFriday();
            }
        }

        private void ShowTTableMonday()
        {
            string Day = "Monday";
            string Query = "select * from ScheduleTb1 where Department={0} and Day='{1}'";
            Query = string.Format(Query, Login.Dep, Day);
            MFPTb.InnerText = Con.GetData(Query).Rows[0][3].ToString();
            MSPTb.InnerText = Con.GetData(Query).Rows[0][4].ToString();
            MTPTb.InnerText = Con.GetData(Query).Rows[0][5].ToString();
            MFoPTb.InnerText = Con.GetData(Query).Rows[0][6].ToString();
            MFiPTb.InnerText = Con.GetData(Query).Rows[0][7].ToString();
        }

        
        private void ShowTTableTuesday()
        {
            string Day = "Tuesday";
            string Query = "select * from ScheduleTb1 where Department={0} and Day='{1}'";
            Query = string.Format(Query, Login.Dep, Day);
            TFPTb.InnerText = Con.GetData(Query).Rows[0][3].ToString();
            TSPTb.InnerText = Con.GetData(Query).Rows[0][4].ToString();
            TTPTb.InnerText = Con.GetData(Query).Rows[0][5].ToString();
            TFoPTb.InnerText = Con.GetData(Query).Rows[0][6].ToString();
            TFiPTb.InnerText = Con.GetData(Query).Rows[0][7].ToString();
        }
        private void ShowTTableWednesday()
        {
            string Day = "Wednesday";
            string Query = "select * from ScheduleTb1 where Department={0} and Day='{1}'";
            Query = string.Format(Query, Login.Dep, Day);
            WFPTb.InnerText = Con.GetData(Query).Rows[0][3].ToString();
            WSPTb.InnerText = Con.GetData(Query).Rows[0][4].ToString();
            WTPTb.InnerText = Con.GetData(Query).Rows[0][5].ToString();
            WFoPTb.InnerText = Con.GetData(Query).Rows[0][6].ToString();
            WFiPTb.InnerText = Con.GetData(Query).Rows[0][7].ToString();
        }
        private void ShowTTableThursday()
        {
            string Day = "Thusday";
            string Query = "select * from ScheduleTb1 where Department={0} and Day='{1}'";
            Query = string.Format(Query, Login.Dep, Day);
            ThFPTb.InnerText = Con.GetData(Query).Rows[0][3].ToString();
            ThSPTb.InnerText = Con.GetData(Query).Rows[0][4].ToString();
            ThTPTb.InnerText = Con.GetData(Query).Rows[0][5].ToString();
            ThFoPTb.InnerText = Con.GetData(Query).Rows[0][6].ToString();
            ThFiPTb.InnerText = Con.GetData(Query).Rows[0][7].ToString();
        }
        private void ShowTTableFriday()
        {
            string Day = "Friday";
            string Query = "select * from ScheduleTb1 where Department={0} and Day='{1}'";
            Query = string.Format(Query, Login.Dep, Day);
            WFPTb.InnerText = Con.GetData(Query).Rows[0][3].ToString();
            WSPTb.InnerText = Con.GetData(Query).Rows[0][4].ToString();
            WTPTb.InnerText = Con.GetData(Query).Rows[0][5].ToString();
            WFoPTb.InnerText = Con.GetData(Query).Rows[0][6].ToString();
            WFiPTb.InnerText = Con.GetData(Query).Rows[0][7].ToString();
        }

    }
}