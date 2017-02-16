using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ConnectionLink;

namespace StechAcademy
{
    public partial class AdminCourses : System.Web.UI.Page
    {
        ConnectionClass c = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindStreamDropDown();
            }
        }
        private void BindStreamDropDown()
        {
            string query = " Select * from Stream";
            DataTable dt = c.getData(query);
            DDLStream.DataSource = dt;
            DDLStream.DataValueField = "streamid";
            DDLStream.DataTextField = "streamName";
            DDLStream.DataBind();

            DDLStream.Items.Insert(0, new ListItem("--  Select  --", ""));


            foreach (ListItem myItem in DDLStream.Items)
            {
                myItem.Attributes.Add("style", "background-color:#111111");
                //myItem.Attributes.Add("style", "fore-color:white");
            }
            //ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('hey')", true);

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string query = "insert into courses values ('" + txtbxCourse.Value + "','" + DDLStream.SelectedValue + "')";
            c.IfAdd(query);

            successAlert.Visible = true; 

            txtbxCourse.Value = "";
            DDLStream.SelectedIndex = 0;
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtbxCourse.Value = "";
            DDLStream.SelectedIndex = 0;
        }

        
    }
}