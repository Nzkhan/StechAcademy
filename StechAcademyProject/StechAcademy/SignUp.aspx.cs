using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;
using ConnectionLink;

namespace StechAcademy
{
    public partial class SignUp : System.Web.UI.Page
    {
        ConnectionClass c = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(txtbxpass.Value == txtbxconfpass.Value)
            {

                string encrPass = EncodePasswordToBase64(txtbxpass.Value);
                string query = "insert into users values ('" + txtbxfirstname.Value +"','" + txtbxlastname.Value +"','" + txtbxusername.Value +"','" + encrPass +"','" + txtbxemail.Value +"','" + txtbxPhoneno.Value +"','" + DDLGender.SelectedValue + "','A')";
                c.IfAdd(query);
                c.closeConn();
            }
        }

        public static string EncodePasswordToBase64(string password)
        {
            byte[] bytes = Encoding.Unicode.GetBytes(password);
            byte[] inArray = HashAlgorithm.Create("SHA1").ComputeHash(bytes);
            return Convert.ToBase64String(inArray);
        }
    }
}