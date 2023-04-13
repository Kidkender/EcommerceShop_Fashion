using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.Routing;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EcommerceShop
{
    public partial class Shop1 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=ACER; Integrated Security=true;Initial Catalog=db_ECommerceShop; uid=sa; pwd=1; ");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string id = Request.QueryString["id"];
                //string id = "1";
                if (id != null)
                {
                    // Xử lý giá trị của tham số id ở đây
                    // Ví dụ: gọi hàm GetProductList() với categoryId là giá trị của tham số id
                    int categoryId = Convert.ToInt32(id);
                    GetProductList(categoryId);
                }
                else
                {
                    RouteDirect("Shop.aspx");
                }

            }

        }

        private void RouteDirect(string v)
        {
            Response.Redirect(v);

        }

        [WebMethod]
        public void GetProductList(int categoryId)
        {

            conn.Open();
            string query = "SELECT * FROM productImages,products WHERE ProductImages.ProductId =Products.productId and CategoryId = @CategoryId";
            SqlCommand command = new SqlCommand(query, conn);

            command.Parameters.AddWithValue("@CategoryId", categoryId);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
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