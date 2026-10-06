<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="sugupuuRakendusXML._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">XML - Extensible Markup Language</h1>
            <p class="lead">XML kirjeldb kuidas andmed on oma vahel seotud.
                <br/>XML tuleb deklareerida
                <br/>API kastavad XML faile
                <br/>RSS-uudised hoiatakse XML-ina
                <br/>KML kaardid põhinevad XML´faili
                <br/>kasutame süsteemide andmevahetusel

            </p>
          
        </section>
        <section class="row" aria-labelledby="aspnetTitle">
    <h1 id="aspnetTitle">XSLT - Extensible Stylesheet Language Transformations</h1>
    <p class="lead">XSLT muudab andmed XMl failis.
        <br/>XML --> XSLT --> HTML--> veebileht
        <br/>XML --> XSLT --> .aspx leht--> veebileht
        <br/>XML --> XSLT --> csv fail
        <br/>XML --> XSLT --> HTML
        <br/>kasutame süsteemide andmevahetusel

    </p>
            <h2>XSLT funktsioonid</h2>
            <br /> count() -arvutab kogus
            <br /> substring(nimi,1,1) - eraldab nimest 1.täht
            <br /> substring(nimi,1,3) - eraldab nimest esimised kolm tähte
            <br /> string-lenght(nimi) - sümbolte arv
            <br />start-with(nimi, ´A´) - tekstikontroll
            <br />last() - viimane järjekontroll
            <br />position() - jooksva järjekorranumber
            <br />not(), true(). false()
            <br />normalize-space() - võtab tühikud
            <br />translate(nimi, algsümboolit, lõppsümbolit) - aseneb tähed
  
</section>

       
    </main>

</asp:Content>
