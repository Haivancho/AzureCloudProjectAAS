using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace ProjectAAS
{
    public partial class GradeInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.Session["username"] == null)
            {
                this.Response.Redirect("Default.aspx");
            }
            if (!IsPostBack)
            {
                if (this.Request["fnumber"] != null)
                {
                    string param = this.Request["fnumber"];
                    this.LoadData(param);
                }
                else
                {
                    this.Response.Redirect("Grade.aspx");
                }
            }
        }
        protected void Page_Init(object sender, EventArgs e)
        {
            Configurator configurator = new Configurator();
            DataTable subjects = configurator.LoadSubjects();
            for (int i = 0; i < subjects.Rows.Count; i++)
            {
                DataRow row = subjects.Rows[i];
                string id = row[0] as string;
                string name = row[1] as string;
                ListItem item = new ListItem(name, id);
                this.DropDownListSubject.Items.Add(item);
            }
        }
        private void LoadData(string param)
        {
            Configurator configurator = new Configurator();
            Grade grade = configurator.LoadGradeByFNumber(param);
            this.TextBoxStudentFNumber.Text = grade.FNumber;
            this.DropDownListSubject.SelectedValue = grade.SubjectId.ToString();
            this.TextBoxFinalGrade.Text = grade.FinalGrade.ToString();
            this.ViewState["fnumber"] = param;
        }
        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            if (this.ViewState["fnumber"] != null)
            {
                string fNumber = this.ViewState["fnumber"] as string;
                Configurator configurator = new Configurator();
                configurator.UpdateGrade(fNumber,
                Convert.ToInt32(this.DropDownListSubject.SelectedValue),
                this.TextBoxFinalGrade.Text);
                this.Response.Redirect("Grades.aspx");
            }
        }
    }
}