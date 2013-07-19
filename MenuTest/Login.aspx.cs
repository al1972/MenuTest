using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Security;

namespace MenuTest
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
              
                if (HttpContext.Current.Request.IsAuthenticated)
                {
                    Response.Write("Signed in");
                    FormsAuthentication.SignOut();
                }
                else
                {
                    Response.Write("Signed Out");
                }
            }
            //User user = Authenticate.EncryptPwd("teting");
            //string[] arr = str.Split(':');
          
            //string[] names = new string[4] { "teting", "wrong", "testing", "teting" };
            //for (int i = 0; i < names.Count(); i++)
            //{
            //    string str1 = Authenticate.ValidatePassword(names[i], arr[1]);
            //    if (str1 == arr[0])
            //    {
            //        System.Diagnostics.Debug.WriteLine("success");
            //    }
            //    else
            //    {
            //        System.Diagnostics.Debug.WriteLine("failure");
            //    }
            //}
        }

        protected void Signup_Click(object sender, EventArgs e)
        {
            try
            {
                User user = Authenticate.EncryptPwd(txtPwd.Text);
                string encrypwd = user.pwd;
                string salt = user.salt;
                SqlConnection cn = new SqlConnection("Data Source=njiadmin.db.5373457.hostedresource.com; Initial Catalog=njiadmin; User ID=njiadmin; Password='Rohittarun0!';");
                cn.Open();
                SqlCommand cm = new SqlCommand();
                 cm.CommandText = "insert into nji.users(username,password,passwordsalt,active,createdtime, updatetime, createdby, updatedby) values ('" + txtEmail.Text + "','" + user.pwd + "','" + user.salt + "'," + "'Y'" + ",'" + System.DateTime.Now.ToShortDateString() + "','" + System.DateTime.Now.ToShortDateString() + "'," + "'azhagu'" + "," + "'sada'" + ")";
                cm.Connection = cn;
                cm.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(ex.ToString());
            }
        }

        protected void signin_Click(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            SqlConnection cn = new SqlConnection("Data Source=njiadmin.db.5373457.hostedresource.com; Initial Catalog=njiadmin; User ID=njiadmin; Password='Rohittarun0!';");
            cn.Open();
            SqlCommand cm = new SqlCommand();
            cm.CommandText = "select * from nji.users where username ='" + txtEmail.Text + "'"; ;
            cm.Connection = cn;
            SqlDataAdapter da = new SqlDataAdapter(cm);
            da.Fill(ds);
            string checkpwd = Authenticate.ValidatePassword(txtPwd.Text, ds.Tables[0].Rows[0]["PasswordSalt"].ToString());
            if (checkpwd == ds.Tables[0].Rows[0]["Password"].ToString())
            {
                Response.Write("success");
                GenerateAuthenticationCookie(10, ds.Tables[0].Rows[0]["username"].ToString(), ds.Tables[0].Rows[0]["ID"].ToString());
                if (ViewState["GoBackTo"] != null) { Response.Redirect(ViewState["GoBackTo"].ToString()); }
            }
            else
            {
                Response.Write("incorrect pwd");
            }
        }


        private void GenerateAuthenticationCookie(int expiryInMinutes, string username, string UserID)
        {
            DateTime cookieExpiration = DateTime.Now.AddMinutes(expiryInMinutes); // change to months for production
            var authenticationTicket =
                new FormsAuthenticationTicket(
                    2,
                    username,
                    DateTime.Now,
                    cookieExpiration,
                    true,
                    UserID,
                    FormsAuthentication.FormsCookiePath);

            // ticket must be encrypted
            string encryptedTicket = FormsAuthentication.Encrypt(authenticationTicket);

            // create cookie to contain encrypted auth ticket
            var authCookie = new HttpCookie(FormsAuthentication.FormsCookieName, encryptedTicket);
            authCookie.Expires = authenticationTicket.Expiration;
            authCookie.Path = FormsAuthentication.FormsCookiePath;

            // clear out existing cookie for good measure (probably overkill) then add
            HttpContext.Current.Response.Cookies.Remove(FormsAuthentication.FormsCookieName);
            HttpContext.Current.Response.Cookies.Add(authCookie);
        }

        protected void Signup_Click1(object sender, EventArgs e)
        {
            try
            {
                User user = Authenticate.EncryptPwd(txtNewPwd.Text);
                string encrypwd = user.pwd;
                string salt = user.salt;
                SqlConnection cn = new SqlConnection("Data Source=njiadmin.db.5373457.hostedresource.com; Initial Catalog=njiadmin; User ID=njiadmin; Password='Rohittarun0!';");
                cn.Open();
                SqlCommand cm = new SqlCommand();
                cm.CommandText = "insert into nji.users(username,password,passwordsalt,active,createdtime, updatetime, createdby, updatedby) values ('" + txtNewEmail.Text + "','" + user.pwd + "','" + user.salt + "'," + "'Y'" + ",'" + System.DateTime.Now.ToShortDateString() + "','" + System.DateTime.Now.ToShortDateString() + "'," + "'azhagu'" + "," + "'sada'" + ")";
                cm.Connection = cn;
                cm.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(ex.ToString());
            }
        }

        protected void signin_Click1(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            SqlConnection cn = new SqlConnection("Data Source=njiadmin.db.5373457.hostedresource.com; Initial Catalog=njiadmin; User ID=njiadmin; Password='Rohittarun0!';");
            cn.Open();
            SqlCommand cm = new SqlCommand();
            cm.CommandText = "select * from nji.users where username ='" + txtEmail.Text + "'"; ;
           
            cm.Connection = cn;
            SqlDataAdapter da = new SqlDataAdapter(cm);
            da.Fill(ds);
            string checkpwd = Authenticate.ValidatePassword(txtPwd.Text, ds.Tables[0].Rows[0]["PasswordSalt"].ToString());
            if (checkpwd == ds.Tables[0].Rows[0]["Password"].ToString())
            {
                Response.Write("success");
                GenerateAuthenticationCookie(10, ds.Tables[0].Rows[0]["username"].ToString(), ds.Tables[0].Rows[0]["ID"].ToString());
                if (ViewState["GoBackTo"] != null) { Response.Redirect(ViewState["GoBackTo"].ToString()); }
                btnlink.Text = ds.Tables[0].Rows[0]["UserName"].ToString();
            }
            else
            {
                Response.Write("incorrect pwd");
            }
        }

        protected void btnlink_Click(object sender, EventArgs e)
        {
            try
            {
                if (HttpContext.Current.Request.IsAuthenticated)
                {
                    Response.Redirect("UserAccount.aspx", false);
                }
                else
                {
                    Response.Redirect("Login.aspx", false);
                }
            }
            catch(Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(ex.ToString());
            }
        }
    }
}