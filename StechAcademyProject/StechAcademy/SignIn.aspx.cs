using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ConnectionLink;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Security.Cryptography;

namespace StechAcademy
{
    public partial class SignIn : System.Web.UI.Page
    {
        ConnectionClass c = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = txtbxusername.Text;
            string pass = txtbxPass.Text;
            
            string query = "select * from users where username = '" + username + "'";

            //DataTable dt = c.getData(query);
            SqlDataReader dr = c.editData(query);
            string compPass = null;
            while (dr.Read())
            {
                 compPass = dr[4].ToString();
            }

            if (compPass.Equals(EncodePasswordToBase64(pass)))
                Response.Redirect("AdminDashboard.aspx");
            else
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Invalid Username or Password')", true);
        }

        public static string EncodePasswordToBase64(string password)
        {
            byte[] bytes = Encoding.Unicode.GetBytes(password);
            byte[] inArray = HashAlgorithm.Create("SHA1").ComputeHash(bytes);
            return Convert.ToBase64String(inArray);
        }
    }
}