using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class ADMIN_userinfo : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack != true)
        {
            GetVRDetails();
        }
    }

    private void GetVRDetails()
    {
        cmd = new SqlCommand("select vrid,vehiclename,vehiclemodel,name,mbno,vrno,exdate,state,city,address,rdate from tbl_vehicleregistration", con);
        da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        ds = new DataSet();
        da.Fill(ds, "tbl_vr");
        GridView1.DataSource = ds.Tables["tbl_vr"].DefaultView;
        GridView1.DataBind();
    }   

    protected void GridView1_PageIndexChanging1(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GetVRDetails();
    }
}
