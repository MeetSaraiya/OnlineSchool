<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Departments.aspx.cs" Inherits="OnlineSchool.Views.Admin.Departments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
    <div class="row">
           <div class="col bg-warning">
               <h5 class="text-center">Manage Departments</h5>
           </div>
       </div>
    <div class="row">

        <div class="col-5">
            <div class="row">
                <div class="col"></div>
                <div class="col"><img src="../../Assets/Images/student.png" class="auto-style6" /></div>
                <div class="col"></div>
            </div>
            <div class="row mt-1">
                <div class="col">
                    <div class ="mb-1">
                    <label>Department Name</label> <br />
                    <input type="text" runat="server" id="DepNameTb" class="form-control" />
                     </div> 
                </div>
               
                
            </div>
            <div class="row mt-1">
                <div class="col">
                    <div class ="mb-1">
                    <label>Remarks</label>  <br />
                    <input type="text" runat="server"  id="RemTb" class="form-control" />
                     </div> 
                </div>
                
                
            </div>
            
            <div class="row mt-1">
                <label id="ErrMsg" runat="server" class="text-center text-danger"></label>
                <div class="col d-grid">
                    <asp:Button Text="Update" runat="server" ID="EditBtn" class="btn btn-warning btn-block" OnClick="EditBtn_Click" />
                </div>
                <div class="col d-grid">
                    <asp:Button Text="Save" runat="server" ID="SaveBtn" class="btn btn-primary btn-block" OnClick="SaveBtn_Click"  />
                </div>
                <div class="col d-grid">
                    <asp:Button Text="Delete" runat="server" ID="DeleteBtn" class="btn btn-danger btn-block" OnClick="DeleteBtn_Click" />
                </div>
            </div>
        </div>
        <div class="col-7">
            <div class="row">
                <div class="col">
                    <h5 class="text-center text-primary"> Departments List</h5>
                </div>
                
                <asp:GridView runat="server" ID="DepartmentList" class="table" AutoGenerateSelectButton="True" OnSelectedIndexChanged="DepartmentList_SelectedIndexChanged">

                </asp:GridView>
            </div>
        </div>
    
    </div>
</asp:Content>
