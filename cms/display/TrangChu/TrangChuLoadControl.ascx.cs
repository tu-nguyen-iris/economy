using mypham;
using System;
using System.Data;

public partial class cms_display_TrangChu_TrangChuLoadControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
     
            ltrNhomSanPham.Text = LayNhomSanPham();
        }
    }

    #region Lấy nhóm và các sản phẩm
    private string LayNhomSanPham()
    {
        string s = "";
        DataTable dt = new DataTable();
        dt = mypham.NhomSanPham.Thongtin_Nhomsp();
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            s += "<div class='small-container'>";
            s += @"

    <h3 class='title'>" + dt.Rows[i]["TenNhom"] + @"</h3>
"; 
            s += "<div class='row'>";
            s += LayDanhSachSanPhamTheoNhom(dt.Rows[i]["NhomID"].ToString(), dt.Rows[i]["SoSPHienThi"].ToString());
            s += "</div>";
            s += "</div>";
        }

        return s;
    }

    private string LayDanhSachSanPhamTheoNhom(string NhomID, string SoSPHienThi)
    {
        string s = "";
        DataTable dt = new DataTable();
        dt = mypham.SanPham.Thongtin_Sanpham_by_nhomid(NhomID, SoSPHienThi);

        string link = "";
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            link = "Default.aspx?modul=SanPham&modulphu=ChiTietSanPham&id=" + dt.Rows[i]["MaSP"];

            s += @"
<div class='col-md-4 col-6'>
    <a class='d-block' href='" + link + @"' title='" + dt.Rows[i]["TenSP"] + @"'>
        <img class='bg-sanpham' src='/pic/sanpham/" + dt.Rows[i]["AnhSP"] + @"' alt='" + dt.Rows[i]["TenSP"] + @"' />
    </a>
    <a class='tenSp' href='" + link + @"' title='" + dt.Rows[i]["TenSP"] + @"'>
        " + dt.Rows[i]["TenSP"] + @"
    </a>
    <p>
        Giá: " + dt.Rows[i]["GiaSP"] + @"
    </p>
</div>
";
        }
        return s;
    }

    #endregion
}