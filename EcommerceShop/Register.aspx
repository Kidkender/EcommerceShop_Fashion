<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="EcommerceShop.Register" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8">
    <title>Ecommere Shop</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
    <style>
        .input-st{
            display: block;
            width: 100%;
            border: none;
            outline: none;
            padding: 1rem 1.5rem;
            background-color: #000000;
            border-radius: 100px;
            color: #1d1f43;
            font-weight: 400;
            font-size: 16px;
            line-height: 18px;
            height: 45px;
        }
        .btn-ct{
            width: 100%;
            background: linear-gradient(90deg, #6415ff 0%, #9035dc 45.83%, #f78297 100%);
            padding: 0.5rem;
            border-radius: 100px;
            border: none;
            font-weight: 600;
            font-size: 16px;
            line-height: 28px;
            text-align: center;
            letter-spacing: -0.04em;
            color: #000000;
        }
    </style>
</head>
<body>
    <style>
        @import "bourbon";

        body {
            background: #eee !important;
        }

        .wrapper {
            margin-top: 80px;
            margin-bottom: 80px;
        }

        .form-signin {
            max-width: 380px;
            padding: 15px 35px 45px;
            margin: 0 auto;
            background-color: #fff;
            border: 1px solid rgba(0,0,0,0.1);
            .form-signin-heading, .checkbox

        {
            margin-bottom: 30px;
        }

        .checkbox {
            font-weight: normal;
        }

        .form-control {
            position: relative;
            font-size: 16px;
            height: auto;
            padding: 10px;
            @include box-sizing(border-box);
            &:focus

        {
            z-index: 2;
        }

        }

        input[type="text"] {
            margin-bottom: -1px;
            border-bottom-left-radius: 0;
            border-bottom-right-radius: 0;
        }

        input[type="password"] {
            margin-bottom: 20px;
            border-top-left-radius: 0;
            border-top-right-radius: 0;
        }

        }
    </style>
    <!-- Page Header End -->
    <div class="wrapper">
        <form id="form1" class="form-signin" runat="server" style="box-shadow: rgb(0 0 0 / 80%) 0 0 25px;
    width: 450px;
    padding: 2rem;
    max-width: 90%;
    background: rgba(0, 0, 0, 0.22);
    border-radius: 20px;
    text-align: center;">
            <h2 class="form-signin-heading text-center">Đăng ký</h2>
            <form method="post" action="Register.aspx">
                <input type="text" class="form-control input-st" name="txtTentruycap" id="txtTentruycap" placeholder="Tên đăng nhập" required="" autofocus="" />
                <br />
                <input type="password" class="form-control input-st" name="txtMatkhau" id="txtMatkhau" placeholder="Mật khẩu" required="" />
                <br />
                <input type="text" class="form-control input-st" name="TxtTen" id="TxtTen" placeholder="Tên" required="" />
                <br />
                <input type="text" class="form-control input-st" name="txtEmail" id="txtEmail" placeholder="Email Address" required="" autofocus="" />
                <br />
                <input type="text" class="form-control input-st" name="txtAddress" id="txtAddress" placeholder="Address" required="" autofocus="" />
                <br />
                <button class="btn btn-lg btn-primary btn-block btn-ct" ype="submit" value="Đăng ký">Đăng ký</button>
                 <a href="Login" value="Đăng ký" style="color:blue">Đã có tài khoản? Đăng nhập ngay</a><a href="Home" style="color:blue"> Trang chủ</a>
            </form>
        </form>
    </div>
</body>
</html>
