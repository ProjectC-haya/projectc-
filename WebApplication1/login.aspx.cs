
using System;
using System.Net.Http;
using System.Text;
using System.Web.Script.Serialization;


namespace WebApplication1
{
    public partial class login : System.Web.UI.Page
    {
        private const string ApiKey = "AIzaSyBhgpakpnVxm34OxQwpaNzn3D35tuHrQh0";

        protected async void btnLogin_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text;

            if (string.IsNullOrWhiteSpace(email) ||
                string.IsNullOrWhiteSpace(password))
            {
                lblMessage.Text = "Please enter email and password.";
                return;
            }

            using (HttpClient client = new HttpClient())
            {
                string url =
                    "https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key="
                    + ApiKey;

                var data = new
                {
                    email = email,
                    password = password,
                    returnSecureToken = true
                };

                JavaScriptSerializer serializer =
                    new JavaScriptSerializer();

                string json = serializer.Serialize(data);

                var content = new StringContent(
                    json,
                    Encoding.UTF8,
                    "application/json");

                HttpResponseMessage response =
                    await client.PostAsync(url, content);

                string result =
                    await response.Content.ReadAsStringAsync();

                if (response.IsSuccessStatusCode)
                {
                    Response.Redirect("student.aspx");
                }
                else
                {
                    lblMessage.Text =
                        "Login failed. Please check your email and password.";
                }

            }
        }
    }
}
