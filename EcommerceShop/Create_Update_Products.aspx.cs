using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace EcommerceShop
{
    public partial class Create_Update_Products : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=ACER; Integrated Security=true;Initial Catalog=db_ECommerceShop; uid=sa; pwd=1; ");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int productId = Convert.ToInt32(Request.QueryString["ProductID"]);
                if (productId == null)
                {
                    Getdata(1);

                }
                else
                {
                    Getdata(productId);

                }
            }
        }
        private void Getdata(int id)
        {
         

                conn.Open();
                string sql = "SELECT * FROM Products where productid=@id";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@ProductName", id);

                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    txtProductName.Text = reader["Name"].ToString();
                    txtDescription.Text = reader["Description"].ToString();
                    txtUnitPrice.Text =reader["Price"].ToString();
                    txtCategory.Text = reader["ProductID"].ToString();

                }
                reader.Close();

            }
            protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int productId = Convert.ToInt32(Request.QueryString["ProductID"]);
            string productName = txtProductName.Text;
            decimal unitPrice = Convert.ToDecimal(txtUnitPrice.Text);
            string description = txtDescription.Text;
            //string imageUrl = txtImageUrl.Text;
            int category =int.Parse(txtCategory.ToString());
            string supplier = txtSupplier.Text;
            UpdateProduct(productId, productName, unitPrice, description, category); // Hàm UpdateProduct cập nhật thông tin sản phẩm vào cơ sở dữ liệu
            Response.Redirect("Admin.aspx"); // Chuyển về trang sản phẩm hoặc trang danh sách sản phẩm
        }
        protected bool UpdateProduct(int id,string name, decimal price, string descriptions ,int categories)
        {
            string query = "UPDATE Products SET ProductName=@ProductName, UnitPrice=@UnitPrice, Description=@Description, ImageUrl=@ImageUrl, Category=@Category, Supplier=@Supplier WHERE ProductID=@ProductID";
            SqlCommand command = new SqlCommand(query, conn);
            command.Parameters.AddWithValue("@ProductName", name);
            command.Parameters.AddWithValue("@UnitPrice", price);
            command.Parameters.AddWithValue("@Description", descriptions);
            //command.Parameters.AddWithValue("@ImageUrl", imageUrl);
            command.Parameters.AddWithValue("@Category", categories);
            //command.Parameters.AddWithValue("@Supplier", supplier);
            command.Parameters.AddWithValue("@ProductID", id);
            conn.Open();
            int rowsAffected = command.ExecuteNonQuery();
            conn.Close();
            if (rowsAffected > 0)
            {
                return true; // Cập nhật thành công
            }
            else
            {
                return false; // Cập nhật thất bại
            }

        }



    }
}