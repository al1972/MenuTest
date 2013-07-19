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
using Syncfusion.Grouping;
using Syncfusion.Web.UI.WebControls.Grid.Grouping;
using Syncfusion.Web.UI.WebControls.Grid.Grouping.Common;
using Syncfusion.Windows.Forms.Grid;
using System.Linq;

namespace MenuTest
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //if (!Page.IsPostBack)
                //{
                if (HttpContext.Current.Request.IsAuthenticated)
                {
                    DataSet myDataSet = new DataSet();
                    FormsIdentity id = (FormsIdentity)User.Identity;
                    FormsAuthenticationTicket ticket = id.Ticket;
                    Response.Write(ticket.UserData);

                    SqlConnection cn = new SqlConnection("Data Source=njiadmin.db.5373457.hostedresource.com; Initial Catalog=njiadmin; User ID=njiadmin; Password='Rohittarun0!';");
                    cn.Open();
                    SqlCommand cm = new SqlCommand();
                    SqlDataAdapter da = new SqlDataAdapter("select Postingid, username, shortdesc, description, userid, categoryid,  phone, timeadded, active, approved from nji.classified where approved= 'N' and rejected != 'Y' order by timeadded", cn);

                    da.Fill(myDataSet);
                    this.GridGroupingControl1.DataSource = myDataSet.Tables[0].DefaultView;
                    cn.Close();
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
                //}
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.ToString());
            }
        }

        protected void Approve_Click(object sender, EventArgs e)
        {
            try
            {
                foreach (SelectedRecord sr in this.GridGroupingControl1.Table.SelectedRecords)
                {
                    Response.Write(sr.Record.GetValue("Postingid").ToString());
                    Response.Write(sr.Record.GetValue("approved").ToString());
                    //this.ListBox1.Items.Add(new ListItem(sr.Record.GetValue("ProductName").ToString(), sr.Record.GetValue("ProductID").ToString()));
                    SqlConnection cn = new SqlConnection("Data Source=njiadmin.db.5373457.hostedresource.com; Initial Catalog=njiadmin; User ID=njiadmin; Password='Rohittarun0!';");
                    cn.Open();
                    SqlCommand cm = new SqlCommand();
                    cm.Connection = cn;
                    cm.CommandText = "Update nji.classified set Approved = 'Y' where postingid = " + sr.Record.GetValue("Postingid").ToString() + " and username='" + sr.Record.GetValue("username").ToString() + "'";
                    cm.ExecuteNonQuery();
                }
                this.GridGroupingControl1.Table.SelectedRecords.Clear();
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.ToString());
            }
        }

        protected void Reject_Click(object sender, EventArgs e)
        {
            try
            {
                foreach (SelectedRecord sr in this.GridGroupingControl1.Table.SelectedRecords)
                {
                    Response.Write(sr.Record.GetValue("Postingid").ToString());
                    Response.Write(sr.Record.GetValue("approved").ToString());
                    //this.ListBox1.Items.Add(new ListItem(sr.Record.GetValue("ProductName").ToString(), sr.Record.GetValue("ProductID").ToString()));
                    SqlConnection cn = new SqlConnection("Data Source=njiadmin.db.5373457.hostedresource.com; Initial Catalog=njiadmin; User ID=njiadmin; Password='Rohittarun0!';");
                    cn.Open();
                    SqlCommand cm = new SqlCommand();
                    cm.Connection = cn;
                    cm.CommandText = "Update nji.classified set rejected = 'Y' where postingid = " + sr.Record.GetValue("Postingid").ToString() + " and username='" + sr.Record.GetValue("username").ToString() + "'";
                    cm.ExecuteNonQuery();
                }
                this.GridGroupingControl1.Table.SelectedRecords.Clear();
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.ToString());
            }
        }

    }
}