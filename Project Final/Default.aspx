<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/pic1.jpg" ToolTip="Main image" />
    
    </div>
        <p>
            &nbsp;</p>
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://www.usj.edu.lb">site usj</asp:HyperLink>
        </p>
        <p>
            <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Ads.xml" />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" Width="330px">
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                <DayStyle BackColor="#CCCCCC" />
                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                <TodayDayStyle BackColor="#999999" ForeColor="White" />
            </asp:Calendar>
        </p>
        <p>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
&nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:ImageMap ID="ImageMap1" runat="server" ImageUrl="~/images/pic6.jpg" OnClick="ImageMap1_Click" HotSpotMode="PostBack">
                <asp:CircleHotSpot HotSpotMode="Navigate" NavigateUrl="http://www.google.com" Radius="30" X="160" Y="50" />
                <asp:RectangleHotSpot Bottom="100" HotSpotMode="Navigate" Left="620" NavigateUrl="http://facebook.com" Right="1105" Target="_blank" />
                <asp:CircleHotSpot PostBackValue="PBV" Radius="20" X="451" Y="30" HotSpotMode="PostBack" />
            </asp:ImageMap>
        </p>
    </form>
</body>
</html>
