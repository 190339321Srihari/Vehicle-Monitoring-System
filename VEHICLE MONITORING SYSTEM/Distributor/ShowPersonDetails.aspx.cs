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

public partial class Distributor_ShowPersonDetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["vsid"] != null && Request.QueryString["vname"] != null)
        {
            if (!Page.IsPostBack == true)
            {
                GetVSPersonDetails(Request.QueryString["vsid"].ToString(),Request.QueryString["vname"].ToString());
            }
        }
    }

    private void GetVSPersonDetails(string vsid, string vname)
    {
        cmd = new SqlCommand("select tvs.vdid,tvs.vehiclename,tvs.firstname,tvs.lastname,tvs.mobileno,tvs.city,tvs.state,tvs.address,tvs.sdate,tvd.vehicleimage from tbl_vehicleselection tvs inner join tbl_vehicledetails tvd on tvs.vdid=tvd.vehicleid inner join tbl_vehicletype tvt on tvt.vehicleid=tvd.vehicleid and tvs.vehiclename=tvd.vehiclemodel where tvs.vsid=" + Convert.ToInt32(vsid) + " and tvs.vehiclename='" + vname + "' ", con);
        da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        ds = new DataSet();
        da.Fill(ds, "tbl_vsd");
        FormView1.DataSource = ds.Tables[0].DefaultView;
        FormView1.DataBind();
    }
}
