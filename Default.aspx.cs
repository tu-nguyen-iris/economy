using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using mypham;

public partial class _Default : System.Web.UI.Page
{
    private string modul = "";
    protected string tukhoa = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["tukhoa"] != null)
            tukhoa = Request.QueryString["tukhoa"];
        
        if (Request.QueryString["modul"] != null)
            modul = Request.QueryString["modul"];
      

        if (!IsPostBack)
        {
            #region Kiểm tra đã đăng nhập hay chưa

            if (Session["KhachHang"] != null && Session["KhachHang"].ToString() == "1")
            {
                //Đã đăng nhập
                plDaDangNhap.Visible = true;
                plChuaDangNhap.Visible = false;

                if (Session["KhachHang"] != null)
                    ltrTenKhachHang.Text = Session["TenKh"].ToString();
            }
            else
            {
                plDaDangNhap.Visible = false;
                plChuaDangNhap.Visible = true;
            }
            #endregion
            ltrMenu.Text = LayMenu();
        }
    }



    #region Lấy danh mục sản phẩm
    private string LayDanhMucSanPham()
    {
        string s = "";
        DataTable dt = new DataTable();
        dt = mypham.DanhMuc.Thongtin_Danhmuc_by_MaDMCha("0");
        for (int i = 0; i < dt.Rows.Count; i++)
        {           
            s += @"<li><a href='/Default.aspx?modul=SanPham&modulphu=DanhSachSanPham&id=" + dt.Rows[i]["MaDM"] + @"' title='" + dt.Rows[i]["TenDM"] + @"'>" + dt.Rows[i]["TenDM"]+@"</a></li>";
        }
        return s;
    }
    #endregion

    #region Lấy menu
    private string LayMenu()
    {
        string s = "";
        DataTable dt = new DataTable();
        dt = mypham.Menu.Thongtin_Menu_by_MaMenuCha("0");
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            string lienKet = dt.Rows[i]["LienKet"].ToString();
            if (lienKet == "")
                lienKet = "#";

            s += @"<li><a href='" + lienKet + @"' title='" + dt.Rows[i]["TenMenu"] + @"'>" + dt.Rows[i]["TenMenu"] + @"</a></li>";

        }
        return s;
    }
    #endregion
    protected void lbtDangXuat_Click(object sender, EventArgs e)
    {
        //Xóa các session đã lưu
        Session["KhachHang"] = null;

        Session["MaKH"] = null;
        Session["TenKh"] = null;
        Session["DiaChiKH"] = null;
        Session["sdtKH"] = null;
        Session["EmailKH"] = null;

        //đẩy về trang đăng nhập
        Response.Redirect("/Default.aspx");
    }
}