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
using System.Data.SqlClient;
using System.Collections;

namespace EcommerceShop
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=ACER; Integrated Security=true;Initial Catalog=db_ECommerceShop; uid=sa; pwd=1; ");

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

                        if (rows[0]["username"].ToString().Equals("admin"))
                        {
                            Response.Redirect("/Admin.aspx");

                        }
                        else
                        {
                            Response.Redirect("/Home.aspx");

                        }
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

        public bool checkLogin()
        {
            int count = 0;
            string sql = "SELECT COUNT(*) FROM login_session";
            SqlCommand command = new SqlCommand(sql, conn);
            conn.Open();
            count = (int)command.ExecuteScalar();
            conn.Close();

            if (count>0)
            {
                return true;
            }
            return false;
        }
    
    }
}