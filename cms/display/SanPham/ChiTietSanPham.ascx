<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ChiTietSanPham.ascx.cs" Inherits="cms_display_SanPham_ChiTietSanPham" %>
<link href="css/chi-tiet-san-pham.css" rel="stylesheet" />


<div class="small-container single-product">
    <div class="row">
        <div class="img-product col-md-5 col-12">
            <asp:Literal ID="ltrAnhSanPham" runat="server"></asp:Literal>
        </div>
        <div class="col-md-7 col-12">
            <h1 class="single_title">
                <asp:Literal ID="ltrTenSanPham" runat="server"></asp:Literal></h1>         
            <div class="items_single">
                  <div class="item_single">
                    <label>Giá Bán: </label>
                   <asp:Literal ID="ltrGiaSP" runat="server"></asp:Literal> VNĐ
                </div>

                <div class="form-group w-50">
                    <label for="quantity">Số lượng:</label>
                    <input id="quantity" type="number" name="quantity" min="1" value="1" class="form-control w-50">
                </div>

            </div>
            <div class="row">
                <a class="mr-4 btn btn-dark" href="javascript:ThemVaoGioHang()">Thêm vào giỏ hàng</a>
                <a class="btn btn-success" href="javascript:MuaNgay()">Mua ngay</a>
            </div>
        </div>
    </div>
</div>

<div class="productInfo">
    <asp:Literal ID="ltrThongTinChiTiet" runat="server"></asp:Literal>
</div>


<%--Các script xử lý giỏ hàng--%>
<script type="text/javascript">
    function ThemVaoGioHang() {
        var id = "<%=id%>";
        var soLuong = $("#quantity").val();

        $.post("cms/display/SanPham/Ajax/XuLyGioHang.aspx",
            {
                "ThaoTac": "ThemVaoGioHang",
                "id": id,
                "soLuong": soLuong
            },
            function (data, status) {
                //alert("Data :" + data + "\n Status :" + status);
                if (data == "") {
                    //thực hiện thành công => thông báo
                    alert("Đã thêm sản phẩm vào giỏ hàng thành công");
                } else {
                    alert(data);
                }
            });
    }

    function MuaNgay() {
        var id = "<%=id%>";
        var soLuong = $("#quantity").val();

        $.post("cms/display/SanPham/Ajax/XuLyGioHang.aspx",
            {
                "ThaoTac": "ThemVaoGioHang",
                "id": id,
                "soLuong": soLuong
            },
            function (data, status) {
                //alert("Data :" + data + "\n Status :" + status);
                if (data == "") {
                    //thực hiện thành công => thông báo
                    alert("Đã thêm sản phẩm vào giỏ hàng thành công");

                    //Đẩy về trang hiển thị giỏ hàng
                    location.href = "/Default.aspx?modul=SanPham&modulphu=GioHang";
                } else {
                    alert(data);
                }
            });
    }
</script>
