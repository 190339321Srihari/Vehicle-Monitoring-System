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


public partial class Distributor_RegistrationDetails : System.Web.UI.Page
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
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GetVRDetails();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        GetVRDetails();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        GetVRDetails();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Label vrid = new Label();
        TextBox name = new TextBox();
        TextBox mbno = new TextBox();
        TextBox state = new TextBox();
        TextBox city = new TextBox();
        TextBox add = new TextBox();

        vrid = (Label)GridView1.Rows[e.RowIndex].Cells[1].FindControl("vrid1");
        name = (TextBox)GridView1.Rows[e.RowIndex].Cells[4].FindControl("name1");
        mbno = (TextBox)GridView1.Rows[e.RowIndex].Cells[4].FindControl("mbno1");
        state = (TextBox)GridView1.Rows[e.RowIndex].Cells[4].FindControl("state1");
        city = (TextBox)GridView1.Rows[e.RowIndex].Cells[4].FindControl("city1");
        add = (TextBox)GridView1.Rows[e.RowIndex].Cells[4].FindControl("add1");

        cmd = new SqlCommand("update tbl_vehicleregistration set name='" + name.Text + "',mbno='"+mbno.Text+"',state='" + state.Text + "',city='" + city.Text + "',address='" + add.Text + "',rdate=getdate() where vrid='" + Convert.ToInt32(vrid.Text) + "' ", con);
        con.Open();
        int n = cmd.ExecuteNonQuery();
        con.Close();
        if (n == 1)
        {
            GridView1.EditIndex = -1;
            GetVRDetails();
        }
    }
}
