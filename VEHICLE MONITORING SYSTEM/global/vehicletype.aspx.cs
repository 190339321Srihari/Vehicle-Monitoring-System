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


public partial class global_vehicletype : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;
    string vname;
    string vmodel;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["vname"] != null && Request.QueryString["vmodel"] != null)
        {
            vname = Request.QueryString["vname"].ToString();
            vmodel = Request.QueryString["vmodel"].ToString();

            if (Request.QueryString["vname"] != "")
            {
                GetVehicleModelType();
            }
        }
    }

    private void GetVehicleModelType()
    {
        cmd = new SqlCommand("select tvt.vehiclename,tvd.vehiclemodel,tvd.vehicleimage,tvd.enginetype,tvd.displacement,tvd.fueleconomy,tvd.fuelcapacity,tvd.fuelreserve,tvd.fueltype,tvd.lenth,tvd.height,tvd.width,tvd.clutch,tvd.gearbox from tbl_vehicletype tvt inner join tbl_vehicledetails tvd on tvt.vehicleid=tvd.vehicleid where tvt.vehiclename='" + vname.ToString() + "' and tvd.vehiclemodel='" + vmodel.ToString() + "' ", con);
        da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        ds = new DataSet();
        da.Fill(ds, "tbl_vdetails");
        FormView1.DataSource = ds.Tables[0].DefaultView;
        FormView1.DataBind();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (vname.ToString() != "" && vmodel.ToString() != "")
        {
            Response.Redirect("~/global/register.aspx?vname= " + vname.ToString() + "&" + "vmodel=" + vmodel.ToString());
        }


    }
    protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
    {

    }
}
