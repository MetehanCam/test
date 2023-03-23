<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="ThinkOwlApi.ThinkOwl.ThinkOwlPages.Orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <nav class="navbar navbar-light bg-transparent">
        <div class="container">
            <div class="align-baseline">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupporedContent" aria-controls="navbarSupporedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <asp:Label runat="server" Text="All Orders" Font-Size="XX-Large" Font-Bold="true"></asp:Label>
            </div>
        </div>
        <div class="collapse" id="navbarSupporedContent">
            <ul class="navbar-nav ml-auto" >
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#" >All Orders </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/ThinkOwl/thinkOwlPages/productDesc">Get Order </a>
                </li>
            </ul>
        </div>
    </nav>
    <hr />
    <div class="card" style="border-style:none">
        <ul class="list-group list-group-flush" style="border-style: solid; border-color: rgba(0,0,0,0.5);">
            <li class="list-group-item" >
                <asp:Panel ID="pnl_lbl" runat="server" style="justify-content:space-between; display: flex"></asp:Panel>
                <asp:Panel ID="pnl_status" runat="server"></asp:Panel>
            </li>
        </ul>
        <hr /><hr />
        <ul class="list-group list-group-flush" style="border-style: solid; border-color: rgba(0,0,0,0.5);">
            <li class="list-group-item" >

                <asp:Panel ID="pnl_lbl2" runat="server" style="justify-content:space-between; display: flex"></asp:Panel>
                <asp:Panel ID="pnl_status2" runat="server"></asp:Panel>
            </li>
        </ul>
        <hr />
    </div >
    <div style="align-items: flex-end; display: flex; justify-content: flex-end">
        <asp:Button runat="server" Text="<<" BackColor="Transparent" BorderStyle="none" OnClick="prev_click"></asp:Button>
        <div class="page-item" style="padding-left: 0.5em; padding-right: 0.5em">
            <asp:Label ID="lbl_page" runat="server" Text="1" ForeColor="Black"></asp:Label>
        </div>
        <asp:Button runat="server" Text=">>" BackColor="Transparent" BorderStyle="none" OnClick="next_click"></asp:Button>
    </div>
</asp:Content>

<%--        <ul class="pagination" style="align-content:flex-end; display:flex;">
            <li class="page-item">
                <asp:Button runat="server" Text="<<" BackColor="Transparent" BorderStyle="none" OnClick="previous_click"></asp:Button>
            </li>
            <li class="page-item" style="padding-left: 0.5em; padding-right: 0.5em">
                <asp:Label ID="Label1" runat="server" Text="1" ForeColor="Black"></asp:Label>
            </li>
            <li class="page-item">
                <asp:Button runat="server" Text=">>" BackColor="Transparent" BorderStyle="none" OnClick="next_click"></asp:Button>
            </li>
        </ul>--%>