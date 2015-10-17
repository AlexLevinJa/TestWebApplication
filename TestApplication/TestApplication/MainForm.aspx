<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainForm.aspx.cs" Inherits="TestApplication.MainForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>        
        <div style="text-align: center; font-size: x-large; font-weight: bold; color: #000080;">
            Customers
        </div>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" align="center" DataKeyNames="customer_id">
            <Columns>
                <asp:BoundField DataField="customer_id" HeaderText="##" InsertVisible="False" ReadOnly="True" SortExpression="customer_id" />
                <asp:BoundField DataField="customer_name" HeaderText="Name" SortExpression="customer_name" />
                <asp:BoundField DataField="customer_address" HeaderText="Address" SortExpression="customer_address" />
                <asp:BoundField DataField="customer_phone_1" HeaderText="Contact Phone #1" SortExpression="customer_phone_1" />
                <asp:BoundField DataField="customer_phone_2" HeaderText="Contact Phone #2" SortExpression="customer_phone_2" />                
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TestApplicationBD_Connetction %>" SelectCommand="SELECT [customer_name], [customer_address], [customer_phone_1], [customer_phone_2], [customer_id] FROM [tCustomers]"></asp:SqlDataSource>
    </form>
</body>
</html>
