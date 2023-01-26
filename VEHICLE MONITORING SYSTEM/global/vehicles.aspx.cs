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

public partial class global_vehicles : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack == true)
        {
            GetVehicleType();
            GetVehicleModels();
            GetVehicleDetails();
        }       
    }

    private void GetVehicleType()
    {
        cmd = new SqlCommand("select vehicleid,vehiclename from tbl_vehicletype", con);
        da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        ds = new DataSet();
        da.Fill(ds, "tbl_vtype");
       
        if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
        {
            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = "vehiclename";
            DropDownList1.DataValueField = "vehicleid";
            DropDownList1.DataBind();
        }
        DropDownList1.Items.Insert(0,"---Select---");
    }

    private void GetVehicleModels()
    {
        cmd = new SqlCommand("select vdid,vehiclemodel from tbl_vehicledetails", con);
        da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        ds = new DataSet();
        da.Fill(ds, "tbl_vdetails");
        
        if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
        {
            DropDownList2.DataSource = ds;
            DropDownList2.DataTextField = "vehiclemodel";
            DropDownList2.DataValueField = "vdid";
            DropDownList2.DataBind();
        }
        DropDownList2.Items.Insert(0, "---Select---");
    }

    private void GetVehicleDetails()
    {
        cmd = new SqlCommand("select tvt.vehiclename,tvd.vehiclemodel,tvd.vehicleimage,tvd.displacement,tvd.fueleconomy,tvd.fueltype from tbl_vehicletype tvt inner join tbl_vehicledetails tvd on tvt.vehicleid=tvd.vehicleid ", con);
        da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        ds = new DataSet();
        da.Fill(ds, "tbl_vdetails");
        GridView1.DataSource = ds.Tables[0].DefaultView;
        GridView1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("select tvt.vehiclename,tvd.vehiclemodel,tvd.vehicleimage,tvd.displacement,tvd.fueleconomy,tvd.fueltype from tbl_vehicletype tvt inner join tbl_vehicledetails tvd on tvt.vehicleid=tvd.vehicleid where tvt.vehiclename='"+DropDownList1.SelectedItem.ToString()+"' and tvd.vehiclemodel='"+DropDownList2.SelectedItem.ToString()+"' ", con);
        da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        ds = new DataSet();
        da.Fill(ds, "tbl_vdetails");
        GridView1.DataSource = ds.Tables[0].DefaultView;
        GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GetVehicleDetails();
    }
}
