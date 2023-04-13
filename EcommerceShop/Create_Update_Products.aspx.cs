using Microsoft.Ajax.Utilities;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services.Protocols;
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
            if (Request.QueryString["productID"] != null)
            {
                string productID = Request.QueryString["productID"].ToString().Trim();
                string procName = "spGetDetail_Product";

                Database db = DatabaseFactory.CreateDatabase("strConnet");
                //lấy ds Users ra để so sánh
                DataSet product = db.ExecuteDataSet(procName, productID);
                DataTable tblProduct = product.Tables[0];

                //xử lý login
                DataRow[] rows = tblProduct.Select();
                if (rows.Count() > 0)
                {
                    txtProductName.Text = rows[0][1].ToString();
                    txtProductName.ReadOnly = true;
                    //txtDescription.Text = rows[0][2].ToString();
                    //txtUnitPrice.Text = rows[0][3].ToString();

                    //DropDownCategory.SelectedValue = rows[0][5].ToString();
                    //txtSupplier.Text = "10";
                }
            }
            else
            if (!IsPostBack)
            {
                int productId = Convert.ToInt32(Request.QueryString["ProductID"]);
                if (productId < 0)
                {
                    Getdata(1);

                }
                else
                {
                    Getdata(productId);

                }
            }
        }
        [HttpMethod]
        private void Getdata(int id)
        {


            conn.Open();
            string sql = "SELECT * FROM Products where productid=@id";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@id", id);

            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                txtProductName.Text = reader["Name"].ToString();
                txtDescription.Text = reader["Description"].ToString();
                txtUnitPrice.Text = reader["Price"].ToString();
                //txtCategory.Text = reader["ProductID"].ToString();

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
            int category = 1;
            string supplier = txtSupplier.Text;
            UpdateProduct(productId, productName, unitPrice, description, category); // Hàm UpdateProduct cập nhật thông tin sản phẩm vào cơ sở dữ liệu
            Response.Redirect("Admin.aspx"); // Chuyển về trang sản phẩm hoặc trang danh sách sản phẩm
        }
        protected void LinkSave_Click(object sender, EventArgs e)
        {
            //update data for product
            if (Request.QueryString["productID"] != null)
            {
                Database db = DatabaseFactory.CreateDatabase("strConnet");


                string productName = txtProductName.Text;
                string Price = txtUnitPrice.Text;
                Price = Price.Replace(",00", string.Empty);

                int unitPrice = int.Parse(Price);
                string description = txtDescription.Text;
                string fileName = upAnh.FileName.ToString();
                string categoryID = DropDownCategory.SelectedValue;
                int supplier = Convert.ToInt32(txtSupplier.Text);
                if (!string.IsNullOrEmpty(fileName))
                {
                    upAnh.SaveAs(Server.MapPath("img/") + upAnh.FileName);
                }
                string procName = "spProduct_Update";
                int count = db.ExecuteNonQuery(procName, new object[] { productName, description, unitPrice, categoryID, fileName });

                if (count > 0)
                {
                    Response.Redirect("/Admin.aspx");
                }

            }
            else//add new data product
            {
                if (upAnh.FileContent.Length <= 0)
                {
                    lbTB.Text = "Chưa chọn ảnh";
                }
                else if (!upAnh.FileName.EndsWith(".jpeg") && !upAnh.FileName.EndsWith(".png") && !upAnh.FileName.EndsWith(".jpg"))
                {
                    lbTB.Text = "Ảnh không hợp lệ";
                }
                else
                {
                    upAnh.SaveAs(Server.MapPath("img/") + upAnh.FileName);

                    Database db = DatabaseFactory.CreateDatabase("strConnet");


                    string productName = txtProductName.Text.Trim();
                    string Price = txtUnitPrice.Text;
                    Price = Price.Replace(",00", string.Empty);

                    int unitPrice = int.Parse(Price);

                    string description = txtDescription.Text.Trim();
                    string fileName = upAnh.FileName.ToString().Trim();
                    string categoryID = DropDownCategory.SelectedValue.ToString();
                    int supplier = Convert.ToInt32(txtSupplier.Text.Trim());

                    string procName = "spProduct_Insert";
                    int count = db.ExecuteNonQuery(procName, new object[] { productName, description, unitPrice, categoryID, fileName });

                    if (count > 0)
                    {
                        Response.Redirect("/Admin.aspx");
                    }
                }
            }


        }
        protected bool UpdateProduct(int id, string name, decimal price, string descriptions, int categories)
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
        protected void Clear()
        {
            txtUnitPrice.Text = string.Empty;
            DropDownCategory.Text = string.Empty;
            txtSupplier.Text = string.Empty;
            txtProductName.Text = string.Empty;
            txtDescription.Text = string.Empty;

            txtProductName.Focus();
        }



    }
}