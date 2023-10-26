<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="OnlineSchool.Views.Admin.Students" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
       <div class="row">
           <div class="col bg-warning">
               <h5 class="text-center">Manage Students</h5>
           </div>
       </div>
       <div class="row">
        <div class="col-5">
            <div class="row">
                <div class="col"></div>
                <div class="col"><img src="../../Assets/Images/student.png" /></div>
                <div class="col"></div>
            </div>
            <div class="row mt-1">
                <div class="col">
                    <div class ="mb-1">
                    <label>Student Name</label>
                    <input type="text" class="form-control" runat="server" id="StNameTb"/>
                     </div> 
                </div>
                <div class="col">
                    <div class ="mb-1">
                    <label>Student Email</label>
                    <input type="email" class="form-control" runat="server" id="StEmailTb"/>
                </div>
                </div>
                
            </div>
            <div class="row mt-1">
                <div class="col">
                    <div class ="mb-1">
                    <label>Student Phone</label>
                    <input type="number" class="form-control" runat="server" id="StPhoneTb"/>
                     </div> 
                </div>
                <div class="col">
                    <div class ="mb-1">
                    <label>Student Address</label>
                    <input type="text" class="form-control" runat="server"  id="StAddressTb"/>
                </div>
                </div>
                
            </div>
            <div class="row mt-1">
                <div class="col">
                    <div class ="mb-1">
                    <label>Student DOB</label>
                    <input type="date" class="form-control" runat="server" id="BdateTb"/>
                     </div> 
                </div>
                <div class="col">
                    <div class ="mb-1">
                    <label>Student Gender</label><br />
                    <asp:DropDownList runat="server" class="form-control"  ID="StGenCb">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                </div>
                </div>
                
            </div>
            <div class="row mt-1">
                <div class="col">
                    <div class ="mb-1">
                    <label>Student Password</label>
                    <input type="password" class="form-control" id="StPassTb" runat="server"/>
                     </div> 
                </div>
                <div class="col">
                    <div class ="mb-1">
                    <label>Student Department</label>
                        <br />
                    <asp:DropDownList runat="server" class="form-control" ID="StDepCb">
                       
                    </asp:DropDownList>
                </div>
                </div>
                
            </div>
            <div class="row mt-1">
                
                <div class="col">
                    <div class ="mb-1">
                    <label>Student Teacher</label>
                        <br />
                    <asp:DropDownList runat="server" class="form-control" ID="StTeacherCb">
                       
                    </asp:DropDownList>
                </div>
                </div>
                
            </div>
            <div class="row mt-1">
                <div class="col d-grid">
                    <label class="text-danger text-center" runat="server" id="ErrMsg"> </label>
                    <asp:Button Text="Update" runat="server" ID="EditBtn" class="btn btn-warning btn-block" OnClick="EditBtn_Click" />
                </div>
                <div class="col d-grid">
                    <asp:Button Text="Save" runat="server" ID="SaveBtn" class="btn btn-primary btn-block" OnClick="SaveBtn_Click" />
                </div>
                <div class="col d-grid">
                    <asp:Button Text="Delete" runat="server" ID="DeleteBtn" class="btn btn-danger btn-block" OnClick="DeleteBtn_Click" />
                </div>
            </div>
        </div>
        <div class="col-7">
            <div class="row">
                <div class="col">
                    <h5 class="text-center text-primary"> Student List</h5>
                </div>
                <asp:GridView runat="server" class="table" ID="StudentList" AutoGenerateSelectButton="True" OnSelectedIndexChanged="StudentList_SelectedIndexChanged">
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
