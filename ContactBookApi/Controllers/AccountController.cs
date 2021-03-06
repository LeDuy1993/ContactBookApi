﻿using ContactBook.Domain;
using ContactBook.Domain.Repuests.Account;
using ContactBook.Domain.Responses.Account;
using Dapper;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace ContactBookApi.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class AccountController : ControllerBase
    {
        private readonly UserManager<ApplicationUser> userManager;
        private readonly SignInManager<ApplicationUser> signInManager;
        private readonly RoleManager<IdentityRole> roleManager;


        public AccountController(UserManager<ApplicationUser> userManager,
                                 SignInManager<ApplicationUser> signInManager,
                                 RoleManager<IdentityRole> roleManager
                             )
        {
            this.userManager = userManager;
            this.signInManager = signInManager;
            this.roleManager = roleManager;
        }

        [HttpPost]
        [Route("/api/account/login")]
        public async Task<LoginResult> Login(LoginRequest request)
        {
            var result = new LoginResult()
            {
                Message = "something went wrong, please try again",
                Success = false,
                UserId = string.Empty
            };

            var siginResult = await signInManager.PasswordSignInAsync(request.Email, request.Password, false, false);

            if (siginResult.Succeeded)
            {
                var user = await userManager.FindByNameAsync(request.Email);
                if (user != null)
                {
                    result.Success = siginResult.Succeeded;
                    result.UserId = user.Id;
                    result.CheckId = user.CheckId;
                    result.Message = "Login success";
                    result.Role = await userManager.IsInRoleAsync(user, "Teacher");
                }
            }

            return result;
        }
        [HttpPost]
        [Route("/api/account/register")]
        public async Task<RegisterResult> Register(RegisterRequest request)
        {
            var result = new RegisterResult()
            {
                Message = "something went wrong, please try again",
                Success = false
            };

            var user = new ApplicationUser()
            {
                Email = request.Email,
                UserName = request.Email
            };
            var registerResult = await userManager.CreateAsync(user, request.Password);
            if (registerResult.Succeeded)
            {
                result.Message = "Register success";
                result.Success = registerResult.Succeeded;
            }
            return result;
        }

    }
}
