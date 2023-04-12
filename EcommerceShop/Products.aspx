<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="EcommerceShop.Products" %>

<!DOCTYPE html>
<html>
<head>
    <title>Product List</title>
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/Style.css" rel="stylesheet">

    <style>
        .product-item {
            display: flex;
            align-items: center;
            padding: 10px;
        }

        .product-image {
            width: 150px;
            height: 150px;
            overflow: hidden;
            margin-right: 20px;
        }

            .product-image img {
                max-width: 100%;
                max-height: 100%;
                object-fit: cover;
            }

        .product-info h3 {
            margin-top: 0;
        }

        .product-info p {
            margin-bottom: 0;
        }

        .lv-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }

        .lv-item {
            width: calc(25% - 20px);
            margin-bottom: 20px;
        }
    </style>

</head>


<body>
    <form runat="server" id="form">
        <h1>Product List</h1>
        <p>Select a category to view products:</p>
        <asp:DataList ID="dlProducts" runat="server" OnSelectedIndexChanged="dlProducts_SelectedIndexChanged">
            <ItemTemplate>
           <LayoutTemplate>
        <div id="ProductListContainer">
            <asp:PlaceHolder ID="ProductListPlaceholder" runat="server"></asp:PlaceHolder>
        </div>
    </LayoutTemplate>
                <div class="lv-container">
                    <div class="lv-item">
                        <img src='<%# Eval("imgUrl") %>' />
                        <div class="product-info">
                            <h3><%# Eval("Name") %></h3>
                            <p>Price: <%# Eval("Price") %></p>
                            <div class="card-footer d-flex justify-content-between bg-light border">
                                <a  href="Detail.aspx?id=<%#Eval("productid")%>" ype="submit" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>Xem chi tiết</a>
                                <a href="#" class="btn btn-sm text-dark p-0"><i class="fas fa-shopping-cart text-primary mr-1" onclick="checklogin()"></i>Thêm vào giỏ hàng</a>
                            </div>
                        </div>
                    </div>

                </div>
            </ItemTemplate>
        </asp:DataList>

    </form>
 

</body>
    <script type="text/javascript">
        function checkLogin() {
            var isLoggedIn = '<%= Session["IsLoggedIn"] %>';
            if (isLoggedIn === "True") {
                // Nếu đã đăng nhập thì trả về true để thực hiện chức năng thêm vào giỏ hàng
                return true;
            } else {
                // Nếu chưa đăng nhập thì chuyển hướng đến trang đăng nhập
                window.location.href = "login.aspx";
                return false;
            }
        }

        $(document).ready(function () {
            $('#btnAddToCart').click(function () {
                // Kiểm tra đăng nhập trước khi thêm vào giỏ hàng
                if (checkLogin()) {
                    // Thực hiện chức năng thêm vào giỏ hàng
                    // ...
                }
            });
        });
    </script>
</html>
