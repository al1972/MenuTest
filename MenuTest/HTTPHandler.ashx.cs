using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.IO;

namespace MenuTest
{
    /// <summary>
    /// Summary description for HTTPHandler
    /// </summary>
    public class HTTPHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            //string imageid = context.Request.QueryString["ImID"];
 
            Stream strm = ShowEmpImage();
            byte[] buffer = new byte[4096];
            int byteSeq = strm.Read(buffer, 0, 4096);

            while (byteSeq > 0)
            {
                context.Response.OutputStream.Write(buffer, 0, byteSeq);
                byteSeq = strm.Read(buffer, 0, 4096);
            }
            //context.Response.BinaryWrite(buffer);
        }

        public Stream ShowEmpImage()
        {
            SqlConnection cn = new SqlConnection("Data Source=njiadmin.db.5373457.hostedresource.com; Initial Catalog=njiadmin; User ID=njiadmin; Password='Rohittarun0!';");
            cn.Open();

            SqlCommand cmd = new SqlCommand("select Image from nji.Images", cn);
     
            cmd.CommandType = CommandType.Text;
            object img = cmd.ExecuteScalar();
            try
            {
                return new MemoryStream((byte[])img);
            }
            catch
            {
                return null;
            }
            finally
            {
                cn.Close();
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }

        
    }
}