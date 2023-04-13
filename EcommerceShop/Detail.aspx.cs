using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services.Protocols;
using Microsoft.Practices.EnterpriseLibrary.Data;

namespace EcommerceShop
{
    public partial class Detail : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=ACER; Integrated Security=true;Initial Catalog=db_ECommerceShop; uid=sa; pwd=1; ");

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                string id = Request.QueryString["id"];
                if (id != null)
                {
                    // Xử lý giá trị của tham số id ở đây
                    // Ví dụ: gọi hàm GetProductList() với categoryId là giá trị của tham số id
                    int productId = Convert.ToInt32(id);
                    GetDetailProduct(productId);
                }
                //else
                //{
                //    RouteDirect("Products.aspx");
                //}

            }

        }

        private void RouteDirect(string url)
        {
            Response.Redirect(url);
        }
        [WebMethod]
        public void GetDetailbyID(int productId)
        {

            conn.Open();

            // truy vấn để lấy đường dẫn ảnh từ database
            string query = "SELECT url FROM productImages WHERE ProductId = @productId";
            SqlCommand command = new SqlCommand(query, conn);
            command.Parameters.AddWithValue("@productId", productId);

            string imagePath = (string)command.ExecuteScalar();

            // gán đường dẫn ảnh vào thuộc tính src của thẻ img
            imgProduct.ImageUrl = "img/" + imagePath;

            // đóng kết nối
            conn.Close();
        }

        [WebMethod]
        public void GetDetailDefault(int productId = 1)
        {

            conn.Open();

            // truy vấn để lấy đường dẫn ảnh từ database
            string query = "SELECT * FROM productImages WHERE ProductId = @productId";
            SqlCommand command = new SqlCommand(query, conn);
            command.Parameters.AddWithValue("@productId", productId);

            string imagePath = (string)command.ExecuteScalar();

            // gán đường dẫn ảnh vào thuộc tính src của thẻ img
            imgProduct.ImageUrl = imagePath;

            // đóng kết nối
            conn.Close();
        }
        public bool AddToCart()
        {
            try
            {
                if (!string.IsNullOrEmpty(Request.QueryString["id"]))
                {
                    string productID = Request.QueryString["id"].ToString();
                    string productName = txtname.Text.ToString();
                    string price = txtprice.Text.ToString();
                    int productPrice = Convert.ToInt32(price.Replace(",00", string.Empty));
                    int soluong = Convert.ToInt32(txtSoLuong.Text.ToString());

                    Database db = DatabaseFactory.CreateDatabase("strConnet");

                    string procName = "AddToCart";
                    int count = db.ExecuteNonQuery(procName, new object[] { productName, productID, productName, productPrice, soluong });

                    if (count > 0)
                    {
                        Response.Redirect("/Cart.aspx");
                        return true;
                    }

                }
                return false;
            }
            catch (Exception ex)
            {

            }
            return false;
        }
        public string GetImageUrl(int productId)
        {
            string imageUrl = "";
            conn.Open();
            string query = "SELECT * FROM productImages WHERE ProductId = @productId";
            SqlCommand command = new SqlCommand(query, conn);
            command.Parameters.AddWithValue("@ProductId", productId);
            SqlDataReader reader = command.ExecuteReader();
            if (reader.Read())
            {
                imageUrl = reader["Url"].ToString();
            }
            conn.Close();
            return imageUrl;
        }
        [WebMethod]
        public void GetDetailProduct(int productId)
        {
            string imageUrl = "";
            string nameProduct = "";
            string price = "";
            string description = "";
            conn.Open();
            string query = "SELECT * FROM productImages,products WHERE ProductImages.ProductId =Products.productId and Products.ProductId = @productId";
            SqlCommand command = new SqlCommand(query, conn);
            command.Parameters.AddWithValue("@ProductId", productId);
            SqlDataReader reader = command.ExecuteReader();
            if (reader.Read())
            {
                imgProduct.ImageUrl = "img/" + reader["ImgUrl"].ToString();
                Image1.ImageUrl = "img/" + reader["ImgUrl"].ToString();
                Image2.ImageUrl = "img/" + reader["ImgUrl"].ToString();
                Image3.ImageUrl = "img/" + reader["ImgUrl"].ToString();
                nameProduct = reader["Name"].ToString();
                price = reader["lastprice"].ToString();
                description = reader["Description"].ToString();
            }
            conn.Close();
            imageUrl = GetImageUrl(1);
            //imgProduct.ImageUrl = imageUrl;

            txtname.Text = nameProduct;
            txtprice.Text = price;
            txtdescription.Text = description;
        }
        [WebMethod]
        protected void btnAddCart_Click(object sender, EventArgs e)
        {

            if (!string.IsNullOrEmpty(Request.QueryString["id"]))
            {
                string productID = Request.QueryString["id"].ToString();
                string productName = txtname.Text.ToString();
                string price = txtprice.Text.ToString();
                int productPrice = Convert.ToInt32(price.Replace(",00", string.Empty));
                int soluong = Convert.ToInt32(txtSoLuong.Text.ToString());

                Database db = DatabaseFactory.CreateDatabase("strConnet");

                string procName = "AddToCart";
                int count = db.ExecuteNonQuery(procName, new object[] { productID, productName, productPrice, soluong });

                if (count > 0)
                {
                    Response.Redirect("/Cart.aspx");

                }

            }


        }
    }
}