using System;
using System.Data;

public partial class cms_display_SanPham_TrangChuModulSanPham : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ltrNhomSanPham.Text = LayDanhMucSanPham();
        }
    }

    #region Lấy nhóm và các sản phẩm
    private string LayDanhMucSanPham()
    {
        string s = "";
        DataTable dt = new DataTable();
        dt = mypham.DanhMuc.Thongtin_Danhmuc_by_MaDMCha("0");
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            s += "<div class='small-container'>";
            s += @"
<a href='/Default.aspx?modul=SanPham&modulphu=DanhSachSanPham&id=" + dt.Rows[i]["MaDM"] + @"' title='" + dt.Rows[i]["TenDM"] + @"'>
<h3 class='title'>" + dt.Rows[i]["TenDM"] + @"</h3>
</a>

";
            s += "<div class='row'>";
            s += LayDanhSachSanPhamTheoDanhMuc(dt.Rows[i]["MaDM"].ToString());
            s += "</div>";
            s += "</div>";
        }

        return s;
    }

    private string LayDanhSachSanPhamTheoDanhMuc(string MaDM)
    {
        string s = "";
        DataTable dt = new DataTable();
        dt = mypham.SanPham.Thongtin_Sanpham_by_madm(MaDM);

        string link = "";
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            link = "Default.aspx?modul=SanPham&modulphu=ChiTietSanPham&id=" + dt.Rows[i]["MaSP"];

            s += @"
<div class='col-md-4 col-6'>
    <a class='d-block' href='" + link + @"' title='" + dt.Rows[i]["TenSP"] + @"'>
        <img src='/pic/sanpham/" + dt.Rows[i]["AnhSP"] + @"' alt='" + dt.Rows[i]["TenSP"] + @"' />
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