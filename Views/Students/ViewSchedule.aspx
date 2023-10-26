<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Students/StudentsMaster.Master" AutoEventWireup="true" CodeBehind="ViewSchedule.aspx.cs" Inherits="OnlineSchool.Views.Students.ViewSchedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
     <div class="row pt-3 bg-warning">
        <h1></h1>
    </div>
    <div class="row mb-3">
        <div class="col">

         </div>
         <div class="col">
             <h3> Course Time Table</h3>
         </div>
        <div class="col">

         </div>
    </div>
     <div class="row mb-3" >
        <div class="col-md-2">

         </div>
         <div class="col-md-8">
         <table class="table table-bordered">
             <tr>
                 <td>
                     <h4> Monday</h4>
                 </td>
                  <td>
                     <h6> First Period</h6>
                      <h2 id="MFPTb" runat="server">Subject</h2>
                 </td>
                    <td>
                     <h6> Second Period</h6>
                      <h2 id="MSPTb" runat="server">Subject</h2>
                 </td>
                    <td>
                     <h6> Thirs Period</h6>
                      <h2 id="MTPTb" runat="server">Subject</h2>
                 </td>
                    <td>
                     <h6> Forth Period</h6>
                      <h2 id="MFoPTb" runat="server">Subject</h2>
                 </td>
                    <td>
                     <h6> Fifth Period</h6>
                      <h2 id="MFiPTb" runat="server">Subject</h2>
                 </td>
             </tr>
             <tr>
                 <td>
                     <h4> Tuesday</h4>
                 </td>
                  <td>
                     <h6> First Period</h6>
                      <h2 id="TFPTb" runat="server">Subject</h2>
                 </td>
                    <td>
                     <h6> Second Period</h6>
                      <h2 id="TSPTb" runat="server">Subject</h2>
                 </td>
                    <td>
                     <h6> Thirs Period</h6>
                      <h2 id="TTPTb" runat="server">Subject</h2>
                 </td>
                    <td>
                     <h6> Forth Period</h6>
                      <h2 id="TFoPTb" runat="server">Subject</h2>
                 </td>
                    <td>
                     <h6> Fifth Period</h6>
                      <h2 id="TFiPTb" runat="server">Subject</h2>
                 </td>
             </tr>
             <tr>
                 <td>
                     <h4> Wednesday</h4>
                 </td>
                  <td>
                     <h6> First Period</h6>
                      <h2 id="WFPTb" runat="server">Subject</h2>
                 </td>
                    <td>
                     <h6> Second Period</h6>
                      <h2 id="WSPTb" runat="server">Subject</h2>
                 </td>
                    <td>
                     <h6> Thirs Period</h6>
                      <h2 id="WTPTb" runat="server">Subject</h2>
                 </td>
                    <td>
                     <h6> Forth Period</h6>
                      <h2 id="WFoPTb" runat="server">Subject</h2>
                 </td>
                    <td>
                     <h6> Fifth Period</h6>
                      <h2 id="WFiPTb" runat="server">Subject</h2>
                 </td>
             </tr>
             <tr>
                 <td>
                     <h4> Thusday</h4>
                 </td>
                  <td>
                     <h6> First Period</h6>
                      <h2 id="ThFPTb" runat="server">Subject</h2>
                 </td>
                    <td>
                     <h6> Second Period</h6>
                      <h2 id="ThSPTb" runat="server">Subject</h2>
                 </td>
                    <td>
                     <h6> Thirs Period</h6>
                      <h2 id="ThTPTb" runat="server">Subject</h2>
                 </td>
                    <td>
                     <h6> Forth Period</h6>
                      <h2 id="ThFoPTb" runat="server">Subject</h2>
                 </td>
                    <td>
                     <h6> Fifth Period</h6>
                      <h2 id="ThFiPTb" runat="server">Subject</h2>
                 </td>
             </tr>
             <tr>
                 <td>
                     <h4> Friday</h4>
                 </td>
                  <td>
                     <h6> First Period</h6>
                      <h2 id="FFPTb" runat="server">Subject</h2>
                 </td>
                    <td>
                     <h6> Second Period</h6>
                      <h2 id="FSPTb" runat="server">Subject</h2>
                 </td>
                    <td>
                     <h6> Thirs Period</h6>
                      <h2 id="FTPTb" runat="server">Subject</h2>
                 </td>
                    <td>
                     <h6> Forth Period</h6>
                      <h2 id="FFoPTb" runat="server">Subject</h2>
                 </td>
                    <td>
                     <h6> Fifth Period</h6>
                      <h2 id="FFiPTb" runat="server">Subject</h2>
                 </td>
             </tr>
         </table>
         </div>
        <div class="col-md-2">

         </div>
    </div>
</asp:Content>
