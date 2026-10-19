using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Firebase.Database;
using Firebase.Database.Query;


namespace WebApplication1
{
    public partial class student : System.Web.UI.Page
    {
        FirebaseClient firebase = new FirebaseClient("https://fireebaseprojct-default-rtdb.firebaseio.com/");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected async void btnAdd_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            int age;

            if (!int.TryParse(txtAge.Text, out age))
            {
                lblMessage.Text = "Please enter a valid age.";
                return;
            }
            Student s = new Student
            {
                Name = name,
                Age = age
            };
            await firebase.Child("Students").PostAsync(s);

            lblMessage.Text = "Student Added Successfully!";

        }

        protected async void btnShow_Click(object sender, EventArgs e)
        {
            var students = await firebase.Child("Students").OnceAsync<Student>();
            foreach (var item in students)
            {
                lblStudents.Text += item.Object.Name
           + " - "
           + item.Object.Age
           + "<br/>";

            }

        }



        protected async void btnDelete_Click(object sender, EventArgs e)
        {
            string id = txtStudentId.Text.Trim();

            if (string.IsNullOrWhiteSpace(id))
            {
                lblDeleteMessage.Text = "Please enter Student ID.";
                return;
            }

            await firebase.Child("Students").Child(id).DeleteAsync();
            lblDeleteMessage.Text = "Student Deleted Successfully!";
        }
    }
}