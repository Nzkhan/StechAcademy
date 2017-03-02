using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ConnectionLink;
using System.Data;
using System.Data.SqlClient;

namespace StechAcademy
{
    public partial class Stream : System.Web.UI.Page
    {
        ConnectionClass c = new ConnectionClass();
        public static int StreamId;
        public static string status;
        protected void Page_Load(object sender, EventArgs e)
        {
            StreamForm.Visible = false;
            StreamTable.Visible = true;
            BindGrid();
        }
        private void BindGrid()
        {
            string query = "select * from stream";
            DataTable dt = c.getData(query);
            GVStream.DataSource = dt;
            GVStream.DataBind();

            if (dt.Rows.Count == 0)
            {
                noInfoAlert.Visible = true;
                StreamTable.Visible = false;
            }
            c.closeConn();
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (status == "Add")
            {
                string query = "insert into stream values ('" + txtbxStream.Value + "')";
                c.IfAdd(query);
            }
            else if (status == "Edit")
            {
                string queryEdit = " update stream set streamName= '" + txtbxStream.Value + "' where streamid= '" + StreamId + "'";
                c.IfEdit(queryEdit);
            }

            BindGrid();

            //successAlert.Visible = true;

            txtbxStream.Value = "";

        }
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtbxStream.Value = "";
        }
        protected void GVStream_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }
        protected void GVStream_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            StreamId = Convert.ToInt32(e.CommandArgument.ToString());
            if (e.CommandName == "Edit")
            {
                status = "Edit";
                StreamTable.Visible = false;
                StreamForm.Visible = true;

                string query = "select * from stream where streamid = '" + StreamId + "'";

                SqlDataReader dr = c.editData(query);
                while (dr.Read())
                {
                    txtbxStream.Value = dr[1].ToString();
                }
                c.closeConn();
            }
            else if (e.CommandName == "Delete")
            {
                
                string query = "select * from courses where streamid='" + StreamId + "'";
                DataTable dt = c.getData(query);
c.closeConn();
                if (dt.Rows.Count != 0)
                {
                    ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('The Stream you want to delete has a Courses with this streamID, So please delete the course under this stream first !')", true);
                }
                else
                {
                    string query1 = "delete from stream where streamid  = '" + StreamId + "'";
                    c.deleteData(query1);
                    c.closeConn();
                    BindGrid();
                }
            }
        }
        protected void GVStream_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

        }
        protected void GVStream_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void GVStream_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void lnkbtnAdd_Click(object sender, EventArgs e)
        {
            status = "Add";
            StreamTable.Visible = false;
            StreamForm.Visible = true;
        }
    }
}