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

public partial class ADMIN_addnewvehicle : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack == true)
        {
            GetVehicletypes();
        }
    }

    private void GetVehicletypes()
    {
        cmd = new SqlCommand("select vehicleid,vehiclename from tbl_vehicletype", con);
        da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        ds = new DataSet();
        da.Fill(ds, "tbl_vtype");
        DropDownList1.Items.Add("---Select---");
        if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count>0)
        {
            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = "vehiclename";
            DropDownList1.DataValueField = "vehicleid";
            DropDownList1.DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile == true)
        {
            string imgpath = this.FileUpload1.FileName.ToString();
            this.FileUpload1.SaveAs(Server.MapPath("~//vehicleimg//" + imgpath.ToString()));
            string vehiclepath = "~/vehicleimg/" + imgpath.ToString();

            cmd = new SqlCommand("insert into tbl_vehicledetails(vehicleid,vehiclemodel,vehicleimage,enginetype,displacement,fueleconomy,fuelcapacity,fuelreserve,fueltype,lenth,height,width,clutch,gearbox,cdate)" +
                "values(" + (DropDownList1.SelectedIndex) + 1 + ",'" + TextBox1.Text + "','"+vehiclepath.ToString()+"','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + DropDownList2.SelectedItem.ToString() + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + DropDownList3.SelectedItem.ToString() + "',getdate())", con);
            con.Open();
            int res = cmd.ExecuteNonQuery();
            con.Close();
            if (res == 1)
            {
                Response.Redirect("~/admin/vehicledetails.aspx");
            }
        }
    }
}
