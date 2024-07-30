using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Systweak.Models
{
    public class User
    {
        public int Id { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
    }
    public class UserManagement
    {
        public void RegisterUser(string email, string password)
        {
            // Creating a new instance of User
            var newUser = new User
            {
                Email = email,
                Password = password
            };

            // Save the newUser object to a database using Entity Framework or other ORM tools
            // For example, using Entity Framework:
            using (var dbContext = new MyDbContext())
            {
                dbContext.Users.Add(newUser);
                dbContext.SaveChanges();
            }
        }
    }

}