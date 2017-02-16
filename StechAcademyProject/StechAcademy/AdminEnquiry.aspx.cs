using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ConnectionLink;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;

namespace StechAcademy
{
    public partial class AdminEnquiry : System.Web.UI.Page
    {
        ConnectionClass c = new ConnectionClass();
        public static int enquiryId;
        public static string status;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                EnquiryTable.Visible = true;
                EnquiryForm.Visible = false;
                BindGrid();
            }
        }

        private void BindGrid()
        {
            string query = " select * from enquiry";
            DataTable dt = c.getData(query);
            GVEnquiry.DataSource = dt;
            GVEnquiry.DataBind();

            if (dt.Rows.Count == 0)
            {
                noInfoAlert.Visible = true;
                EnquiryTable.Visible = false;
            }
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //string query = "insert into enquiry values ('" + txtbxName.Value + "','" + txtbxEmailid.Value + "','" + txtbxPhonenum.Value + "','" + DDLGender.SelectedValue + "','" + txtbxEnquiry.Text + "')";
            //c.IfAdd(query);

            clearControls();
            BindGrid();
            EnquiryTable.Visible = true;
            EnquiryForm.Visible = false;
        }

        protected void clearControls()
        {
            txtbxName.Value = "";
            txtbxEmailid.Value = "";
            txtbxPhonenum.Value = "";
            txtbxEnquiry.Text = "";
            DDLGender.SelectedIndex = 0;
        }

        //protected void btnCancel_Click(object sender, EventArgs e)
        //{
        //    clearControls();
        //}


        protected void GVEnquiry_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            enquiryId = Convert.ToInt32(e.CommandArgument.ToString());
            if (e.CommandName == "view")
            {
                status = "view";
                EnquiryTable.Visible = false;
                EnquiryForm.Visible = true;

                string query = "select * from enquiry where enquiryId = '" + enquiryId + "'";

                SqlDataReader dr = c.editData(query);
                while (dr.Read())
                {
                    txtbxName.Value = dr[1].ToString();
                    txtbxEmailid.Value = dr[2].ToString();
                    txtbxPhonenum.Value = dr[3].ToString();
                    DDLGender.SelectedValue = dr[4].ToString();
                    txtbxEnquiry.Text = dr[5].ToString();
                }
            }
            else if (e.CommandName == "Delete")
            {
                string query = "delete from enquiry where enquiryId = '" + enquiryId + "'";
                c.deleteData(query);
                c.closeConn();
                BindGrid();
            }
        }

        protected void GVEnquiry_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void GVEnquiry_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void GVEnquiry_PageIndexChanged(object sender, EventArgs e)
        {

        }

    }
}