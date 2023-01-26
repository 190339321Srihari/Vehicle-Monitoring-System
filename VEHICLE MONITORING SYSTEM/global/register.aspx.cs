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


public partial class global_register : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack == true)
        {
            TextBox1.Focus();
        }

        if (Request.QueryString["vname"] != "" && Request.QueryString["vmodel"]!="")
        {
            Label1.Text = Request.QueryString["vname"].ToString();
            Label2.Text = Request.QueryString["vmodel"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Label1.Text != "" && Label2.Text != "")
        {
            if(GetVDetailsID(Label2.Text)>0)
            {
                cmd = new SqlCommand("insert into tbl_vehicleselection(vdid,vehiclename,firstname,lastname,mobileno,city,state,address,sdate)values(" + GetVDetailsID(Label2.Text) + ",'" + Label2.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "',getdate()) ", con);
                con.Open();
                int res = cmd.ExecuteNonQuery();
                con.Close();
                if (res == 1)
                {
                    string vconfirm = "Your Vehicle Selection is completed.We will get back to you.";
                    Response.Redirect("~/global/vehicleconfirmation.aspx?vconfirm= " + vconfirm.ToString());
                }
            }
        }
    }

    private int GetVDetailsID(string vmodel)
    {
        cmd=new SqlCommand("select vehicleid from tbl_vehicledetails where vehiclemodel='"+vmodel.ToString()+"' ",con);
        con.Open();
        int vdid=Convert.ToInt32(cmd.ExecuteScalar());
        con.Close();
        return vdid;
    }

}
