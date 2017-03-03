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
    public partial class AdminUsers : System.Web.UI.Page
    {
        ConnectionClass c = new ConnectionClass();
        public static int CourseId;
        public static string status;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                UsersForm.Visible = false;
                UsersTable.Visible = true;
                BindGrid();
            }
        }

        private void BindGrid()
        {
            string query = "select courseId ,courses.courseName , stream.streamName from courses inner join stream on courses.streamid = Stream.StreamId";
            DataTable dt = c.getData(query);
            GVUsers.DataSource = dt;
            GVUsers.DataBind();

            if (dt.Rows.Count == 0)
            {
                noInfoAlert.Visible = true;
                UsersTable.Visible = false;
            }
            c.closeConn();
        }

        protected void lnkbtnAdd_Click(object sender, EventArgs e)
        {
            status = "Add";
            noInfoAlert.Visible = false;
            UsersTable.Visible = false;
            UsersForm.Visible = true;
        }

        protected void GVUsers_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

        }

        protected void GVUsers_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            CourseId = Convert.ToInt32(e.CommandArgument.ToString());
            if (e.CommandName == "Edit")
            {
                status = "Edit";
                UsersTable.Visible = false;
                UsersForm.Visible = true;

                string query = " select * from courses where courseid = '" + CourseId + "'";

                SqlDataReader dr = c.editData(query);
                while (dr.Read())
                {
                    //DDLStream.SelectedValue = dr[2].ToString();
                    //txtbxCourse.Value = dr[1].ToString();
                    //DDLStream.SelectedValue = dr[3].ToString();
                }

            }
            else if (e.CommandName == "Delete")
            {
                string query = " delete from courses where courseid = '" + CourseId + "'";
                c.deleteData(query);
                c.closeConn();
                BindGrid();
            }

        }

        protected void GVUsers_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void GVUsers_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (status == "Add")
            {
                string query = "insert into courses values ('" + txtbxCourse.Value + "','" + DDLStream.SelectedValue + "')";
                c.IfAdd(query);

            }
            else if (status == "Edit")
            {

                string queryEdit = " update courses set CourseName= '" + txtbxCourse.Value + "', StreamId  = '" + DDLStream.SelectedValue + "' where CourseId= '" + CourseId + "'";
                c.IfEdit(queryEdit);

            }

            BindGrid();

            successAlert.Visible = true;

            //txtbxCourse.Value = "";
            //DDLStream.SelectedIndex = 0;
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            //txtbxCourse.Value = "";
            //DDLStream.SelectedIndex = 0;
            UsersForm.Visible = false;
            UsersTable.Visible = true;
        }
    }
}