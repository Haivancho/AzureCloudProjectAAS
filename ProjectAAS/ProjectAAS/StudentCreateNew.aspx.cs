using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace ProjectAAS
{
    public partial class StudentCreateNew : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.Session["username"] == null)
            {
                this.Response.Redirect("Default.aspx");
            }
        }
        protected void Page_Init(object sender, EventArgs e)
        {
            Configurator configurator = new Configurator();
            DataTable specialties = configurator.LoadSpecialties();
            for (int i = 0; i < specialties.Rows.Count; i++)
            {
                DataRow row = specialties.Rows[i];
                string id = row[0] as string;

                string name = row[1] as string;
                ListItem item = new ListItem(name, id);
                this.DropDownListSpecialty.Items.Add(item);
            }
        }
        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            Configurator configurator = new Configurator();
            configurator.InsertStudent(this.TextBoxStudentFNumber.Text,
           Convert.ToInt32(this.DropDownListSpecialty.SelectedValue),
           this.TextBoxStudentFName.Text, this.TextBoxStudentMName.Text,
           this.TextBoxStudentLName.Text, this.TextBoxStudentAddress.Text,
           this.TextBoxStudentPhone.Text, this.TextBoxStudentEMail.Text);
            this.Response.Redirect("Students.aspx");
        }
    }
}