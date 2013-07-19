using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Diagnostics;
using Syncfusion.Grouping;
using Syncfusion.Web.UI.WebControls.Grid.Grouping;
using Syncfusion.Web.UI.WebControls.Grid.Grouping.Common;
using Syncfusion.Windows.Forms.Grid;

namespace MenuTest
{
    public partial class SyncDetails : System.Web.UI.Page
    {

        DataSet myDataSet = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                SqlConnection cn = new SqlConnection("Data Source=njiadmin.db.5373457.hostedresource.com; Initial Catalog=njiadmin; User ID=njiadmin; Password='Rohittarun0!';");
                cn.Open();
                SqlCommand cm = new SqlCommand();
                SqlDataAdapter da = new SqlDataAdapter("select id, name, shortdesc, description, Active from dbo.buysell order by stampadd desc", cn);

                da.Fill(myDataSet);
               this.GridGroupingControl1.DataSource = myDataSet.Tables[0].DefaultView;
               cn.Close();

               LoadImage();
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.ToString());
            }
        }

        void LoadImage()
        {
            DataSet ds3 = new DataSet();
               SqlConnection cn = new SqlConnection("Data Source=njiadmin.db.5373457.hostedresource.com; Initial Catalog=njiadmin; User ID=njiadmin; Password='Rohittarun0!';");
                cn.Open();
                SqlCommand cm = new SqlCommand();
                SqlDataAdapter da = new SqlDataAdapter("select Image from nji.Images", cn);

                da.Fill(ds3);

                DataList1.DataSource = ds3.Tables[0];
                DataList1.DataBind();
                 cn.Close();
            //hrfReport.DataBind();
         //  Image1.ImageUrl =   "HTTPHandler.ashx?ImID=" + 1;
        }

        string Dothis()
        {
            Response.Write("test 2222222222222222222222");
            return "tset 333333333333333";
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            //Condition to check if the file uploaded or not
            if (fileuploadImage.HasFile)
            {
                //getting length of uploaded file
                int length = fileuploadImage.PostedFile.ContentLength;
                //create a byte array to store the binary image data
                byte[] imgbyte = new byte[length];
                //store the currently selected file in memeory
                HttpPostedFile img = fileuploadImage.PostedFile;
                //set the binary data
                img.InputStream.Read(imgbyte, 0, length);
                string imagename = fileuploadImage.PostedFile.FileName;
                //use the web.config to store the connection string
                SqlConnection cn = new SqlConnection("Data Source=njiadmin.db.5373457.hostedresource.com; Initial Catalog=njiadmin; User ID=njiadmin; Password='Rohittarun0!';");
                cn.Open();
                SqlCommand cm = new SqlCommand();
                SqlCommand cmd = new SqlCommand("INSERT INTO nji.Images (ImageName,Image) VALUES (@imagename,@imagedata)", cn);
                cmd.Parameters.Add("@imagename", SqlDbType.VarChar, 50).Value = fileuploadImage.PostedFile.FileName;
                cmd.Parameters.Add("@imagedata", SqlDbType.Image).Value = imgbyte;
                int count = cmd.ExecuteNonQuery();
                cn.Close();
                if (count == 1)
                {
                    
                    //txtImageName.Text = string.Empty;
                    //ScriptManager.RegisterStartupScript(this, this.GetType(), "alertmessage", "javascript:alert('" + imagename + " image inserted successfully')", true);
                }
            }
        }
    }
}