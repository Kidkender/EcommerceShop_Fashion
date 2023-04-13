using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EcommerceShop
{
    public partial class Checkout : System.Web.UI.Page
    {

        SqlConnection conn = new SqlConnection("Data Source=ACER; Integrated Security=true;Initial Catalog=db_ECommerceShop; uid=sa; pwd=1; ");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView(); // Hiển thị trang đầu tiên khi trang được tải lần đầu tiên
            }
        }


        protected void BindGridView()
        {
            conn.Open();
            SqlCommand command = new SqlCommand("Select * from giohang ", conn);

            SqlDataReader reader = command.ExecuteReader();
            DataTable dataTable = new DataTable();
          
            dataTable.Columns.Add("tensp");
            dataTable.Columns.Add("gia");
            //dataTable.Columns.Add("soluong");
            int total = 0;
            while (reader.Read())
            {
                DataRow row = dataTable.NewRow();
                //row["ID"] = reader["ID"].ToString();
                row["tensp"] = reader["tensp"].ToString();
                row["gia"] = reader["gia"].ToString();
                //row["soluong"] = reader["soluong"].ToString();
                total += int.Parse(reader["gia"].ToString());
                dataTable.Rows.Add(row);
            }

            reader.Close();
            GridView2.DataSource = dataTable;
            GridView2.DataBind();

        }

    }
}