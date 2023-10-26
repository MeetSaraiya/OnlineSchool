<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Students/StudentsMaster.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="OnlineSchool.Views.Students.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
     <div class="row mb-5 pt-1 bg-warning"> 
        <h3 class="text-center">Dashboard</h3>
    </div>
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-10">
            <div class="row">
        <div class="col-md-2 bg-warning">
            <div class="row">
                <div class="col"><img src="../../Assets/Images/student.png"/></div>
                <div class="col"><h6>Depart</h6></div>
            </div>
            <div class="row">
                <div class="col"></div>
                <div class="col"><h5 runat="server" id="DepTb">Departments</h5></div>
            </div>
        </div>
        <div class="col-md-1"></div>
        <div class="col-md-2 bg-primary">
            <div class="row">
                <div class="col"><img src="../../Assets/Images/student.png"/></div>
                <div class="col"><h6>Students</h6></div>
            </div>
            <div class="row">
                <div class="col"></div>
                <div class="col"><h5 runat="server" id="StudTb">Students</h5></div>
            </div>
        </div>
        <div class="col-md-1"></div>
        <div class="col-md-2 bg-success">
            <div class="row">
                <div class="col"><img src="../../Assets/Images/student.png"/></div>
                <div class="col"><h6>Teachers</h6></div>
            </div>
            <div class="row">
                <div class="col"></div>
                <div class="col"><h5 runat="server" id="TeacherTb">Teachers</h5></div>
            </div>
        </div>
        <div class="col-md-1"></div>
        <div class="col-md-2 bg-danger">
            <div class="row">
                <div class="col"><img src="../../Assets/Images/student.png"/></div>
                <div class="col"><h6>Subjects</h6></div>
            </div>
            <div class="row">
                <div class="col"></div>
                <div class="col"><h5 runat="server" >10 Subjects</h5></div>
            </div>
        </div>
            </div>
        
        </div>
        <div class="col-md-1"></div>
       

    </div>
    <div class="row mt-5">
        <div class="col-md-2">

        </div>
        <div class="col-md-2">

        </div>
         <div class="col-md-2">

        </div>

    </div>
    <div class="row">
        <div class="col"></div>
        <div class="col-md-3" id="Im1"></div>
        <div class="col"></div>
        <div class="col-md-3" id="Im2></div>
        <div class="col"></div>
        <div class="col-md-3" id="Im3></div>
        <div class="col"></div>
        <div class="col"></div>
    </div>
</asp:Content>
