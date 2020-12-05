using System;
using System.Data;

public partial class cms_display_SanPham_TimKiem : System.Web.UI.UserControl
{
    private string tukhoa = "";
    protected void Page_Load(object sender, EventArgs e)
    {        
        if (Request.QueryString["tukhoa"] != null)
            tukhoa = Request.QueryString["tukhoa"];

        if (!IsPostBack)
        {
            ltrNhomSanPham.Text = LayThongTinTimKiem();
        }
    }

    #region Lấy nhóm và các sản phẩm
    private string LayThongTinTimKiem()
    {
        string s = "";
        s += "<div class='small-container'>";
        s += @"
    <h3 class='title' >Kết quả tìm kiếm cho : " + tukhoa + @"</h3>
";
        s += "<div class='row'>";
        s += LayDanhSachSanPham();
        s += "</div>";
        s += "</div>";

        return s;
    }

    private string LayDanhSachSanPham()
    {
        string s = "";
        DataTable dt = new DataTable();
        dt = mypham.SanPham.Thongtin_Sanpham_by_tukhoa(tukhoa);

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