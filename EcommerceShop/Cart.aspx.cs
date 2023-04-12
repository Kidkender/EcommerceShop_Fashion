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
    public partial class Cart : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=ACER; Integrated Security=true;Initial Catalog=db_ECommerceShop; uid=sa; pwd=1; ");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string id = Request.QueryString["id"];
                if (id != null)
                {

                    int productId = Convert.ToInt32(id);
                    GetItemOrder(productId);
                }
              

            }
        }

        private void GetItemOrder(int userid)
        {
            conn.Open();
            string query = "SELECT * FROM productImages,products WHERE ProductImages.ProductId =Products.productId and CategoryId = @userid";
            SqlCommand command = new SqlCommand(query, conn);

            command.Parameters.AddWithValue("@CategoryId", categoryId);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataSet dataset = new DataSet();
            adapter.Fill(dataset, "Products");

            dlProducts.DataSource = dataset.Tables["Products"];
            dlProducts.DataBind();
            conn.Close();
        }
    }
}