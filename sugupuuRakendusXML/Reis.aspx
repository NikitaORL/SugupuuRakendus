<%@ Page Title="Reisid" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reis.aspx.cs" Inherits="sugupuuRakendusXML.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <div>
            <asp:Xml runat="server"
    DocumentSource="~/XMLReis.xml"
    TransformSource="~/ReisParing.xslt">
</asp:Xml>
        </div>
    </main>
</asp:Content>
