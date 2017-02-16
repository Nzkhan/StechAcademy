using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ConnectionLink;

namespace StechAcademy
{
    public partial class Enquiry : System.Web.UI.Page
    {
        ConnectionClass c = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string query = "insert into enquiry values ('" + txtbxName.Value + "','" + txtbxEmailid.Value + "','" + txtbxPhonenum.Value + "','" + DDLGender.SelectedValue + "','" + txtbxEnquiry.Text + "')";
            c.IfAdd(query);

            clearControls();
            successAlert.Visible = true;
        }

        protected void clearControls()
        {
            txtbxName.Value = "";
            txtbxEmailid.Value = "";
            txtbxPhonenum.Value = "";
            txtbxEnquiry.Text = "";
            DDLGender.SelectedIndex = 0;
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            clearControls();
        }

    }
}