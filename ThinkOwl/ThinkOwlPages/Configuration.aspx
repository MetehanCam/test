<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Configuration.aspx.cs" Inherits="ThinkOwlApi.ThinkOwl.ThinkOwlPages.Configuration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="display:grid">
        <asp:Label runat="server" Text="Account" style="margin-top: 2em;"></asp:Label>
        <hr />
        <asp:Label runat="server" Text="Profile Name" style="font-size:55%;font-weight:400;margin-top: 1em;"></asp:Label>
        <asp:TextBox ID="txt_profileName" runat="server" style="max-width:inherit" requried=""></asp:TextBox>
        <asp:Label runat="server" Text="WooCommerce account url" style="font-size:55%;font-weight:400; margin-top: 0.5em;"></asp:Label>
        <asp:TextBox ID="txt_url" runat="server" style="max-width:inherit" requried=""></asp:TextBox>
        <asp:Label runat="server" Text="Account key" style="font-size:55%;font-weight:400;margin-top: 0.5em;"></asp:Label>
        <asp:TextBox ID="txt_key" runat="server" style="max-width:inherit" requried=""></asp:TextBox>
        <asp:Label runat="server" Text="Account key" style="font-size:55%;font-weight:400;margin-top: 0.5em;"></asp:Label>
        <asp:TextBox ID="txt_secret" runat="server" style="max-width:inherit" requried=""></asp:TextBox>
        <asp:Button ID="btn_connect" runat="server" Text="Connect" Style="color: rgb(0,119,130); font-weight: 600; margin-top: 0.5em" OnClick="btn_connect_Click" />
        <asp:Label ID="isConnected" runat="server" Text="Connected to Account" Style="font-size: 55%; font-weight: 400; margin-top: 0.5em" Visible="false" ></asp:Label>
        <asp:Button ID="btn_revoke" runat="server" Text="Revoke" Style="color: rgb(0,119,130); font-weight: 600; margin-top: 0.5em" Enabled="False" OnClick="btn_revoke_Click" />


        <asp:Label runat="server" Text="Contact sync" style="margin-top: 2em;"></asp:Label>
        <hr />
        <asp:Button ID="syncContact" runat="server" Text="Sync contact" Style="color: rgb(0,119,130); font-weight: 600; margin-top: 1em; max-width: fit-content" OnClick="syncContact_Click" Enabled="False" />
        <asp:Label runat="server" Text="Last manual sync date and time" style="font-size:55%;font-weight:400; margin-top: 0.5em;"></asp:Label>
        <asp:TextBox ID="txt_lastAddedManual" runat="server" ReadOnly="True" style="max-width:inherit"></asp:TextBox>
        <asp:Label runat="server" Text="Last webhook sync date and time" style="font-size:55%;font-weight:400; margin-top: 0.5em;"></asp:Label>
        <asp:TextBox ID="txt_lastAddedWebhook" runat="server" ReadOnly="True" style="max-width:inherit"></asp:TextBox>
    </div>
</asp:Content>
