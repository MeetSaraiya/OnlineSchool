<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Schedules.aspx.cs" Inherits="OnlineSchool.Views.Admin.Schedules" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 96px;
            height: 100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
    <div class="row">
           <div class="col bg-warning">
               <h5 class="text-center">Manage Time Table</h5>
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
                     <asp:DropDownList runat="server" id="DepCb" class="form-control">
                       
                    </asp:DropDownList>
                     </div> 
                </div>
                <div class="col">
                    <div class ="mb-1">
                    <label>Day</label>  <br />
                    <asp:DropDownList runat="server" id ="DayCb" class="form-control">
                        <asp:ListItem>Monday</asp:ListItem>
                        <asp:ListItem>Tuesday</asp:ListItem>
                        <asp:ListItem>Wednesday</asp:ListItem>
                        <asp:ListItem>Thusday</asp:ListItem>
                        <asp:ListItem>Friday</asp:ListItem>                        
                    </asp:DropDownList>
                     </div> 
                </div>
                
                
               
                
            </div>
            <div class="row mt-1">
                <div class="col">
                    <div class ="mb-1">
                    <label>8AM-9AM</label>
                    <asp:DropDownList runat="server" id="Sub1Cb" class="form-control">
                       <asp:ListItem>Math</asp:ListItem>
                        <asp:ListItem>English</asp:ListItem>
                        <asp:ListItem>Hindi</asp:ListItem>
                        <asp:ListItem>Geometry</asp:ListItem>
                        <asp:ListItem>History</asp:ListItem>
                         <asp:ListItem>Computer</asp:ListItem> 
                        <asp:ListItem>Networking</asp:ListItem>
                        <asp:ListItem>DBMS</asp:ListItem>
                        <asp:ListItem>DSA</asp:ListItem>
                        <asp:ListItem>ADVANCED TECHNOLOGIES</asp:ListItem>
                        <asp:ListItem>PROBABILITY AND STATS</asp:ListItem>
                        <asp:ListItem>MATHS - 1</asp:ListItem>
                        <asp:ListItem>MATHS - 2</asp:ListItem>
                        <asp:ListItem>MATHS - 3</asp:ListItem>
                        <asp:ListItem>JAVA</asp:ListItem>
                        <asp:ListItem>WAD</asp:ListItem>
                        <asp:ListItem>OPERATING SYSTEMS</asp:ListItem>
                        <asp:ListItem>DAA</asp:ListItem>


                    </asp:DropDownList>

                     </div>
                     <div class ="mb-1">
                    <label>9AM-10AM</label>
                    <asp:DropDownList runat="server" id="Sub2Cb" class="form-control">
                  
<asp:ListItem>DSA</asp:ListItem>
<asp:ListItem>ADVANCED TECHNOLOGIES</asp:ListItem>
<asp:ListItem>PROBABILITY AND STATS</asp:ListItem>
<asp:ListItem>MATHS - 1</asp:ListItem>
<asp:ListItem>MATHS - 2</asp:ListItem>
<asp:ListItem>MATHS - 3</asp:ListItem>
<asp:ListItem>JAVA</asp:ListItem>
<asp:ListItem>WAD</asp:ListItem>
<asp:ListItem>OPERATING SYSTEMS</asp:ListItem>
<asp:ListItem>DAA</asp:ListItem>

                    </asp:DropDownList>
                     </div> 
                </div>                                                
            </div>
            <div class="row mt-1">
                <div class="col">
                    <div class ="mb-1">
                    <label>10AM-11AM</label>
                    <asp:DropDownList runat="server" id="Sub3Cb" class="form-control">
                       
                        <asp:ListItem>DBMS</asp:ListItem>
<asp:ListItem>DSA</asp:ListItem>
<asp:ListItem>ADVANCED TECHNOLOGIES</asp:ListItem>
<asp:ListItem>PROBABILITY AND STATS</asp:ListItem>
<asp:ListItem>MATHS - 1</asp:ListItem>
<asp:ListItem>MATHS - 2</asp:ListItem>
<asp:ListItem>MATHS - 3</asp:ListItem>
<asp:ListItem>JAVA</asp:ListItem>
<asp:ListItem>WAD</asp:ListItem>
<asp:ListItem>OPERATING SYSTEMS</asp:ListItem>
<asp:ListItem>DAA</asp:ListItem>

                    </asp:DropDownList>
                     </div>
                     <div class ="mb-1">
                    <label>11AM-12PM</label>
                    <asp:DropDownList runat="server" id="Sub4Cb" class="form-control">
                        
                        <asp:ListItem>DBMS</asp:ListItem>
<asp:ListItem>DSA</asp:ListItem>
<asp:ListItem>ADVANCED TECHNOLOGIES</asp:ListItem>
<asp:ListItem>PROBABILITY AND STATS</asp:ListItem>
<asp:ListItem>MATHS - 1</asp:ListItem>
<asp:ListItem>MATHS - 2</asp:ListItem>
<asp:ListItem>MATHS - 3</asp:ListItem>
<asp:ListItem>JAVA</asp:ListItem>
<asp:ListItem>WAD</asp:ListItem>
<asp:ListItem>OPERATING SYSTEMS</asp:ListItem>
<asp:ListItem>DAA</asp:ListItem>

                    </asp:DropDownList>
                     </div> 
                </div>                                                
            </div>
            <div class="row mt-1">
                <div class="col">
                    <div class ="mb-1">
                    <label>12PM-1PM</label>
                    <asp:DropDownList runat="server"  id="Sub5Cb" class="form-control">
                        
                        <asp:ListItem>DBMS</asp:ListItem>
<asp:ListItem>DSA</asp:ListItem>
<asp:ListItem>ADVANCED TECHNOLOGIES</asp:ListItem>
<asp:ListItem>PROBABILITY AND STATS</asp:ListItem>
<asp:ListItem>MATHS - 1</asp:ListItem>
<asp:ListItem>MATHS - 2</asp:ListItem>
<asp:ListItem>MATHS - 3</asp:ListItem>
<asp:ListItem>JAVA</asp:ListItem>
<asp:ListItem>WAD</asp:ListItem>
<asp:ListItem>OPERATING SYSTEMS</asp:ListItem>
<asp:ListItem>DAA</asp:ListItem>

                    </asp:DropDownList>
                     </div> 
                </div>
                </div>
                        
            <div class="row mt-1">
                <label id="ErrMsg" runat="server" class="text-center text-danger"></label>
                <div class="col d-grid">
                    <asp:Button Text="Edit" runat="server" id="EditBtn" class="btn btn-warning btn-block" OnClick="EditBtn_Click" />
                </div>
                <div class="col d-grid">
                    <asp:Button Text="Save" runat="server" id="SaveBtn" class="btn btn-primary btn-block" OnClick="SaveBtn_Click" />
                </div>
               <div class="col d-grid">
                    <asp:Button Text="Delete" runat="server" id="DeleteBtn" class="btn btn-danger btn-block" OnClick="DeleteBtn_Click1" />
                </div>
            </div>
        </div>
        <div class="col-7">
            <div class="row">
                <div class="col">
                    <h5 class="text-center text-primary"> Schedule List</h5>
                </div>
                
                <asp:GridView runat="server" id="ScheduleList" class="table" AutoGenerateSelectButton="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="ScheduleList_SelectedIndexChanged1">
                    <AlternatingRowStyle BackColor="White" />
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />

                </asp:GridView>
            </div>
        </div>
    
    </div>
</asp:Content>
