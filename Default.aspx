<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="~/cms/display/DisplayLoadControl.ascx" TagPrefix="uc1" TagName="DisplayLoadControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>mypham.vn</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
     <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <link href="css/index.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <!--menu đầu trang-->
        <div class="header">
            <div class="container">
                <div class="navbar">
                    <div class="logo">
                        <a href="/">
                            <img src="https://cdn.printgo.vn/uploads/media/772948/thiet-ke-logo-my-pham-16_1584438203.jpg" width="125px"></a>
                    </div>
                    <nav>
                        <ul id="MenuItems">
                            <asp:Literal ID="ltrMenu" runat="server"></asp:Literal>
                            <li><a href="/Default.aspx?modul=SanPham&modulphu=GioHang">
                        <i class="fa fa-shopping-bag" aria-hidden="true"></i></a></li>
                        </ul>
                        <div id="dangnhap">
                            <asp:PlaceHolder ID="plChuaDangNhap" runat="server">
                                <ul>
                                    <li><a href="Default.aspx?modul=ThanhVien&modulphu=DangKy">Đăng ký</a></li>
                                    <li><a href="Default.aspx?modul=ThanhVien&modulphu=DangNhap">Đăng nhập</a></li>
                                </ul>
                            </asp:PlaceHolder>

                            <asp:PlaceHolder ID="plDaDangNhap" runat="server" Visible="False">
                                <ul>
                                    <li>/<asp:LinkButton ID="lbtDangXuat" runat="server" CausesValidation="False" OnClick="lbtDangXuat_Click">Đăng xuất</asp:LinkButton></li>
                                    <li>
                                        <asp:Literal ID="ltrTenKhachHang" runat="server"></asp:Literal></li>
                                </ul>
                            </asp:PlaceHolder>
                        </div>
                    </nav>
                </div>
                <div class="row d-none">
                    <div class="col-6">
                        <h1>Give Your Workout<br>
                            A New Style!</h1>
                        <p>
                            Success ins't always about greatness. It's about
                        consistency. Consistent
                            <br>
                            hard work gains success. Greatness
                        will come.
                        </p>
                        <a href="" class="btn">Explore Now &#8594;</a>
                    </div>
                    <div class="col-6">
                        <img class="img-fluid" src="https://top10tphcm.com/wp-content/uploads/2018/12/shop-my-pham-han-quoc-chinh-hang-hcm.jpg">
                    </div>
                </div>
            </div>
        </div>
        <!--thanh tìm kiếm + giỏ hàng-->
        <div class="search_">
            <div class="form-inline">
                <div style="margin-left: auto" class="form-group mb-2">
                    <label for="staticEmail2" class="sr-only">Email</label>
                    <input type="text" class="form-control-plaintext form-control" placeholder="Từ khóa tìm kiếm" name="pr_name" value="<%=tukhoa %>" id="keysearch" onkeydown="CheckPostSearch(event)" />
                </div>
                <a href="javascript://" onclick="PostSearch()" class="btn btn-danger">Confirm identity</a>
            </div>

            <script type="text/javascript">
                function CheckPostSearch(e) {
                    if (e.keyCode === 13) {
                        PostSearch();

                        e.preventDefault();
                    }
                }

                function PostSearch() {
                    $("#keysearch").show().focus();
                    if ($("#keysearch").val() !== "")
                        window.location = "/Default.aspx?modul=SanPham&modulphu=TimKiem&tukhoa=" + $("#keysearch").val();
                }
            </script>
        </div>

        <div class="container">
            <uc1:DisplayLoadControl runat="server" ID="DisplayLoadControl" />
        </div>


        <!--chân trang-->
        <div class="footer mt-5">
            <div class="container">
                <div class="row">
                    <div class="footer-col-1">
                        <h3>Download Our App</h3>
                        <p>Download App for Android and ios mobile phone</p>
                        <div class="app-logo">
                           <i class="fa fa-android" aria-hidden="true"></i>
                            <i class="fa fa-apple" aria-hidden="true"></i>
                        </div>
                    </div>
                    <div class="footer-col-2">
                       <i class="fa fa-podcast" aria-hidden="true"></i>
                        <p>
                            Our Purpose Is To Sustainably Make the Pleasure and
                        Benefits of Sports Accessible to the Many
                        </p>
                    </div>
                    <div class="footer-col-3">
                        <h3>Useful Links</h3>
                        <ul>
                            <li>Coupons</li>
                            <li>Blog Post</li>
                            <li>Return Policy</li>
                            <li>Join Affiliate</li>
                        </ul>
                    </div>
                    <div class="footer-col-4">
                        <h3>Follow us</h3>
                        <ul>
                            <li>Facebook</li>
                            <li>Twitter</li>
                            <li>Instagram</li>
                            <li>Youtube </li>
                        </ul>
                    </div>
                </div>
                <hr>
                <p class="Copyright">Copyright 2020</p>
            </div>
        </div>
    </form>
</body>
</html>
