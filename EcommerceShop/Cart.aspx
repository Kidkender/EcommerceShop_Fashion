<%@ Page Title="Shopping Cart" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="EcommerceShop.Cart" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .gridView {
  background-color: #f2f2f2;
}
        .gridView tr:nth-child(even) {
  background-color: #e6e6e6;
}

.gridView tr:nth-child(odd) {
  background-color: #f2f2f2;
}
.gridView th {
  font-weight: bold;
  font-size: 14px;
  text-align: left;
}

.gridView td {
  font-size: 14px;
  text-align: left;
}

.gridView th,
.gridView td {
  border: 1px solid #ccc;
}
.gridView td {
  padding: 5px;
}
            .gridView th {
                width: 100px;
            }
    .gridView {
        font-family: Arial, sans-serif;
    }


    </style>

    <!-- Page Header Start -->
    <div class="container-fluid bg-secondary mb-5">
        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
            <h1 class="font-weight-semi-bold text-uppercase mb-3" style="font-size: 2.5rem;">SHOPPING CART</h1>
            <div class="d-inline-flex">
                <p class="m-0">
                    <a href="Home" style="color: #D19C97; text-decoration: none; background-color: transparent;">Home</a>
                </p>
                <p class="m-0 px-2">-</p>
                <p class="m-0">Shopping cart</p>
            </div>
        </div>
    </div>
    <!-- Page Header End -->


    <!-- Cart Start -->
    <div class="container-fluid pt-5">
        <div class="row px-xl-5">
            <div class="col-lg-8 table-responsive mb-5">
                <table class="table table-bordered text-center mb-0">
                    <%--<thead class="bg-secondary text-dark">
                        <tr>
                            <th>Products ID</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>Total</th>
                            <th>Remove</th>
                        </tr>
                    </thead>--%>
                    <tbody class="align-middle">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" Width="100%" CssClass="gridView"  >
                            <HeaderStyle CssClass="gvHeader" />
                                <HeaderStyle BackColor="#337ab7" ForeColor="white" />

                            <Columns>
                                <asp:BoundField DataField="id" HeaderText="ID" />
                                <asp:BoundField DataField="tensp" HeaderText="Tên sản phẩm" />
<%--                                <asp:ImageField DataImageUrlField="imgUrl" ControlStyle-Width="200" HeaderText="Image Product"></asp:ImageField>--%>
                                <asp:BoundField DataField="gia" HeaderText="Gía" />
                                <asp:BoundField DataField="soluong" ItemStyle-VerticalAlign="middle" ItemStyle-HorizontalAlign="Center" HeaderText="Số lượng" />

                            </Columns>
                            <Columns >
                                <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>  
                                      
                                        <asp:Button runat="server" OnClick="Btnup_Click" ID="btn_up" Text="+"/>
                                      
                                        <asp:Button runat="server" ID="btn_down" Text=" -"/>
                                        <asp:LinkButton class="button" Style="background: red" ID="btnDelete" OnClientClick="return confirm('Bạn muốn xóa sản phẩm này không?')" runat="server" OnClick="LinkDelete_Click"> Xóa</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <HeaderStyle BackColor="#666" ForeColor="White" Font-Bold="True" HorizontalAlign="Center" />
                            <RowStyle CssClass="gvRow" />
                            <AlternatingRowStyle CssClass="gvAltRow" />

                        </asp:GridView>


                        <%--          <tr>
                            <td class="align-middle">
                                <img src="img/product-1.jpg" alt="" style="width: 50px;">
                                Colorful Stylish Shirt</td>
                            <td class="align-middle">$150</td>
                            <td class="align-middle">
                                <div class="input-group quantity mx-auto" style="width: 100px;">
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-primary btn-minus">
                                            <i class="fa fa-minus"></i>
                                        </button>
                                    </div>
                                    <input type="text" class="form-control form-control-sm bg-secondary text-center" value="1">
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-primary btn-plus">
                                            <i class="fa fa-plus"></i>
                                        </button>
                                    </div>
                                </div>
                            </td>
                            <td class="align-middle">$150</td>
                            <td class="align-middle">
                                <button class="btn btn-sm btn-primary"><i class="fa fa-times"></i></button>
                            </td>
                        </tr>



                        <tr>
                            <td class="align-middle">
                                <img src="img/product-2.jpg" alt="" style="width: 50px;">
                                Colorful Stylish Shirt</td>
                            <td class="align-middle">$150</td>
                            <td class="align-middle">
                                <div class="input-group quantity mx-auto" style="width: 100px;">
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-primary btn-minus">
                                            <i class="fa fa-minus"></i>
                                        </button>
                                    </div>
                                    <input type="text" class="form-control form-control-sm bg-secondary text-center" value="1">
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-primary btn-plus">
                                            <i class="fa fa-plus"></i>
                                        </button>
                                    </div>
                                </div>
                            </td>
                            <td class="align-middle">$150</td>
                            <td class="align-middle">
                                <button class="btn btn-sm btn-primary"><i class="fa fa-times"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td class="align-middle">
                                <img src="img/product-3.jpg" alt="" style="width: 50px;">
                                Colorful Stylish Shirt</td>
                            <td class="align-middle">$150</td>
                            <td class="align-middle">
                                <div class="input-group quantity mx-auto" style="width: 100px;">
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-primary btn-minus">
                                            <i class="fa fa-minus"></i>
                                        </button>
                                    </div>
                                    <input type="text" class="form-control form-control-sm bg-secondary text-center" value="1">
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-primary btn-plus">
                                            <i class="fa fa-plus"></i>
                                        </button>
                                    </div>
                                </div>
                            </td>
                            <td class="align-middle">$150</td>
                            <td class="align-middle">
                                <button class="btn btn-sm btn-primary"><i class="fa fa-times"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td class="align-middle">
                                <img src="img/product-4.jpg" alt="" style="width: 50px;">
                                Colorful Stylish Shirt</td>
                            <td class="align-middle">$150</td>
                            <td class="align-middle">
                                <div class="input-group quantity mx-auto" style="width: 100px;">
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-primary btn-minus">
                                            <i class="fa fa-minus"></i>
                                        </button>
                                    </div>
                                    <input type="text" class="form-control form-control-sm bg-secondary text-center" value="1">
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-primary btn-plus">
                                            <i class="fa fa-plus"></i>
                                        </button>
                                    </div>
                                </div>
                            </td>
                            <td class="align-middle">$150</td>
                            <td class="align-middle">
                                <button class="btn btn-sm btn-primary"><i class="fa fa-times"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td class="align-middle">
                                <img src="img/product-5.jpg" alt="" style="width: 50px;">
                                Colorful Stylish Shirt</td>
                            <td class="align-middle">$150</td>
                            <td class="align-middle">
                                <div class="input-group quantity mx-auto" style="width: 100px;">
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-primary btn-minus">
                                            <i class="fa fa-minus"></i>
                                        </button>
                                    </div>
                                    <input type="text" class="form-control form-control-sm bg-secondary text-center" value="1">
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-primary btn-plus">
                                            <i class="fa fa-plus"></i>
                                        </button>
                                    </div>
                                </div>
                            </td>
                            <td class="align-middle">$150</td>
                            <td class="align-middle">
                                <button class="btn btn-sm btn-primary"><i class="fa fa-times"></i></button>
                            </td>
                        </tr>--%>
                    </tbody>
                </table>
            </div>
            <div class="col-lg-4">
                <form class="mb-5" action="">
                    <div class="input-group">
                        <input type="text" class="form-control p-4" placeholder="Coupon Code">
                        <div class="input-group-append">
                            <button class="btn btn-primary">Apply Coupon</button>
                        </div>
                    </div>
                </form>
                <div class="card border-secondary mb-5">
                    <div class="card-header bg-secondary border-0">
                        <h4 class="font-weight-semi-bold m-0">Cart Summary</h4>
                    </div>
                    <div class="card-body">
                        <div class="d-flex justify-content-between mb-3 pt-1">
                            <h6 class="font-weight-medium">Subtotal</h6>
                            <h6 class="font-weight-medium">$150</h6>
                        </div>
                        <div class="d-flex justify-content-between">
                            <h6 class="font-weight-medium">Shipping</h6>
                            <h6 class="font-weight-medium">$10</h6>
                        </div>
                    </div>
                    <div class="card-footer border-secondary bg-transparent">
                        <div class="d-flex justify-content-between mt-2">
                            <h5 class="font-weight-bold">Total</h5>
                            <h5 class="font-weight-bold">$160</h5>
                        </div>
                        <a href="Checkout" class="btn btn-block btn-primary my-3 py-3">Proceed To Checkout</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Cart End -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script>
        $(document).ready(function () {
            var element = document.getElementById("navbar-vertical");
            element.classList.remove("show");
        })

    </script>
</asp:Content>
