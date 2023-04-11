<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="EcommerceShop.Home" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Featured Start -->
    <style>
        .img-center{
                display: block;
                margin-left: auto;
                margin-right: auto;
                width: 325px !important;
                    height: 400px !important;
        }
    </style>
           
    <div class="container-fluid mb-5">
        <div class="row border-top px-xl-5" style="padding: 0px !important;">

            <div class="col-lg-3">
                </div>
            <div class="col-lg-9">
                <div id="header-carousel" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner">
                                <div class="carousel-item active" style="height: 410px;">
                                    <img class="img-fluid" src="img/banner1.PNG" alt="Image">
                                    <%--<div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                        <div class="p-3" style="max-width: 700px;">
                                            <h4 class="text-light text-uppercase font-weight-medium mb-3">10% Off Your First Order</h4>
                                            <h3 class="display-4 text-white font-weight-semi-bold mb-4">Fashionable Dress</h3>
                                            <a href="" class="btn btn-light py-2 px-3">Shop Now</a>
                                        </div>
                                    </div>--%>
                                </div>
                                <div class="carousel-item" style="height: 410px;">
                                    <img class="img-fluid" src="img/banner2.PNG" alt="Image">
                                   <%-- <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                        <div class="p-3" style="max-width: 700px;">
                                            <h4 class="text-light text-uppercase font-weight-medium mb-3">10% Off Your First Order</h4>
                                            <h3 class="display-4 text-white font-weight-semi-bold mb-4">Reasonable Price</h3>
                                            <a href="" class="btn btn-light py-2 px-3">Shop Now</a>
                                        </div>
                                    </div>--%>
                                </div>
                            </div>
                            <a class="carousel-control-prev" href="#header-carousel" data-slide="prev">
                                <div class="btn btn-dark" style="width: 45px; height: 45px;">
                                    <span class="carousel-control-prev-icon mb-n2"></span>
                                </div>
                            </a>
                            <a class="carousel-control-next" href="#header-carousel" data-slide="next">
                                <div class="btn btn-dark" style="width: 45px; height: 45px;">
                                    <span class="carousel-control-next-icon mb-n2"></span>
                                </div>
                            </a>
                        </div>
        </div>

        
        </div>
    </div>

    <div class="container-fluid pt-5">
        <div class="row px-xl-5 pb-3">
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                    <h1 class="fa fa-check text-primary m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">Quality Product</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                    <h1 class="fa fa-shipping-fast text-primary m-0 mr-2"></h1>
                    <h5 class="font-weight-semi-bold m-0">Free Shipping</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                    <h1 class="fas fa-exchange-alt text-primary m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">14-Day Return</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                    <h1 class="fa fa-phone-volume text-primary m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">24/7 Support</h5>
                </div>
            </div>
        </div>
    </div>
    <!-- Featured End -->


    <!-- Categories Start -->
    <div class="container-fluid pt-5">
        <div class="row px-xl-5 pb-3">
            <div class="col-lg-4 col-md-6 pb-1">
                <div class="cat-item d-flex flex-column border mb-4" style="padding: 30px;">
                    <p class="text-right" style="font-size: larger;">15 Products</p>
                    <a href="Shop" class="cat-img position-relative overflow-hidden mb-3">
                        <img class="img-fluid img-center" src="img/Áo Peplum Cổ Cách Điệu.png" alt="">
                    </a>
                    <h5 class="font-weight-semi-bold m-0 text-center" >
                        <asp:Label ID="LabCatelogi1" runat="server" Text="Label" CssClass="text-center">Áo</asp:Label>
                    </h5>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 pb-1">
                <div class="cat-item d-flex flex-column border mb-4" style="padding: 30px;">
                    <p class="text-right" style="font-size: larger;">15 Products</p>
                    <a href="Shop" class="cat-img position-relative overflow-hidden mb-3">
                        <img class="img-fluid img-center" src="img/2.png" alt="">
                    </a>
                    <h5 class="font-weight-semi-bold m-0 text-center" >
                        <asp:Label ID="LabCatelogi2" runat="server" Text="Label">QUẦN</asp:Label></h5>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 pb-1">
                <div class="cat-item d-flex flex-column border mb-4" style="padding: 30px;">
                   <p class="text-right" style="font-size: larger;">15 Products</p>
                    <a href="Shop" class="cat-img position-relative overflow-hidden mb-3">
                        <img class="img-fluid img-center" style="width:500px;height:320px;" src="img/áo sơ mi - sp 3.jpg" alt="">
                    </a>
                    <h5 class="font-weight-semi-bold m-0 text-center">
                        <asp:Label ID="Label1" runat="server" Text="Label">ĐẦM</asp:Label></h5>
                </div>
            </div>

        </div>
    </div>
    <!-- Categories End -->

    <!-- Offer Start -->
    <div class="container-fluid offer pt-5">
        <div class="row px-xl-5">
            <div class="col-md-6 pb-4">
                <div class="position-relative bg-secondary text-center text-md-right text-white mb-2 py-5 px-5">
                    <img src="img/offer-1.png" alt="">
                    <div class="position-relative" style="z-index: 1;">
                        <h5 class="text-uppercase text-primary mb-3">20% off the all order</h5>
                        <h1 class="mb-4 font-weight-semi-bold">Spring Collection</h1>
                        <a href="" class="btn btn-outline-primary py-md-2 px-md-3">Shop Now</a>
                    </div>
                </div>
            </div>
            <div class="col-md-6 pb-4">
                <div class="position-relative bg-secondary text-center text-md-left text-white mb-2 py-5 px-5">
                    <img src="img/offer-2.png" alt="">
                    <div class="position-relative" style="z-index: 1;">
                        <h5 class="text-uppercase text-primary mb-3">20% off the all order</h5>
                        <h1 class="mb-4 font-weight-semi-bold">Winter Collection</h1>
                        <a href="" class="btn btn-outline-primary py-md-2 px-md-3">Shop Now</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Offer End -->


    <!-- Products Start -->
    <div class="container-fluid pt-5">
        <div class="text-center mb-4">
            <h2 class="section-title px-5"><span class="px-2">Trandy Products</span></h2>
        </div>
        <div class="row px-xl-5 pb-3">
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="card product-item border-0 mb-4">
                    <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                        <img class="img-fluid w-100" src="img/4 (1).png" style="width:500px;height:565px" alt="">
                    </div>
                    <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                        
                        <h6 name="txtname" id="txtname" class="text-truncate mb-3">Đầm Đuôi Cá Dáng Ngắn</h6>
                        <div class="d-flex justify-content-center">
                            <h6>447.000đ </h6>
                            <h6 class="text-muted ml-2"><del>1.490.000đ</del></h6>
                        </div>
                        
                    </div>
                    <div class="card-footer d-flex justify-content-between bg-light border">
                        <a href="Detail" ype="submit" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>View Detail</a>
                        <a href="" class="btn btn-sm text-dark p-0"><i class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="card product-item border-0 mb-4">
                    <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                        <img class="img-fluid w-100" src="img/4295d9afaa808f4c5e1026c19529cdc4.jpg" style="width:500px;height:565px" alt="">
                    </div>
                    <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                        <h6 class="text-truncate mb-3">Đầm Kẻ Dáng Ôm</h6>
                        <div class="d-flex justify-content-center">
                            <h6>597.000đ </h6>
                            <h6 class="text-muted ml-2"><del>1.990.000đ</del></h6>
                        </div>
                    </div>
                    <div class="card-footer d-flex justify-content-between bg-light border">
                        <a href="Detail" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>View Detail</a>
                        <a href="" class="btn btn-sm text-dark p-0"><i class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="card product-item border-0 mb-4">
                    <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                        <img class="img-fluid w-100" src="img/5 (1).png" style="width:500px;height:565px" alt="">
                    </div>
                    <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                        <h6 class="text-truncate mb-3">Áo Sơ Mi Phối Dây Rút Eo</h6>
                        <div class="d-flex justify-content-center">
                            <h6>1.190.000đ</h6>
                            <h6 class="text-muted ml-2"><del>2.390.000đ</del></h6>
                        </div>
                    </div>
                    <div class="card-footer d-flex justify-content-between bg-light border">
                        <a href="Detail" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>View Detail</a>
                        <a href="" class="btn btn-sm text-dark p-0"><i class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="card product-item border-0 mb-4">
                    <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                        <img class="img-fluid w-100" src="img/áo sơ mi - ap.jpg" style="width:500px;height:565px" alt="">
                    </div>
                    <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                        <h6 class="text-truncate mb-3">Áo Tencel Trễ Vai Tay Phồng</h6>
                        <div class="d-flex justify-content-center">
                            <h6>850.000đ</h6>
                            <h6 class="text-muted ml-2"><del>1350.000đ</del></h6>
                        </div>
                    </div>
                    <div class="card-footer d-flex justify-content-between bg-light border">
                        <a href="Detail" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>View Detail</a>
                        <a href="" class="btn btn-sm text-dark p-0"><i class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="card product-item border-0 mb-4">
                    <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                        <img class="img-fluid w-100" src="img/ao sơ mi - sp 2.jpg" style="width:500px;height:565px" alt="">
                    </div>
                    <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                        <h6 class="text-truncate mb-3">Áo Hai Dây Chiffron Xếp Tầng</h6>
                        <div class="d-flex justify-content-center">
                            <h6>850.000đ</h6>
                            <h6 class="text-muted ml-2"><del>1250.000đ</del></h6>
                        </div>
                    </div>
                    <div class="card-footer d-flex justify-content-between bg-light border">
                        <a href="Detail" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>View Detail</a>
                        <a href="" class="btn btn-sm text-dark p-0"><i class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="card product-item border-0 mb-4">
                    <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                        <img class="img-fluid w-100" src="img/6.png" style="width:500px;height:565px" alt="">
                    </div>
                    <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                        <h6 class="text-truncate mb-3">Quần Skinny Jeans Đen</h6>
                        <div class="d-flex justify-content-center">
                            <h6>850.000đ</h6>
                            <h6 class="text-muted ml-2"><del>1250.000đ</del></h6>
                        </div>
                    </div>
                    <div class="card-footer d-flex justify-content-between bg-light border">
                        <a href="Detail" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>View Detail</a>
                        <a href="" class="btn btn-sm text-dark p-0"><i class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="card product-item border-0 mb-4">
                    <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                        <img class="img-fluid w-100" src="img/Áo Sơ Mi Thêu Nổi Phối Nơ.png" style="width:500px;height:565px" alt="">
                    </div>
                    <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                        <h6 class="text-truncate mb-3">Sơ Mi Họa Tiết Ren Dáng Dài</h6>
                        <div class="d-flex justify-content-center">
                            <h6>1.090.000đ</h6>
                            <h6 class="text-muted ml-2"><del>1.290.000đ</del></h6>
                        </div>
                    </div>
                    <div class="card-footer d-flex justify-content-between bg-light border">
                        <a href="Detail" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>View Detail</a>
                        <a href="" class="btn btn-sm text-dark p-0"><i class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="card product-item border-0 mb-4">
                    <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                        <img class="img-fluid w-100" src="img/3.png" style="width:500px;height:565px" alt="">
                    </div>
                    <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                        <h6 class="text-truncate mb-3">Quần Jeans Bó Rách Gối</h6>
                        <div class="d-flex justify-content-center">
                            <h6>436.000đ </h6>
                            <h6 class="text-muted ml-2"><del>1.090.000đ</del></h6>
                        </div>
                    </div>
                    <div class="card-footer d-flex justify-content-between bg-light border">
                        <a href="Detail" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>View Detail</a>
                        <a href="" class="btn btn-sm text-dark p-0"><i class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Products End -->

    <!-- Subscribe Start -->
    <div class="container-fluid bg-secondary my-5" style="margin-bottom: 0px !important;">
        <div class="row justify-content-md-center py-5 px-xl-5" style="margin-bottom: -14px !important;">
            <div class="col-md-6 col-12 py-5">
                <div class="text-center mb-2 pb-2">
                    <h2 class="section-title px-5 mb-3"><span class="bg-secondary px-2">Stay Updated</span></h2>
                    <p>Amet lorem at rebum amet dolores. Elitr lorem dolor sed amet diam labore at justo ipsum eirmod duo labore labore.</p>
                </div>
                <form action="">
                    <div class="input-group">
                        <input type="text" class="form-control border-white p-4" placeholder="Email Goes Here">
                        <div class="input-group-append">
                            <button style="
                                            color: #212529; 
                                            background-color: #D19C97;
                                            border-color: #D19C97;" 
                                    class="btn btn-primary px-4">
                                Subscribe
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Subscribe End -->
</asp:Content>
