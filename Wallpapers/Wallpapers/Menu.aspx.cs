using System;
using System.Collections.Generic;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Wallpapers
{
    public partial class Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Find_Click(object sender, EventArgs e)
        {
            string x = Article_DB.Text;
            Wallpaper.ImageUrl = "Resources/" + x + ".jpg";

            string connectionString = @"Data Source=BOGDAN\BOGDANMSSQLSERV;Initial Catalog=Wallpapers2;Integrated Security=True";
            SqlConnection conn = new SqlConnection(
               connectionString);


            conn.Open();

            SqlCommand command = conn.CreateCommand();
            command.CommandText = @"SELECT * FROM dbo.Photoes WHERE Article='" + Article_DB.Text + "'";
            SqlDataReader thisReader = command.ExecuteReader();
            while (thisReader.Read())
            {
                Cost_TB.Text = thisReader["Cost"].ToString();
                Balance_SP_TB.Text = thisReader["BalanceSP"].ToString();
                Balance_T_TB.Text = thisReader["BalanceTuran"].ToString();
                Country_L2.Text = thisReader["Country"].ToString();
                Size_L2.Text = thisReader["Size"].ToString();
                Material_L2.Text = thisReader["Material"].ToString();

            }
            thisReader.Close();


            conn.Close();

        }
    }
}
