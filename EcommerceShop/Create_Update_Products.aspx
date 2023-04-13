<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Create_Update_Products.aspx.cs" Inherits="EcommerceShop.Create_Update_Products" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        form {
            display: flex;
            flex-direction: column;
            align-items: flex-start;
            margin: 20px;
            padding: 20px;
            border: 1px solid #ccc;
        }

        label {
            font-weight: bold;
        }

        input, textarea {
            margin-bottom: 10px;
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

            input[type="submit"] {
                background-color: #4CAF50;
                color: white;
                padding: 10px 20px;
                border: none;
                border-radius: 3px;
                cursor: pointer;
            }

                input[type="submit"]:hover {
                    background-color: #3e8e41;
                }
    </style>
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

        .update-btn {
            background-color: #4CAF50; /* Màu nền */
            border: none; /* Không viền */
            color: white; /* Màu chữ */
            padding: 12px 24px; /* Độ rộng và chiều cao của nút */
            text-align: center; /* Căn giữa chữ trong nút */
            text-decoration: none; /* Không gạch chân chữ */
            display: inline-block;
            font-size: 16px;
            margin-right: 10px; /* Khoảng cách với nút bên phải */
        }

        .add-btn {
            background-color: #008CBA;
            border: none;
            color: white;
            padding: 12px 24px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin-right: 10px;
        }

        .return-btn {
            background-color: #f44336;
            border: none;
            color: white;
            padding: 12px 24px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
        }
    </style>
</head>
<body>
    <header>
        <h1>Admin Dashboard</h1>
        <nav>
            <ul>
                <li><a href="#">Sản phẩm</a></li>
                <li><a href="#">Đơn hàng</a></li>
                <li><a href="#">Người dùng</a></li>
                <a href="Login?act=out" class="nav-item nav-link">Đăng xuất</a>
            </ul>
        </nav>
    </header>

    <section>
        <h2>Sản phẩm</h2>



    </section>

    <form id="form1" runat="server" style="align-items: initial">
        <br />
        <asp:Label runat="server" values="txtProductName"> Tên sản phẩm</asp:Label>
        <asp:TextBox ID="txtProductName" runat="server"></asp:TextBox>
        <br />
        <asp:Label runat="server"> Gía sản phẩm</asp:Label>

        <asp:TextBox ID="txtUnitPrice" runat="server"></asp:TextBox>
        <br />
        <asp:Label runat="server"> Mô tả sản phẩm</asp:Label>
        <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
        <br />
        <asp:Label runat="server"> Ảnh sản phẩm</asp:Label>
        <asp:FileUpload runat="server" ID="upAnh" /><br />
        <asp:Label runat="server"> Loại sản phẩm</asp:Label>
        <asp:DropDownList ID="DropDownCategory" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="CategoryId"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_ECommerceShopConnectionString %>" ProviderName="<%$ ConnectionStrings:db_ECommerceShopConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Categories]"></asp:SqlDataSource>
        <br />
        <asp:Label runat="server"> Tổng lượng sản phẩm</asp:Label>
        <asp:TextBox ID="txtSupplier" runat="server"></asp:TextBox>
        <br />
        <asp:Label Width="50%" ID="lbTB" runat="server" />

        <asp:LinkButton ID="btnSaveProduct" class="button" OnClientClick="return confirm('Bạn muốn lưu sản phẩm này không?')" runat="server" OnClick="LinkSave_Click"> Lưu sản phẩm</asp:LinkButton>



        <button runat="server" id="btnreturn" class="return-btn">

            <a href="Admin.aspx" style="text-decoration: none">Quay lại</a>

        </button>
        <a href="Register.aspx">Register.aspx</a>

    </form>
</body>

</html>
<script>
    document.querySelector('form').addEventListener('submit', (event) => {
        event.preventDefault(); // Ngăn chặn form submit
        const name = document.querySelector('#name').value;
        const description = document.querySelector('#description').value;
        const price = document.querySelector('#price').value;

    });
</script>
