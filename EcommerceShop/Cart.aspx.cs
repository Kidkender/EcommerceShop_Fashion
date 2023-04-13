using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Practices.EnterpriseLibrary.Data;

namespace EcommerceShop
{
    public partial class Cart : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=ACER; Integrated Security=true;Initial Catalog=db_ECommerceShop; uid=sa; pwd=1; ");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView(); // Hiển thị trang đầu tiên khi trang được tải lần đầu tiên
            }
        }

        protected void LinkDelete_Click(object sender, EventArgs e)
        {
            int rowIndex = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            int productid = Convert.ToInt32(GridView1.Rows[rowIndex].Cells[0].Text);


            Database db = DatabaseFactory.CreateDatabase("strConnet");

            string procName = "spDelete_giohang";
            int count = db.ExecuteNonQuery(procName, productid);


            if (count > 0)
            {
                BindGridView();
            }


        }

        protected void BindGridView()
        {
            
         conn.Open();
            SqlCommand command = new SqlCommand("Select * from giohang ", conn);
        
            SqlDataReader reader = command.ExecuteReader();
            DataTable dataTable = new DataTable();
            dataTable.Columns.Add("id");
            dataTable.Columns.Add("tensp");
            dataTable.Columns.Add("gia");
            dataTable.Columns.Add("soluong");
            int soluong=0;
            int gia=0;
            long total = 0;
            while (reader.Read())
            {
                DataRow row = dataTable.NewRow();
                row["ID"] = reader["ID"].ToString();
                row["tensp"] = reader["tensp"].ToString();
                row["gia"]=reader["gia"].ToString();
                row["soluong"] = reader["soluong"].ToString();
                soluong = int.Parse(reader["soluong"].ToString());
                gia = int.Parse(reader["gia"].ToString());
                dataTable.Rows.Add(row);
                total =total+ gia * soluong;
            }
            
            reader.Close();
            GridView1.DataSource = dataTable;
            GridView1.DataBind();

        }

        private void GetItemOrder()
        {
            conn.Open();
            //string query = "SELECT * FROM productImages,products WHERE ProductImages.ProductId =Products.productId and CategoryId = @userid";
            string query = "Select * from giohang";
            SqlCommand command = new SqlCommand(query, conn);

            //command.Parameters.AddWithValue("@CategoryId", userid);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataSet dataset = new DataSet();
            adapter.Fill(dataset, "giohang");

            GridView1.DataSource = dataset.Tables["giohang"];
            GridView1.DataBind();
            conn.Close();
        }

        protected void Btnup_Click(object sender, EventArgs e)
        {
            if (GridView1.SelectedRow != null)
            {
                int value =Int32.Parse( GridView1.SelectedRow.Cells[3].Text);
                value++;
                GridView1.SelectedRow.Cells[3].Text = value.ToString();
                GridView1.DataBind();
                Console.WriteLine("New value: " + value);

            }
        }

        protected void Btndown_Click(object sender, EventArgs e)
        {
            if (GridView1.SelectedRow != null)
            {
                int value = Int32.Parse(GridView1.SelectedRow.Cells[3].Text);
                value--;
                GridView1.SelectedRow.Cells[3].Text = value.ToString();
                GridView1.DataBind();
                Console.WriteLine("New value: " + value.ToString());

            }
        }
    }
}