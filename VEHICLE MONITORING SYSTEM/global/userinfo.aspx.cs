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

public partial class global_userinfo : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;
    SqlDataReader dr;
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

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("select * from tbl_vehicleregistration where vrid=" + TextBox1.Text + "", con);
        dr = cmd.ExecuteReader();
        dr.Read();
        {
            TextBox2.Text = dr[2].ToString();
            TextBox3.Text = dr[3].ToString();
            TextBox4.Text = dr[4].ToString();
            TextBox5.Text = dr[5].ToString();
            
            TextBox6.Text = dr[6].ToString();
            TextBox7.Text = dr[7].ToString();
            TextBox8.Text = dr[8].ToString();
            TextBox9.Text = dr[9].ToString();
            TextBox10.Text = dr[10].ToString();
            TextBox11.Text = dr[11].ToString();
           

        }
        dr.Close();
        con.Close();
        
    }
    
}
 