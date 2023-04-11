using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Practices.EnterpriseLibrary.Common;
using Microsoft.Practices.EnterpriseLibrary.Data;
using Microsoft.Practices.ObjectBuilder;

namespace EcommerceShop
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form.Count > 0)
            {
                string tentruycap = Request.Form["txtTentruycap"];
                string matkhau = Request.Form["txtMatkhau"];
                string name = Request.Form["TxtTen"];
                string diachi = Request.Form["txtAddress"];
                string email = Request.Form["txtEmail"];

                Database db = DatabaseFactory.CreateDatabase("strConnet");

                string procName = "spUsers_Insert";
                int count = db.ExecuteNonQuery(procName, new object[] { tentruycap , email, matkhau, "user", name, 1, diachi, "3333333" });

                if (count > 0)
                {
                    Session["UserID"] = tentruycap;
                    Response.Redirect("/Login.aspx");
                }
                else
                {
                    Response.Redirect("/Register.aspx");
                }
            }
        }
    }
}