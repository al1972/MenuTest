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
    public partial class Default : System.Web.UI.Page
    {
        DataSet myDataSet = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
              //  UserName.Attributes.Add("OnClick", "return false;");
                SqlConnection cn = new SqlConnection("Data Source=njiadmin.db.5373457.hostedresource.com; Initial Catalog=njiadmin; User ID=njiadmin; Password='Rohittarun0!';");
                cn.Open();
                SqlCommand cm = new SqlCommand();
                SqlDataAdapter da = new SqlDataAdapter("select * from nji.users" , cn);

           
                da.Fill(myDataSet);
                NJIRepeater.DataSource = myDataSet.Tables[0];
                NJIRepeater.DataBind();
               // Label1.Text = myDataSet.Tables[0].Rows[0]["UserID"].ToString();
               
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(ex.ToString());
            }

        }

        protected void Link_Clicked(object sender, EventArgs e)
        {
             LinkButton btn = (LinkButton)(sender);
             string yourValue = btn.CommandArgument;
                            SqlConnection cn = new SqlConnection("Data Source=njiadmin.db.5373457.hostedresource.com; Initial Catalog=njiadmin; User ID=njiadmin; Password='Rohittarun0!';");
                cn.Open();
                SqlCommand cm = new SqlCommand();
                btn.Attributes.Add("OnClick", "return false;");
            //Label1.Text = myDataSet.Tables[0].Rows[0]["UserID"].ToString();
         //   Response.Write(yourValue);
            // do what you need here
        } 
    }
}