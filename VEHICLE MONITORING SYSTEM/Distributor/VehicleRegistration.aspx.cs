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


public partial class Distributor_VehicleRegistration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlCommand cmd;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["vsid"] != null && Request.QueryString["vname"] != null)
        {
            if (Page.IsPostBack != true)
            {
                Label3.Text = Convert.ToInt32(GetVType(Request.QueryString["vname"].ToString()).ToString()).ToString();
                Label2.Text = Request.QueryString["vname"].ToString();
            }
        }
    }

    private int GetVType(string vname)
    {
        cmd = new SqlCommand("select tvt.vehiclename,tvd.vehicleid from tbl_vehicletype tvt inner join tbl_vehicledetails tvd on tvt.vehicleid=tvd.vehicleid where tvd.vehiclemodel='" + vname.ToString() + "' ", con);
        con.Open();
        dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
        int vehicleid = 0;
        dr.Read();
     Label1.Text = dr[0].ToString();
     vehicleid = Convert.ToInt32(dr[1].ToString());  
        dr.Close();
        return vehicleid;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("insert into tbl_vehicleregistration(vdid,vehiclename,vehiclemodel,name,mbno,vrno,exdate,state,city,address,rdate)values(" + Convert.ToInt32(Label3.Text) + ",'" + Label1.Text + "','" + Label2.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','"+TextBox6.Text+"','"+TextBox7.Text+"','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "',getdate())", con);
        con.Open();
        int res=cmd.ExecuteNonQuery();
        con.Close();
        if (res == 1)
        {
            Response.Redirect("~/distributor/registrationdetails.aspx");

        }

   
    }
}


