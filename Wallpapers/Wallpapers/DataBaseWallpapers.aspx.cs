using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Wallpapers
{
    public partial class DataBaseWallpapers : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=BOGDAN\BOGDANMSSQLSERV;Initial Catalog=Wallpapers2;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            ScriptManager.ScriptResourceMapping.AddDefinition("jquery", new ScriptResourceDefinition
            {
                Path = "~/scripts/jquery-1.7.2.min.js",

            });


        }

        protected void LbInsert_Click(object sender, EventArgs e)
        {
            conn.Open();


            SqlDataSource1.InsertParameters["Article"].DefaultValue =
                ((TextBox)GridView1.FooterRow.FindControl("Article_TB")).Text;

            SqlDataSource1.InsertParameters["Country"].DefaultValue =
               ((TextBox)GridView1.FooterRow.FindControl("Country_TB")).Text;

            SqlDataSource1.InsertParameters["Size"].DefaultValue =
               ((DropDownList)GridView1.FooterRow.FindControl("Size_DD")).SelectedValue;

            SqlDataSource1.InsertParameters["Material"].DefaultValue =
               ((TextBox)GridView1.FooterRow.FindControl("Material_TB")).Text;

            SqlDataSource1.InsertParameters["BalanceSP"].DefaultValue =
               ((TextBox)GridView1.FooterRow.FindControl("BalanceSP_TB")).Text;

            SqlDataSource1.InsertParameters["BalanceTuran"].DefaultValue =
               ((TextBox)GridView1.FooterRow.FindControl("BalanceT_TB")).Text;

            SqlDataSource1.InsertParameters["Cost"].DefaultValue =
               ((TextBox)GridView1.FooterRow.FindControl("Cost_TB")).Text;

            SqlDataSource1.Insert();

            conn.Close();
        }

        protected void Find_Click(object sender, EventArgs e)
        {

        }
    }
}