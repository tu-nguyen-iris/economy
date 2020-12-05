<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DangKy.ascx.cs" Inherits="cms_display_ThanhVien_DangKy" %>
<link href="css/dang-ky.css" rel="stylesheet" />
<div class="title-gioithieu">
    <h1>TẠO TÀI KHOẢN</h1>
</div>
    
<div class="row">
    <input name="form_type" type="hidden" value="create_customer">
    <input name="utf8" type="hidden" value="✓">
    <div class="col-6 offset-3">

        <div class="form-group">
            <label for="email">Họ Tên</label>
            <asp:TextBox ID="tbHoTen" runat="server" CssClass="form-control" placeholder="Họ tên"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" SetFocusOnError="True" Display="Dynamic" ControlToValidate="tbHoTen"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <label for="pwd">Số Điện Thoại</label>
            <asp:TextBox ID="tbSoDienThoai" runat="server" CssClass="form-control" placeholder="Số điện thoại"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="pwd">Địa Chỉ</label>
            <asp:TextBox ID="tbDiaChi" runat="server" CssClass="form-control" placeholder="Địa chỉ"></asp:TextBox>
        </div>

        <div class="form-group">
            <label for="pwd">Email</label>
            <asp:TextBox ID="tbEmail" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox>
            <div style="clear: both"></div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" SetFocusOnError="True" Display="Dynamic" ControlToValidate="tbEmail"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="<div style='color:red;padding:3px 0'>Email sai định dạng</div>" SetFocusOnError="True" Display="Dynamic" ControlToValidate="tbEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </div>
        <div class="form-group">
            <label for="pwd">Mật Khẩu</label>
            <asp:TextBox ID="tbMatKhau" runat="server" CssClass="form-control" placeholder="Mật khẩu" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" SetFocusOnError="True" Display="Dynamic" ControlToValidate="tbMatKhau"></asp:RequiredFieldValidator>

        </div>
        <div class="form-group">
            <label for="pwd">Nhập Lại Mật Khẩu</label>
            <asp:TextBox ID="tbNhapLaiMatKhau" runat="server" CssClass="form-control" placeholder="Nhập lại mật khẩu" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="<div style='color:red;padding:3px 0'>Nhập lại mật khẩu không trùng khớp</div>" SetFocusOnError="True" Display="Dynamic" ControlToValidate="tbNhapLaiMatKhau" ControlToCompare="tbMatKhau"></asp:CompareValidator>
        </div>
        <div class="button_sign">
            <asp:LinkButton ID="lbtDangKy" CssClass="btn btn-primary" runat="server" OnClick="lbtDangKy_Click">Đăng ký</asp:LinkButton>
            <div class="req_pass">
                <a class="come-back" href="/">Quay về</a>
            </div>
        </div>
    </div>
</div>





