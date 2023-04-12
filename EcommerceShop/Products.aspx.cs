using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EcommerceShop
{
    public partial class Products : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=ACER; Integrated Security=true;Initial Catalog=db_ECommerceShop; uid=sa; pwd=1; ");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string id = Request.QueryString["id"];
                if (id != null)
                {
                    // Xử lý giá trị của tham số id ở đây
                    // Ví dụ: gọi hàm GetProductList() với categoryId là giá trị của tham số id
                    int categoryId = Convert.ToInt32(id);
                    GetProductList(categoryId);
                }

            }


        }
        [WebMethod]
        public void GetProductList(int categoryId)
        {

            conn.Open();
            string query = "SELECT * FROM Products WHERE CategoryId = @CategoryId";
            SqlCommand command = new SqlCommand(query, conn);

            command.Parameters.AddWithValue("@CategoryId", categoryId);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataSet dataset = new DataSet();
            adapter.Fill(dataset, "Products");

            dlProducts.DataSource = dataset.Tables["Products"];
            dlProducts.DataBind();
            conn.Close();
        }
        [WebMethod]
        public void GetProductList()
        {
            conn.Open();

            string query = "SELECT * FROM Products ";
            SqlDataAdapter adapter = new SqlDataAdapter(query, conn);
            DataSet dataset = new DataSet();
            adapter.Fill(dataset, "Products");

            dlProducts.DataSource = dataset.Tables["Products"];
            dlProducts.DataBind();
            conn.Close();

        }

        protected void dlProducts_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}