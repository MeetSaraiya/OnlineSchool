<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Marks.aspx.cs" Inherits="OnlineSchool.Views.Admin.Marks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
    <div class="row">
           <div class="col bg-warning">
               <h5 class="text-center">Manage Marks</h5>
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
                    <label>Student Name</label> <br />
                     <asp:DropDownList runat="server" class="form-control">
                       
                    </asp:DropDownList>
                     </div> 
                </div>
               
                
            </div>
            <div class="row mt-1">
                <div class="col">
                    <div class ="mb-1">
                    <label>Subject</label>  <br />
                    <asp:DropDownList runat="server" class="form-control">
                       
                    </asp:DropDownList>
                     </div> 
                </div>
                
                
            </div>
            <div class="row mt-1">
                <div class="col">
                    <div class ="mb-1">
                    <label>Marks</label>
                    <input type="number" class="form-control" />
                     </div> 
                </div>
                
                
                
            </div>
            <div class="row mt-1">
                <div class="col">
                    <div class ="mb-1">
                    <label>Comment</label>
                    <input type="text" class="form-control" />
                     </div> 
                </div>
                
                
            </div>
            
            <div class="row mt-1">
                <div class="col d-grid">
                    <asp:Button Text="Edit" runat="server" class="btn btn-warning btn-block" />
                </div>
                <div class="col d-grid">
                    <asp:Button Text="Create" runat="server" class="btn btn-primary btn-block" />
                </div>
                <div class="col d-grid">
                    <asp:Button Text="Delete" runat="server" class="btn btn-danger btn-block" />
                </div>
            </div>
        </div>
        <div class="col-7">
            <div class="row">
                <div class="col">
                    <h5 class="text-center text-primary"> Mark List</h5>
                </div>
                
                <asp:GridView runat="server" class="table">

                </asp:GridView>
            </div>
        </div>
    
    </div>
</asp:Content>
