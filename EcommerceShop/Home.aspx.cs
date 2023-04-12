using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Practices.EnterpriseLibrary.Common;
using Microsoft.Practices.EnterpriseLibrary.Data;
using Microsoft.Practices.ObjectBuilder;
using System.Configuration;
using System.Data.SqlClient;
using System.Text;

namespace EcommerceShop
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    Database db = DatabaseFactory.CreateDatabase("strConnet");
            //    //lấy ds Users ra để so sánh
            //    string procName = "getProducts";
            //    DataSet products = db.ExecuteDataSet(procName);
            //    DataTable tblProducts = products.Tables[0];
            //    string data = "<div>hello</div>";
            //    //xử lý login
            //    DataRow[] rows = tblProducts.Select();
            //    string dataProduct = string.Empty;

            //    foreach (DataRow row in rows)
            //    {
            //        myDiv.InnerHtml = "This is the content of my div.";
            //    }
            //}

        }



    }
}