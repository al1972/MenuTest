using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;
using Microsoft.Security.Application;

namespace MenuTest
{
    public partial class PostAds : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=njiadmin.db.5373457.hostedresource.com; Initial Catalog=njiadmin; User ID=njiadmin; Password='Rohittarun0!';");

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!Page.IsPostBack)
                {
                    if (HttpContext.Current.Request.IsAuthenticated)
                    {
                        FormsIdentity id = (FormsIdentity)User.Identity;
                        FormsAuthenticationTicket ticket = id.Ticket;
                        Response.Write(ticket.UserData);
                        //cookiePath.Text = ticket.CookiePath;
                        //expireDate.Text = ticket.Expiration.ToString();
                        //expired.Text = ticket.Expired.ToString();
                        //isPersistent.Text = ticket.IsPersistent.ToString();
                        //issueDate.Text = ticket.IssueDate.ToString();
                        //name.Text = ticket.Name;
                        //userData.Text = ticket.UserData;
                        //version.Text = ticket.Version.ToString();

                        SqlConnection cn = new SqlConnection("Data Source=njiadmin.db.5373457.hostedresource.com; Initial Catalog=njiadmin; User ID=njiadmin; Password='Rohittarun0!';");
                        cn.Open();
                        SqlCommand cm = new SqlCommand();
                        cm.CommandType = CommandType.StoredProcedure;
                        cm.Connection = cn;
                        cm.CommandText = "nji.sp_getCategories";
                        DataSet ds = new DataSet();
                        SqlDataAdapter da = new SqlDataAdapter(cm);
                        da.Fill(ds);
                        dlCategory.DataSource = ds.Tables[0];
                        dlCategory.DataTextField = "Categorydesc";
                        dlCategory.DataValueField = "CategoryID";
                        dlCategory.DataBind();
                    }
                    else
                    {
                        ViewState["GoBackTo"] = "PostAds.aspx";
                        Response.Redirect("Login.aspx", false);
                    }
                }
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(ex.ToString());
            }
        }

 
        protected void Submit_Click(object sender, EventArgs e)
        {
            try
            {
                if (HttpContext.Current.Request.IsAuthenticated)
                {
                    FormsIdentity id = (FormsIdentity)User.Identity;
                    FormsAuthenticationTicket ticket = id.Ticket;
                    //Response.Write(ticket.UserData);
                    SqlConnection cn = new SqlConnection("Data Source=njiadmin.db.5373457.hostedresource.com; Initial Catalog=njiadmin; User ID=njiadmin; Password='Rohittarun0!';");
                    cn.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = cn;

                    cmd.Parameters.Add("@Category", SqlDbType.Int).Value = Int32.Parse(dlCategory.SelectedItem.Value);
                    cmd.Parameters.Add("@Title", SqlDbType.VarChar).Value = txtTitle.Text;
                    cmd.Parameters.Add("@Contact", SqlDbType.VarChar).Value = txtContact.Text;
                    cmd.Parameters.Add("@Desc", SqlDbType.VarChar).Value = Microsoft.Security.Application.Sanitizer.GetSafeHtmlFragment(RTEDesc.Text);
                    cmd.Parameters.Add("@UserID", SqlDbType.Int).Value = ticket.UserData;
                    cmd.Parameters.Add("@UserName", SqlDbType.VarChar).Value = id.Name;
                    cmd.CommandType = CommandType.StoredProcedure;

                    if (fileuploadImage1.HasFile)
                    {
                        //getting length of uploaded file
                        int length = fileuploadImage1.PostedFile.ContentLength;
                        //create a byte array to store the binary image data
                        byte[] imgbyte = new byte[length];
                        //store the currently selected file in memeory
                        HttpPostedFile img = fileuploadImage1.PostedFile;
                        //set the binary data
                        img.InputStream.Read(imgbyte, 0, length);
                        string imagename = fileuploadImage1.PostedFile.FileName;
                        //use the web.config to store the connection string
                        
                        //SqlCommand cmd = new SqlCommand("INSERT INTO nji.Images (ImageName,Image) VALUES (@imagename,@imagedata)", cn);
                        cmd.Parameters.Add("@imagename", SqlDbType.VarChar, 50).Value = fileuploadImage1.PostedFile.FileName;
                        cmd.Parameters.Add("@imagedata", SqlDbType.Image).Value = imgbyte;
                    }


                    cmd.CommandText = "nji.sp_createAd";
                    cmd.ExecuteNonQuery();
                    cn.Close();
                }
                else
                {
                    Response.Redirect("login.aspx");
                }
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(ex.ToString());
            }
         
        }
    }
}