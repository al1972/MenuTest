using System;
using System.Text;
using System.Security.Cryptography;
using System.Web.Security;

namespace MenuTest
{
 
    public class Authenticate
    {
        // The following constants may be changed without breaking existing hashes.
        private static string CreateSalt(int size)
        {
            //Generate a cryptographic random number.
            RNGCryptoServiceProvider rng = new RNGCryptoServiceProvider();
            byte[] buff = new byte[size];
            rng.GetBytes(buff);
            // Return a Base64 string representation of the random number.
            return Convert.ToBase64String(buff);
        }

        public static string CreatePasswordHash(string pwd, string salt)
        {
            string saltAndPwd = String.Concat(pwd, salt);
            SHA256 sha256 = SHA256Managed.Create(); //utf8 here as well
            byte[] bytes = sha256.ComputeHash(Encoding.UTF8.GetBytes(saltAndPwd)); 
            string result = Convert.ToBase64String(bytes);
            System.Diagnostics.Debug.WriteLine("Actual = " + result);
            return result;
        }

        public static string ValidatePassword(string pwd, string salt)
        {
            string saltAndPwd = String.Concat(pwd, salt);
            SHA256 sha256 = SHA256Managed.Create(); //utf8 here as well
            byte[] bytes = sha256.ComputeHash(Encoding.UTF8.GetBytes(saltAndPwd));
            string result = Convert.ToBase64String(bytes);
            System.Diagnostics.Debug.WriteLine("Testing= " + result);
            return result;
        }

        public static User EncryptPwd(string password)
        {
             string salt = CreateSalt(8);
            User user = new User();
          //  user.email = "test";
            user.salt = salt;
            System.Diagnostics.Debug.WriteLine("salt = " + salt);
            user.pwd = CreatePasswordHash(password, salt);
           // user.username = userName;

            return user;
        }
    }

    public class User
    {
        public string email { get; set; }
        public string salt { get; set; }
        public string pwd { get; set; }
        public string username { get; set; }
    }
}