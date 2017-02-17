using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ConnectionLink;
using System.Data;
using System;
using System.Data.SqlClient;

namespace StechAcademy
{
    public partial class AdminFeedback : System.Web.UI.Page
    {
        ConnectionClass c = new ConnectionClass();
        public static int feedbackId;
        public static string status;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FeedbackTable.Visible = true;
                FeedbackForm.Visible = false;
                BindGrid();
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            clearControls();
        }
        private void BindGrid()
        {
            string query = " select * from feedback";
            DataTable dt = c.getData(query);
            GVFeedback.DataSource = dt;
            GVFeedback.DataBind();

            if (dt.Rows.Count == 0)
            {
                noInfoAlert.Visible = true;
                FeedbackTable.Visible = false;
            }
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            clearControls();
            BindGrid();
            FeedbackTable.Visible = true;
            FeedbackForm.Visible = false;
        }

        protected void clearControls()
        {
            txtbxName.Value = "";
            txtbxEmailid.Value = "";
            txtbxPhonenum.Value = "";
            txtbxFeedback.Text = "";
            DDLGender.SelectedIndex = 0;
        }

        protected void GVFeedback_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            feedbackId = Convert.ToInt32(e.CommandArgument.ToString());
            if (e.CommandName == "view")
            {
                status = "view";
                FeedbackTable.Visible = false;
                FeedbackForm.Visible = true;

                string query = "select * from feedback where feedbackId = '" + feedbackId + "'";

                SqlDataReader dr = c.editData(query);
                while (dr.Read())
                {
                    txtbxName.Value = dr[1].ToString();
                    txtbxEmailid.Value = dr[2].ToString();
                    txtbxPhonenum.Value = dr[3].ToString();
                    DDLGender.SelectedValue = dr[4].ToString();
                    txtbxFeedback.Text = dr[5].ToString();
                }
            }
            else if (e.CommandName == "Delete")
            {
                string query = "delete from feedback where feedbackId = '" + feedbackId + "'";
                c.deleteData(query);
                c.closeConn();
                BindGrid();
            }
        }

        protected void GVFeedback_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void GVFeedback_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void GVFeedback_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {

        }
    }
    
}