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

public partial class Distributor_VehicleSelectionOrders : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack != true)
        {
            GetVSOreders();
        }
    }

    private void GetVSOreders()
    {
        cmd = new SqlCommand("select tvs.vsid,tvs.vehiclename,tvs.firstname,tvs.mobileno from tbl_vehicleselection tvs inner join tbl_vehicledetails tvd on tvs.vdid=tvd.vdid inner join tbl_vehicletype tvt on tvt.vehicleid=tvd.vehicleid", con);
        da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        ds = new DataSet();
        da.Fill(ds, "tbl_VSOrders");
        GridView1.DataSource = ds.Tables[0].DefaultView;
        GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GetVSOreders();
    }
}

