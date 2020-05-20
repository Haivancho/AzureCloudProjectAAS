using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace ProjectAAS

{
    public partial class SubjectCreateNew : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.Session["username"] == null)
            {
                this.Response.Redirect("Default.aspx");
            }
        }
        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            Configurator configurator = new Configurator();
            configurator.InsertSubject(this.TextBoxSubjectID.Text,
           this.TextBoxSubjectName.Text);
            this.Response.Redirect("Subjects.aspx");
        }
    }
}