<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="EcommerceShop.Admin" %>

<!DOCTYPE html>

<%--<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>--%>
<html>
<head>
    <title>Admin Dashboard</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        /* Reset CSS */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Style header */
        header {
            background-color: #333;
            color: #fff;
            padding: 20px;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        nav ul {
            list-style: none;
            display: flex;
        }

        nav li {
            margin-right: 20px;
        }

        nav a {
            color: #fff;
            text-decoration: none;
            font-weight: bold;
        }

        /* Style section */
        section {
            padding: 20px;
        }

        h2 {
            margin-bottom: 20px;
        }

        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ccc;
        }

        thead th {
            background-color: #333;
            color: #fff;
        }

        tbody tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        button {
            background-color: #333;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-right: 10px;
        }

            button:hover {
                background-color: #555;
            }

            button:active {
                transform: translateY(2px);
            }

        .gvHeader {
            background-color: #F5F5F5;
            font-weight: bold;
            font-size: 14px;
            border: 1px solid #DDDDDD;
            padding: 5px;
        }

        .gvRow {
            background-color: #FFFFFF;
            font-size: 16px;
            border: 1px solid #DDDDDD;
            padding: 5px;
        }

        .gvAltRow {
            background-color: #F9F9F9;
            font-size: 16px;
            border: 1px solid #DDDDDD;
            padding: 5px;
        }

            .gvRow:hover, .gvAltRow:hover {
                background-color: #EFEFEF;
            }
            .button {
  background-color: #3498db; /* Màu nền */
  border: none; /* Không có viền */
  color: white; /* Màu chữ */
  padding: 10px 20px; /* Khoảng cách giữa nội dung và viền */
  text-align: center; /* Canh giữa chữ */
  text-decoration: none; /* Không gạch chân */
  display: inline-block;
  font-size: 16px; /* Cỡ chữ */
  margin: 4px 2px; /* Khoảng cách giữa nút */
  cursor: pointer; /* Đổi con trỏ chuột khi rê chuột vào nút */
}

.button:hover {
  background-color: #2980b9; /* Màu nền khi rê chuột vào nút */
}
    </style>
</head>
<body>
    <header>
        <h1>Admin Dashboard</h1>
        <nav>
            <ul>
                <li><a href="Admin">Sản phẩm</a></li>
                <li><a href="#">Đơn hàng</a></li>
                <li><a href="#">Người dùng</a></li>
                <a href="Login?act=out" class="nav-item nav-link">Đăng xuất</a>
            </ul>
        </nav>
    </header>

    <section>
        <h2>Sản phẩm</h2>

        <a href="Create_Update_Products.aspx"><button >Thêm sản phẩm</button></a>
        


    </section>
    <asp:PlaceHolder ID="PlaceHolder1" runat="server">
        <form id="form1" runat="server">
            <div>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="GridView">
                    <HeaderStyle CssClass="gvHeader" />
                    <Columns>
                        <asp:BoundField DataField="ProductID" HeaderText="ID" />
                        <asp:BoundField DataField="Name" HeaderText="Tên sản phẩm" />
                        <asp:ImageField DataImageUrlField="imgUrl" ControlStyle-Width="200"  HeaderText="Image Product"  ></asp:ImageField>
                        <asp:BoundField DataField="Description" HeaderText="Mô tả" />
                        <asp:BoundField DataField="Price" HeaderText="Giá" />

                    </Columns>
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                               <asp:LinkButton class="button" ID="btnUpdate" OnClientClick="return confirm('Bạn muốn sửa sản phẩm này không?')" runat="server"  OnClick="LinkUpdate_Click"> Cập nhập</asp:LinkButton>
                               <asp:LinkButton class="button" style="background:red" ID="btnDelete" OnClientClick="return confirm('Bạn muốn xóa sản phẩm này không?')" runat="server"  OnClick="LinkDelete_Click"> Xóa</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                                                <HeaderStyle BackColor="#666" ForeColor="White" Font-Bold="True" HorizontalAlign="Center" />
                                        <RowStyle CssClass="gvRow" />
                                        <AlternatingRowStyle CssClass="gvAltRow" />

                </asp:GridView>

            </div>
             <asp:Button runat="server" ID="GetPageList"/>
        </form>
       
    </asp:PlaceHolder>
    <asp:Repeater ID="repeaterPagination" runat="server" OnItemCommand="repeaterPagination_ItemCommand">
<%--    <ItemTemplate>
        <asp:Button ID="btnPage" runat="server" CommandName="Page" CommandArgument='<%# Eval("PageIndex") %>' Text='<%# Eval("PageIndex") %>' />
    </ItemTemplate>--%>
</asp:Repeater>

</body>
</html>
