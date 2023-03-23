<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="productDesc.aspx.cs" Inherits="ThinkOwlApi.ThinkOwl.ThinkOwlPages.productDesc" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <nav class="navbar navbar-light bg-transparent">
        <div class="container">
            <div class="align-baseline">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupporedContent" aria-controls="navbarSupporedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <asp:Label ID="orderIdLabel" runat="server" Text="Id" Font-Size="XX-Large" Font-Bold="true"></asp:Label>
                <asp:Label ID="dateTime" runat="server" Text="Id" Font-size="XX-Large"></asp:Label>
            </div>
            <div style="margin-top: 0.5em; display:flex">
                <asp:TextBox ID="txt_search" class="form-control rounded" placeholder="Search order" aria-label="Search" aria-describedby="search-addon" runat="server" Style="font-size: x-large;" OnTextChanged="txtSearch_TextChanged"></asp:TextBox>
                <button type="button" class="btn btn-outline-primary btn-lg" data-bs-toggle="modal" data-bs-target="#exampleModal" style="margin-left: 25px; margin-right: 63px; margin-top: 10px; font-size: -webkit-xxx-large;">
                    Refund 
                </button>
            </div>
        </div>
        <div class="collapse" id="navbarSupporedContent">
            <ul class="navbar-nav ml-auto" >
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#" >Get Order </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/ThinkOwl/thinkOwlPages/Orders">All Orders </a>
                </li>
            </ul>
        </div>
    </nav>
     <asp:Panel ID="pnl_body" runat="server">
        <div>
            <asp:Label ID="isPaid" runat="server" Text="Paid"></asp:Label>
        </div>
        <div class="card" style="color: var(--bs-black); background: rgba(245,250,255,0); padding-left: 0px; margin-left: 63px; margin-right: 63px; padding-right: 0px; border-color: var(--bs-list-group-color);">
            <ul class="list-group list-group-flush" style="background: rgba(245,250,255,0.4); padding-left: 0px; margin-left: 0px; padding-right: 0px; margin-right: 0px; border-style: none; border-color: rgba(0,0,0,0.5);">
                <li class="list-group-item" style="background: rgba(245,250,255,0.4); border-style: solid; border-color: rgba(0,0,0,0.5);">
                    <div >
                        <asp:Panel ID="pnl_lbl" runat="server" style="justify-content:space-between; display:flex"></asp:Panel>
                    </div>
                    <div>
                        <asp:Panel ID="pnl_label2" runat="server" style="justify-content:space-between; display:flex"></asp:Panel>
                    </div>

                    <div style="display: flex;justify-content: space-between;padding-top: 1em;">
                        <div>
                            <asp:Label ID="lbl_totalPages" runat="server" Text="1 - 2 of 2" style="opacity: 50%;"></asp:Label>
                        </div>
                        <div style="display:flex">
                            <asp:Button ID="btn_prev" runat="server" Text="<<" style="background-color:Transparent;border-style:None;opacity: 50%;" OnClick="prev_click" />
                            <div class="page-item" style="padding-left: 0.5em; padding-right: 0.5em">
                                <asp:Label ID="lbl_page" runat="server" Text="1"></asp:Label>
                            </div>
                            <asp:Button ID="btn_next" runat="server" Text=">>" style="background-color:Transparent;border-style:None;opacity: 50%;" OnClick="next_click" />
                        </div>
                    </div>
                </li>
                <li class="list-group-item" style="background: rgba(245,250,255,0.4); border-style: solid; border-color: rgba(0,0,0,0.5);">
                    <div style="justify-content:space-between; display:flex">
                        <asp:Label runat="server" Text="Discount"  ></asp:Label>
                        <asp:Label ID="Discount" runat="server" Text="$$$" ></asp:Label>
                    </div>
                    <div style="justify-content:space-between; display:flex">
                        <asp:Label runat="server" Text="Tax" ></asp:Label>
                        <asp:Label ID="Tax" runat="server" Text="$$$"></asp:Label>
                    </div>
                    <div style="justify-content:space-between; display:flex">
                        <asp:Label runat="server" Text="Shipping"></asp:Label>
                        <asp:Label ID="Shipping" runat="server" Text="$$$"></asp:Label>
                    </div>
                </li>
                <li class="list-group-item" style="background: rgba(245,250,255,0.4); border-style: solid; border-color: rgba(0,0,0,0.5);">
                     <div style="justify-content:space-between; display:flex">
                        <asp:Label runat="server" Text="Total"></asp:Label>
                        <asp:Label ID="totalPrice" runat="server" Text="$$$" style="font-weight: 500;"></asp:Label>
                    </div>
                </li>
            </ul>
        </div>
         <asp:Label ID="lbl_BillingInfo" runat="server" Text="email" style="display: block;"></asp:Label>
         <asp:Label ID="lbl_email" runat="server" Text="email" style="display: block;"></asp:Label>
         <asp:Label ID="Addres" runat="server" Text="#Addres" style="display: block;"></asp:Label>
     </asp:Panel>

    <div class="modal" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" style="width: 100%; height: 100%; background-color: #fff; margin: 0% auto; border: none; padding: 20px;">
      <div class="modal-dialog modal-lg" style="border:none; max-width: 80%; font-size: 50%">
        <div class="modal-content" style="border:none">
          <div class="modal-header" style="border:none">
            <label class="modal-title" id="exampleModalLabel" style="font-size: 60%; font-weight: 700">Refund An Order</label>
              <label style="font-size: 50%; font-weight: 700; margin-left:1em;">-</label>
            <asp:Label ID="lbl_orderId" runat="server" Text="ID" class="form-label" style="font-size: 60%; font-weight: 700; margin-left:1em; margin-bottom:0;"></asp:Label>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body" style="border:none">
              <asp:Panel ID="pnl_refund" runat="server"  style="background: rgba(245,250,255,0.8); font-weight:400">
                  <div class="mb-3" style="display:flex">
                      <asp:RadioButton ID="rdb_refund" runat="server" GroupName="group1" style="width: 40px; height: 40px; margin:1em; display:grid" />
                     <asp:Label ID="lbl_totalRefundable" runat="server" Text="Label" class="form-label" style=" display: flex;align-items: center;"></asp:Label>
                  </div>
                  <div class="mb-3" style="display:flex">
                      <asp:RadioButton ID="rdb_refundLater" runat="server" GroupName="group1" style="width: 40px; height: 40px; margin:1em; display:grid" />
                      <asp:Label runat="server" Text="Refund Later" class="form-label" style=" display: flex;align-items: center;"></asp:Label>
                  </div>
                  <label style="opacity:0.8; margin:0.5em">Inventory</label>
                  <div class="mb-3" style="display:flex">
                      <asp:CheckBox ID="CheckBox1" runat="server" style="width: 40px; height: 40px; margin:1em; display:grid" />
                      <asp:Label ID="Label1" runat="server" Text="Restock Items" style=" display: flex;align-items: center;"></asp:Label>
                  </div>
              </asp:Panel>
              <div style="font-weight:400">
                  <label style="opacity: 0.8; margin: 0.5em">Reason For Cancellation</label>
                  <div class="mb-3" style="display: flex">
                      <asp:RadioButton ID="RadioButton1" runat="server" GroupName="group2" Style="width: 40px; height: 40px; margin: 1em; display: grid" />
                      <asp:Label runat="server" Text="Customer changed / cancelled order" class="form-label" Style="display: flex; align-items: center;"></asp:Label>
                  </div>
                  <div class="mb-3" style="display: flex">
                      <asp:RadioButton ID="RadioButton2" runat="server" GroupName="group2" Style="width: 40px; height: 40px; margin: 1em; display: grid" />
                      <asp:Label runat="server" Text="Fraudulent order" class="form-label" Style="display: flex; align-items: center;"></asp:Label>
                  </div>
                  <div class="mb-3" style="display: flex">
                      <asp:RadioButton ID="RadioButton3" runat="server" GroupName="group2" Style="width: 40px; height: 40px; margin: 1em; display: grid" />
                      <asp:Label runat="server" Text="Items unavailable" class="form-label" Style="display: flex; align-items: center;"></asp:Label>
                  </div>
                  <div class="mb-3" style="display: flex">
                      <asp:RadioButton ID="RadioButton4" runat="server" GroupName="group2" Style="width: 40px; height: 40px; margin: 1em; display: grid" />
                      <asp:Label runat="server" Text="Payment declined" class="form-label" Style="display: flex; align-items: center;"></asp:Label>
                  </div>
                  <div class="mb-3" style="display: flex">
                      <asp:RadioButton ID="RadioButton5" runat="server" GroupName="group2" Style="width: 40px; height: 40px; margin: 1em; display: grid" />
                      <asp:Label runat="server" Text="Other" class="form-label" Style="display: flex; align-items: center;"></asp:Label>
                  </div>
                  <div style="display: flex;justify-content: flex-end;">
                      <button type="button" class="btn btn-outline-warning btn-lg" data-bs-toggle="modal" data-bs-target="#exampleModal2" style="margin-top: 10px;font-size: -webkit-xxx-large;">
                          Cancel order
                      </button>
                      <button type="button" class="btn btn-outline-danger btn-lg" data-bs-dismiss="modal" style="margin-top: 10px;margin-left:1em; font-size: -webkit-xxx-large;">Close</button>
                      <asp:Button ID="btn_refund" runat="server" Text="Refund" class="btn btn-outline-primary btn-lg" OnClick="refund_click" style="margin-top: 10px;margin-left:1em;font-size: -webkit-xxx-large;"/>
                  </div>
              </div>
          </div>
        </div>
      </div>
    </div>


    <div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModal2Label" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <label class="modal-title" id="exampleModal2Label" style="font-size: 50%; font-weight: 700">Cancel An Order</label>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <asp:Panel ID="Panel1" runat="server">
                        <asp:Label runat="server" Text="Are you sure you want to cancel this order? " class="form-label"></asp:Label>
                            <div>
                                    <button type="button" class="btn btn-outline-danger btn-lg" data-bs-dismiss="modal" style="font-size: -webkit-xxx-large">Close</button>
                                    <asp:Button ID="btn_confirmCancel" runat="server" class="btn btn-outline-primary btn-lg" data-bs-dismiss="modal" style="font-size: -webkit-xxx-large" Text="Confirm" OnClick="btn_confirmCancel_Click" />
                            </div>
                    </asp:Panel>
                </div>
            </div>
        </div>
    </div>
</asp:Content>




