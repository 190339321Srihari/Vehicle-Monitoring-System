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

public partial class ADMIN_vehicletype : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack == true)
        {
            GetAvailableVehicleTypes();
        }

    }

    private void GetAvailableVehicleTypes()
    {
        cmd = new SqlCommand("select vehicleid,vehiclename,cdate from tbl_vehicletype", con);
        da = new SqlDataAdapter();
        da.SelectCommand=cmd;
        ds=new DataSet();
        da.Fill(ds);
        GridView1.DataSource=ds.Tables[0].DefaultView;
        GridView1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("insert into tbl_vehicletype(vehiclename,cdate)values('" + TextBox1.Text + "',getdate())", con);
        con.Open();
        int res= cmd.ExecuteNonQuery();
        con.Close();
        if (res == 1)
        {
            GetAvailableVehicleTypes();
        }
    }
}
