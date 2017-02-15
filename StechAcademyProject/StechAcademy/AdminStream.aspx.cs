using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ConnectionLink;

namespace StechAcademy
{
    public partial class Stream : System.Web.UI.Page
    {
        ConnectionClass c = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string query = "insert into stream values ('" + txtbxStream.Value + "')";

            c.IfAdd(query);
            txtbxStream.Value = "";
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtbxStream.Value = "";
        }
    }
}