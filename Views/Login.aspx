﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OnlineSchool.Views.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../Assets/Lib/css/bootstrap.min.css" />
</head>
<body>
    <div class="container-fluid">
        <div class="row mt-5 mb-5"></div>
        <div class="row">

        </div>
         <div class="row">
             <div class="col">

             </div>
             <div class="col">
                 <div class="row">
                     <div class="col"></div>
                     <div class="col"> <img src="../Assets/Images/student.png"  /></div>
                     <div class="col"></div>
                    
                 </div>
                 <form id="form1" runat="server">
                     
                    <div class ="mb-3">
                    <label>Email Id</label> <br />
                    <input type="email" runat="server" id="EmailTb" class="form-control" />
                     </div>
                     <div class ="mb-3">
                    <label>Password</label> <br />
                    <input type="password" runat="server" id="PasswordTb" class="form-control" />
                     </div>
                   
                     <div class="col d-grid">
                           <label id="ErrMsg" runat="server" class="text-center text-danger"></label>
                    <asp:Button Text="Login" runat="server" id="LoginBtn" class="btn btn-warning btn-block" OnClick="LoginBtn_Click" />
                    </div>
               
                </form>
             </div>
             <div class="col">

             </div>

        </div>
        
    </div>
    
</body>
</html>
