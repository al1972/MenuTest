using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;

namespace MenuTest
{
    public partial class UserAccount : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (HttpContext.Current.Request.IsAuthenticated)
                {
                    DataSet myDataSet = new DataSet();
                    FormsIdentity id = (FormsIdentity)User.Identity;
                    FormsAuthenticationTicket ticket = id.Ticket;
                    Response.Write(ticket.UserData);

                    SqlConnection cn = new SqlConnection("Data Source=njiadmin.db.5373457.hostedresource.com; Initial Catalog=njiadmin; User ID=njiadmin; Password='Rohittarun0!';");
                    cn.Open();
                    SqlCommand cm = new SqlCommand();
                    SqlDataAdapter da = new SqlDataAdapter("select Postingid, username, shortdesc, description, userid, categoryid, username, phone, timeadded from nji.classified where userid= " + ticket.UserData + " order by timeadded desc", cn);

                    da.Fill(myDataSet);
                   
                    this.GridGroupingControl1.DataSource = myDataSet.Tables[0].DefaultView;
                    cn.Close();
                    lblMembersince.Text = myDataSet.Tables[0].Rows[0]["timeadded"].ToString();
                    lblUserName.Text = myDataSet.Tables[0].Rows[0]["username"].ToString();
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.ToString());
            }
            }
        }
    }
 