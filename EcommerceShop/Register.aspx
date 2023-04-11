﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="EcommerceShop.Register" %>

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
        <form id="form1" class="form-signin" runat="server">
            <h2 class="form-signin-heading text-center">Đăng ký</h2>
            <form method="post" action="Register.aspx">
                <input type="text" class="form-control" name="txtTentruycap" id="txtTentruycap" placeholder="Tên đăng nhập" required="" autofocus="" />
                <br />
                <input type="password" class="form-control" name="txtMatkhau" id="txtMatkhau" placeholder="Mật khẩu" required="" />
                <br />
                <input type="text" class="form-control" name="TxtTen" id="TxtTen" placeholder="Tên" required="" />
                <br />
                <input type="text" class="form-control" name="txtEmail" id="txtEmail" placeholder="Email Address" required="" autofocus="" />
                <br />
                <input type="text" class="form-control" name="txtAddress" id="txtAddress" placeholder="Address" required="" autofocus="" />
                <br />
                <button class="btn btn-lg btn-primary btn-block" ype="submit" value="Đăng ký">Đăng ký</button>
                 <a href="Login" value="Đăng ký" style="color:blue">Đã có tài khoản? Đăng nhập ngay</a><a href="Home" style="color:blue"> Trang chủ</a>
            </form>
        </form>
    </div>
</body>
</html>
