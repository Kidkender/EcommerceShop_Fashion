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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form.Count > 0)
            {
                string tentruycap = Request.Form["txtTentruycap"];
                string matkhau = Request.Form["txtMatkhau"];

                Database db = DatabaseFactory.CreateDatabase("strConnet");
                //lấy ds Users ra để so sánh
                string procName = "spUsers_GetByPK";
                DataSet users = db.ExecuteDataSet(procName);
                DataTable tblUsers = users.Tables[0];

                //xử lý login
                DataRow[] rows = tblUsers.Select(string.Format("UserName='{0}'", tentruycap));
                if (rows.Length == 1)//đúng tên truy cập
                {
                    //đúng mật khẩu
                    if (rows[0]["UserPassword"].ToString().Equals(matkhau))
                    {
                        //được đăng nhập 
                        Session["UserID"] = Convert.ToInt32(rows[0]["UserId"]);
                        Response.Redirect("/Home.aspx");
                    }
                }
            }
            if (Request.QueryString["act"] != null
                && Request.QueryString["act"].Equals("out"))
            {
                Session.Abandon();
                Response.Redirect("/Login.aspx");
            }
        }
    }
}