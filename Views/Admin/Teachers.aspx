<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Teachers.aspx.cs" Inherits="OnlineSchool.Views.Admin.Teachers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 80px;
            height: 80px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
    <div class="row">
           <div class="col bg-warning">
               <h5 class="text-center">Manage Teachers</h5>
           </div>
       </div>
    <div class="row">

        <div class="col-5">
            <div class="row">
                <div class="col">&nbsp;</div>
                <div class="col"><img src="../../Assets/Images/teaching.png" class="auto-style6" /></div>
                <div class="col"></div>
            </div>
            <div class="row mt-1">
                <div class="col">
                    <div class ="mb-1">
                    <label>Teacher Name</label>
                    <input type="text" runat="server" id="TNameTb" class="form-control" />
                     </div> 
                </div>
            </div>
            <div class="row mt-1">
                <div class="col">
                    <div class ="mb-1">
                    <label>Teacher Email</label>
                    <input type="email" runat="server" id="TEmailTb" class="form-control" />
                     </div> 
                </div>

                </div>
            <div class="row mt-1">
                <div class="col">
                    <div class ="mb-1">
                    <label>Teacher DOB</label>
                    <input type="date" runat="server" id="DOBTb" class="form-control" />
                     </div> 
                </div>
                
                
                
            </div>
            <div class="row mt-1">
                <div class="col">
                    <div class ="mb-1">
                    <label>Teacher Salary</label>
                    <input type="number" runat="server" id="SalaryTb" class="form-control" />
                     </div> 
                </div>
                
                
            </div>
            <div class="row mt-1">
                
                <div class="col">
                    <div class ="mb-1">
                    <label>Teacher Password</label> s
              
                    <input type="text" runat="server" id="PassTb" class="form-control" />
                </div>
                </div>
                
            </div>
            <div class="row mt-1">
                <label class="text-center text-danger" id="ErrMsg" runat="server"></label>
                <div class="col d-grid">
                    <asp:Button Text="Update" runat="server" ID="EditBtn" class="btn btn-warning btn-block" OnClick="EditBtn_Click" />
                </div>
                <div class="col d-grid">
                    <asp:Button Text="Save" runat="server" class="btn btn-primary btn-block" OnClick="Unnamed2_Click" />
                </div>
                <div class="col d-grid">
                    <asp:Button Text="Delete" runat="server" ID="DeleteBtn" class="btn btn-danger btn-block" OnClick="DeleteBtn_Click" />
                </div>
            </div>
        </div>
        <div class="col-7">
            <div class="row">
                <div class="col">
                    <h5 class="text-center text-primary"> Teacher List</h5>
                </div>
                
                <asp:GridView runat="server" class="table" ID="TeachersList" AutoGenerateSelectButton="True" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" OnSelectedIndexChanged="TeachersList_SelectedIndexChanged1">
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#487575" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#275353" />

                </asp:GridView>
            </div>
        </div>
    
    </div>
</asp:Content>
