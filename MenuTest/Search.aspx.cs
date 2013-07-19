using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace MenuTest
{
    public partial class Search : System.Web.UI.Page
    {
        DataSet myDataSet = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                SqlConnection cn = new SqlConnection("Data Source=njiadmin.db.5373457.hostedresource.com; Initial Catalog=njiadmin; User ID=njiadmin; Password='Rohittarun0!';");
                cn.Open();
                SqlCommand cm = new SqlCommand();
                SqlDataAdapter da = new SqlDataAdapter("select * from nji.classified where postingid='" + Request.QueryString["q"] + "'", cn);
                da.Fill(myDataSet);
                Response.Write(myDataSet.Tables[0].Rows[0]["Description"].ToString() + "~||~||~" + myDataSet.Tables[0].Rows[0]["username"].ToString() + "~||~||~");
              //  Response.Write(myDataSet.Tables[0].Rows[0]["email"].ToString());
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
    }
}