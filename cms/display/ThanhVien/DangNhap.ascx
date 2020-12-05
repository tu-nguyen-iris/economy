<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DangNhap.ascx.cs" Inherits="cms_display_ThanhVien_DangNhap" %>
<link href="css/dang-ky.css" rel="stylesheet" />
<div class="title-gioithieu">
    <h1>ĐĂNG NHẬP</h1>
</div>

<div class="row">
    <input name="form_type" type="hidden" value="create_customer">
    <input name="utf8" type="hidden" value="✓">
    <div class="col-6 offset-3">
        <div class="form-group">
            <label for="email">Email address:</label>
            <asp:TextBox ID="tbEmail" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox>
            <div style="clear: both"></div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" SetFocusOnError="True" Display="Dynamic" ControlToValidate="tbEmail"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="<div style='color:red;padding:3px 0'>Email sai định dạng</div>" SetFocusOnError="True" Display="Dynamic" ControlToValidate="tbEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </div>
        <div class="form-group">
            <label for="pwd">Password:</label>
            <asp:TextBox ID="tbMatKhau" runat="server" CssClass="form-control" placeholder="Mật khẩu" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" SetFocusOnError="True" Display="Dynamic" ControlToValidate="tbMatKhau"></asp:RequiredFieldValidator>
        </div>
        <div class="button_sign">
            <asp:LinkButton ID="lbtDangNhap" CssClass="btn btn-primary" runat="server" OnClick="lbtDangNhap_Click">Đăng nhập</asp:LinkButton>
            <div class="req_pass">
                <a class="come-back" href="/">Quay về</a>
            </div>
        </div>

    </div>
</div>





