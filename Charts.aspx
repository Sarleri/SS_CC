﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Charts.aspx.cs" Inherits="Charts" AspCompat="true"%>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">

        function LoadDiv(url) {

            var img = new Image();

            var bcgDiv = document.getElementById("divBackground");

            var imgDiv = document.getElementById("divImage");

            var imgFull = document.getElementById("imgFull");

            var imgLoader = document.getElementById("imgLoader");

            imgLoader.style.display = "block";

            img.onload = function () {

                imgFull.src = img.src;

                imgFull.style.display = "block";

                imgLoader.style.display = "none";

            };

            img.src = url;

            var width = document.body.clientWidth;

            if (document.body.clientHeight > document.body.scrollHeight) {

                bcgDiv.style.height = document.body.clientHeight + "px";

            }

            else {

                bcgDiv.style.height = document.body.scrollHeight + "px";

            }

            imgDiv.style.left = (width - 650) / 2 + "px";

            imgDiv.style.top = "20px";

            bcgDiv.style.width = "100%";



            bcgDiv.style.display = "block";

            imgDiv.style.display = "block";

            return false;

        }

        function HideDiv() {

            var bcgDiv = document.getElementById("divBackground");

            var imgDiv = document.getElementById("divImage");

            var imgFull = document.getElementById("imgFull");

            if (bcgDiv != null) {

                bcgDiv.style.display = "none";

                imgDiv.style.display = "none";

                imgFull.style.display = "none";

            }

        }

</script>
 <style type="text/css">

body

{

    margin: 0;

    padding: 0;

    height: 100%;

}

.modal

{

    display: none;

    position: absolute;

    top: 0px;

    left: 0px;

    background-color: black;

    z-index: 100;

    opacity: 0.8;

    filter: alpha(opacity=60);

    -moz-opacity: 0.8;

    min-height: 100%;

}

#divImage

{

    display: none;

    z-index: 1000;

    position: fixed;

    top: 0;

    left: 0;

    background-color: White;

    height: 550px;

    width: 600px;

    padding: 3px;

    border: solid 1px black;

}

</style>


     <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            text-align: center;
            border-style: solid;
        }
       
    </style>
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <table class="style1">
    <tr>
        <td class="style2">
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label" BorderColor="Black" BorderStyle="Solid" BackColor="LightGray" Width="250">Self Serve Run Time Stats - Last 2 Weeks (LSS)</asp:Label>
            <br />
              <asp:Image ID="imgSelfServeLSS" runat="server" ImageUrl="~/charts/chartruntimeLSS.png"  Width="250" Height="250" Visible="true" onclick="return jsPop1('enlargecharts.aspx?url=http://192.168.22.40/display/LMGSelfServe/LSS+Runtime+Stats+-+Last+2+Weeks+%28Graph%29', 'win02', 775, 575);" />
        </td>
     <td class="style2">        
            <br />
            <asp:Label ID="Label2" runat="server" Text="Label" BorderColor="Black" BorderStyle="Solid" BackColor="LightGray" Width="250">Self Serve Run Time Stats - Last 2 Weeks (Coles)</asp:Label>
            <br />
        <asp:Image ID="imgSelfServeColes" runat="server" ImageUrl="~/charts/chartruntimecoles.png" Height="250" Width="250" Visible="true" onclick="return jsPop1('enlargecharts.aspx?url=http://192.168.22.40/display/LMGSelfServe/Coles+Runtime+Stats+-+Last+2+Weeks+%28Graph%29', 'win02', 775, 575);" /></td>
         <td class="style2">        
            <br />
            <asp:Label ID="Label3" runat="server" Text="Label" BorderColor="Black" BorderStyle="Solid" BackColor="LightGray" Width="250">Self Serve Run Time Stats - Last 2 Weeks (CVS)</asp:Label>
            <br />
        <asp:Image ID="imgSelfServeCVS" runat="server" ImageUrl="~/charts/chartruntimecvs.png" Height="250" Width="250" Visible="true"  onclick="return jsPop1('enlargecharts.aspx?url=http://192.168.22.40/display/LMGSelfServe/CVS+Runtime+Stats+-+Last+2+Weeks+%28Graph%29', 'win02', 775, 575);" /></td>
        <td class="style2">        
            <br />
            <asp:Label ID="Label4" runat="server" Text="Label" BorderColor="Black" BorderStyle="Solid" BackColor="LightGray" Width="250">Self Serve Run Time Stats - Last 2 Weeks (Madison)</asp:Label>
            <br />
        <asp:Image ID="imgSelfServeMadison" runat="server" ImageUrl="~/charts/chartruntimemadison.png" Height="250" Width="250" Visible="true" onclick="return jsPop1('enlargecharts.aspx?url=http://192.168.22.40/display/LMGSelfServe/Madison+Runtime+Stats+-+Last+2+Weeks+%28Graph%29', 'win02', 775, 575);" /></td>
    </tr>
<tr>
        <td class="style2">
            <br />
            <asp:Label ID="Label5" runat="server" Text="Label" BorderColor="Black" BorderStyle="Solid" BackColor="LightGray" Width="250">Self Serve Run Time Stats - Last 2 Weeks (Sainsbury)</asp:Label>
            <br />
        <asp:Image ID="imgSelfServeSainsbury" runat="server" ImageUrl="~/charts/chartruntimesainsbury.png" Height="250" Width="250" Visible="true" onclick="return jsPop1('enlargecharts.aspx?url=http://192.168.22.40/display/LMGSelfServe/Runtime+Stats+-+Last+2+Weeks+%28Graph%29', 'win02', 775, 575);"  /></td>
       <td class="style2">
            <br />
            <asp:Label ID="Label6" runat="server" Text="Label" BorderColor="Black" BorderStyle="Solid" BackColor="LightGray" Width="250">Self Serve Run Time Stats - Last 2 Weeks (Migros)</asp:Label>
            <br />
        <asp:Image ID="imgSelfServeMigros" runat="server" ImageUrl="~/charts/chartruntimemigros.png" Height="250" Width="250" Visible="true" onclick="return jsPop1('enlargecharts.aspx?url=http://192.168.22.40/display/LMGSelfServe/Migros+-+Runtime+Stats+-+Last+2+Weeks+%28Graph%29', 'win02', 775, 575);" /></td>
        <td class="style2">
            <br />
            <asp:Label ID="Label7" runat="server" Text="Label" BorderColor="Black" BorderStyle="Solid" BackColor="LightGray" Width="250">Self Serve Run Time Stats - Last 2 Weeks (Sobeys)</asp:Label>
            <br />
        <asp:Image ID="imgSelfServeSobeys" runat="server" ImageUrl="~/charts/chartruntimesobeys.png" Height="250" Width="250" Visible="true" onclick="return jsPop1('enlargecharts.aspx?url=http://192.168.22.40/display/LMGSelfServe/Sobeys+Runtime+Stats+-+Last+2+Weeks+%28Graph%29', 'win02', 775, 575);" /></td>
        <td class="style2">
            <br />
            <asp:Label ID="Label8" runat="server" Text="Label" BorderColor="Black" BorderStyle="Solid" BackColor="LightGray" Width="250">Self Serve Run Time Stats - Last 2 Weeks (Spartan)</asp:Label>
            <br />
        <asp:Image ID="imgSelfServeSpartan" runat="server" ImageUrl="~/charts/chartruntimespartan.png" Height="250" Width="250" Visible="true" onclick="return jsPop1('enlargecharts.aspx?url=http://192.168.22.40/display/LMGSelfServe/Spartan+Runtime+Stats+-+Last+2+Weeks+%28Graph%29', 'win02', 775, 575);" /></td>
    </tr>
        <tr>
        <td class="style2">
            <br />
            <asp:Label ID="Label9" runat="server" Text="Label" BorderColor="Black" BorderStyle="Solid" BackColor="LightGray" Width="250">LSS- Pending reports  </asp:Label>
            <br />
        <asp:Image ID="Image1" runat="server" ImageUrl="~/charts/chartruntimesainsbury.png" Height="250" Width="250" Visible="true" onclick="return jsPop1('enlargecharts.aspx?url=http://192.168.22.40/x/bAMSBg', 'win02', 775, 575);"  /></td>
       <td class="style2">
            <br />
            <asp:Label ID="Label10" runat="server" Text="Label" BorderColor="Black" BorderStyle="Solid" BackColor="LightGray" Width="250">CVS- Pending reports</asp:Label>
            <br />
        <asp:Image ID="Image2" runat="server" ImageUrl="~/charts/chartruntimemigros.png" Height="250" Width="250" Visible="true" onclick="return jsPop1('enlargecharts.aspx?url=http://192.168.22.40/x/oAMSBg', 'win02', 775, 575);" /></td>
        <td class="style2">
            <br />
            <asp:Label ID="Label11" runat="server" Text="Label" BorderColor="Black" BorderStyle="Solid" BackColor="LightGray" Width="250">Coles- Pending reports</asp:Label>
            <br />
        <asp:Image ID="Image3" runat="server" ImageUrl="~/charts/chartruntimesobeys.png" Height="250" Width="250" Visible="true" onclick="return jsPop1('enlargecharts.aspx?url=http://192.168.22.40/x/lQMSBg', 'win02', 775, 575);" /></td>
        <td class="style2">
            <br />
            <asp:Label ID="Label12" runat="server" Text="Label" BorderColor="Black" BorderStyle="Solid" BackColor="LightGray" Width="250">Madison- Pending reports </asp:Label>
            <br />
        <asp:Image ID="Image4" runat="server" ImageUrl="~/charts/chartruntimespartan.png" Height="250" Width="250" Visible="true" onclick="return jsPop1('enlargecharts.aspx?url=http://192.168.22.40/x/qQMSBg', 'win02', 775, 575);" /></td>
    </tr>
               <tr>
        <td class="style2">
            <br />
            <asp:Label ID="Label13" runat="server" Text="Label" BorderColor="Black" BorderStyle="Solid" BackColor="LightGray" Width="250">Migros- Pending reports  </asp:Label>
            <br />
        <asp:Image ID="Image5" runat="server" ImageUrl="~/charts/chartruntimesainsbury.png" Height="250" Width="250" Visible="true" onclick="return jsPop1('enlargecharts.aspx?url=http://192.168.22.40/x/sQMSBg', 'win02', 775, 575);"  /></td>
       <td class="style2">
            <br />
            <asp:Label ID="Label14" runat="server" Text="Label" BorderColor="Black" BorderStyle="Solid" BackColor="LightGray" Width="250">Sainsburys- Pending reports</asp:Label>
            <br />
        <asp:Image ID="Image6" runat="server" ImageUrl="~/charts/chartruntimemigros.png" Height="250" Width="250" Visible="true" onclick="return jsPop1('enlargecharts.aspx?url=http://192.168.22.40/x/uwMSBg ', 'win02', 775, 575);" /></td>
        <td class="style2">
            <br />
            <asp:Label ID="Label15" runat="server" Text="Label" BorderColor="Black" BorderStyle="Solid" BackColor="LightGray" Width="250">Sobeys- Pending reports</asp:Label>
            <br />
        <asp:Image ID="Image7" runat="server" ImageUrl="~/charts/chartruntimesobeys.png" Height="250" Width="250" Visible="true" onclick="return jsPop1('enlargecharts.aspx?url=http://192.168.22.40/x/vQMSBg', 'win02', 775, 575);" /></td>
        <td class="style2">
            <br />
            <asp:Label ID="Label16" runat="server" Text="Label" BorderColor="Black" BorderStyle="Solid" BackColor="LightGray" Width="250">Spartan- Pending reports </asp:Label>
            <br />
        <asp:Image ID="Image8" runat="server" ImageUrl="~/charts/chartruntimespartan.png" Height="250" Width="250" Visible="true" onclick="return jsPop1('enlargecharts.aspx?url=http://192.168.22.40/x/xgMSBg', 'win02', 775, 575);" /></td>
    </tr>
    </table>

</asp:Content>

