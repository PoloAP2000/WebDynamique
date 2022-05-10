<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gv.aspx.cs" Inherits="gv" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myConnectionString %>" SelectCommand="SELECT * FROM [emp]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [emp] WHERE [empno] = @original_empno AND (([ename] = @original_ename) OR ([ename] IS NULL AND @original_ename IS NULL)) AND (([job] = @original_job) OR ([job] IS NULL AND @original_job IS NULL)) AND (([mgr] = @original_mgr) OR ([mgr] IS NULL AND @original_mgr IS NULL)) AND (([hiredate] = @original_hiredate) OR ([hiredate] IS NULL AND @original_hiredate IS NULL)) AND (([sal] = @original_sal) OR ([sal] IS NULL AND @original_sal IS NULL)) AND (([comm] = @original_comm) OR ([comm] IS NULL AND @original_comm IS NULL)) AND (([deptno] = @original_deptno) OR ([deptno] IS NULL AND @original_deptno IS NULL))" InsertCommand="INSERT INTO [emp] ([ename], [job], [mgr], [hiredate], [sal], [comm], [deptno]) VALUES (@ename, @job, @mgr, @hiredate, @sal, @comm, @deptno)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [emp] SET [ename] = @ename, [job] = @job, [mgr] = @mgr, [hiredate] = @hiredate, [sal] = @sal, [comm] = @comm, [deptno] = @deptno WHERE [empno] = @original_empno AND (([ename] = @original_ename) OR ([ename] IS NULL AND @original_ename IS NULL)) AND (([job] = @original_job) OR ([job] IS NULL AND @original_job IS NULL)) AND (([mgr] = @original_mgr) OR ([mgr] IS NULL AND @original_mgr IS NULL)) AND (([hiredate] = @original_hiredate) OR ([hiredate] IS NULL AND @original_hiredate IS NULL)) AND (([sal] = @original_sal) OR ([sal] IS NULL AND @original_sal IS NULL)) AND (([comm] = @original_comm) OR ([comm] IS NULL AND @original_comm IS NULL)) AND (([deptno] = @original_deptno) OR ([deptno] IS NULL AND @original_deptno IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_empno" Type="Int32" />
                <asp:Parameter Name="original_ename" Type="String" />
                <asp:Parameter Name="original_job" Type="String" />
                <asp:Parameter Name="original_mgr" Type="Int32" />
                <asp:Parameter DbType="Date" Name="original_hiredate" />
                <asp:Parameter Name="original_sal" Type="Int32" />
                <asp:Parameter Name="original_comm" Type="Int32" />
                <asp:Parameter Name="original_deptno" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ename" Type="String" />
                <asp:Parameter Name="job" Type="String" />
                <asp:Parameter Name="mgr" Type="Int32" />
                <asp:Parameter DbType="Date" Name="hiredate" />
                <asp:Parameter Name="sal" Type="Int32" />
                <asp:Parameter Name="comm" Type="Int32" />
                <asp:Parameter Name="deptno" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ename" Type="String" />
                <asp:Parameter Name="job" Type="String" />
                <asp:Parameter Name="mgr" Type="Int32" />
                <asp:Parameter DbType="Date" Name="hiredate" />
                <asp:Parameter Name="sal" Type="Int32" />
                <asp:Parameter Name="comm" Type="Int32" />
                <asp:Parameter Name="deptno" Type="Int32" />
                <asp:Parameter Name="original_empno" Type="Int32" />
                <asp:Parameter Name="original_ename" Type="String" />
                <asp:Parameter Name="original_job" Type="String" />
                <asp:Parameter Name="original_mgr" Type="Int32" />
                <asp:Parameter DbType="Date" Name="original_hiredate" />
                <asp:Parameter Name="original_sal" Type="Int32" />
                <asp:Parameter Name="original_comm" Type="Int32" />
                <asp:Parameter Name="original_deptno" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="empno" DataSourceID="SqlDataSource1" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" PageSize="5" Width="635px">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="empno" HeaderText="Emp Number" InsertVisible="False" ReadOnly="True" SortExpression="empno" />
                <asp:BoundField DataField="ename" HeaderText="Name" SortExpression="ename" />
                <asp:BoundField DataField="hiredate" DataFormatString="{0:dd/MM/yyyy}" HeaderText="hiredate" SortExpression="hiredate" />
                <asp:BoundField DataField="job" HeaderText="job" SortExpression="job" />
                <asp:BoundField DataField="sal" HeaderText="sal" SortExpression="sal" />
                <asp:BoundField DataField="deptno" HeaderText="deptno" SortExpression="deptno" />
                <asp:BoundField DataField="comm" HeaderText="Commission" SortExpression="comm" />
                <asp:ImageField DataImageUrlField="empno" DataImageUrlFormatString="~/images/emp/{0}.jpg" HeaderText="Profile pic">
                    <ControlStyle Height="50px" Width="50px" />
                </asp:ImageField>
                <asp:HyperLinkField DataNavigateUrlFields="empno,deptno" DataNavigateUrlFormatString="edit.aspx?empno={0}&amp;deptno={1}" DataTextField="ename" DataTextFormatString="edit the employee {0}" HeaderText="Edit employees" />
                <asp:TemplateField HeaderText="Raise">
                    <ItemTemplate>
                        <asp:TextBox ID="txtRaise" runat="server"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerSettings FirstPageText="First" LastPageText="Last" Mode="NextPreviousFirstLast" NextPageText="Next" PreviousPageText="Prev." />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />
        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="empno" DataSourceID="SqlDataSource1" Height="50px" Width="357px">
            <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <Fields>
                <asp:BoundField DataField="empno" HeaderText="empno" InsertVisible="False" ReadOnly="True" SortExpression="empno" />
                <asp:BoundField DataField="ename" HeaderText="ename" SortExpression="ename" />
                <asp:BoundField DataField="job" HeaderText="job" SortExpression="job" />
                <asp:BoundField DataField="mgr" HeaderText="mgr" SortExpression="mgr" />
                <asp:BoundField DataField="hiredate" HeaderText="hiredate" SortExpression="hiredate" />
                <asp:BoundField DataField="sal" HeaderText="sal" SortExpression="sal" />
                <asp:BoundField DataField="comm" HeaderText="comm" SortExpression="comm" />
                <asp:BoundField DataField="deptno" HeaderText="deptno" SortExpression="deptno" />
            </Fields>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
        </asp:DetailsView>
        <br />
        <br />
        <br />
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="empno" DataSourceID="SqlDataSource1" GridLines="Both">
            <EditItemTemplate>
                empno:
                <asp:Label ID="empnoLabel1" runat="server" Text='<%# Eval("empno") %>' />
                <br />
                ename:
                <asp:TextBox ID="enameTextBox" runat="server" Text='<%# Bind("ename") %>' />
                <br />
                job:
                <asp:TextBox ID="jobTextBox" runat="server" Text='<%# Bind("job") %>' />
                <br />
                mgr:
                <asp:TextBox ID="mgrTextBox" runat="server" Text='<%# Bind("mgr") %>' />
                <br />
                hiredate:
                <asp:TextBox ID="hiredateTextBox" runat="server" Text='<%# Bind("hiredate") %>' />
                <br />
                sal:
                <asp:TextBox ID="salTextBox" runat="server" Text='<%# Bind("sal") %>' />
                <br />
                comm:
                <asp:TextBox ID="commTextBox" runat="server" Text='<%# Bind("comm") %>' />
                <br />
                deptno:
                <asp:TextBox ID="deptnoTextBox" runat="server" Text='<%# Bind("deptno") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                ename:
                <asp:TextBox ID="enameTextBox" runat="server" Text='<%# Bind("ename") %>' />
                <br />
                job:
                <asp:TextBox ID="jobTextBox" runat="server" Text='<%# Bind("job") %>' />
                <br />
                mgr:
                <asp:TextBox ID="mgrTextBox" runat="server" Text='<%# Bind("mgr") %>' />
                <br />
                hiredate:
                <asp:TextBox ID="hiredateTextBox" runat="server" Text='<%# Bind("hiredate") %>' />
                <br />
                sal:
                <asp:TextBox ID="salTextBox" runat="server" Text='<%# Bind("sal") %>' />
                <br />
                comm:
                <asp:TextBox ID="commTextBox" runat="server" Text='<%# Bind("comm") %>' />
                <br />
                deptno:
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="dname" DataValueField="deptno" SelectedValue='<%# Bind("deptno") %>'>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:myConnectionString %>" SelectCommand="SELECT * FROM [dept]"></asp:SqlDataSource>
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                empno:
                <asp:Label ID="empnoLabel" runat="server" Text='<%# Eval("empno") %>' />
                <br />
                ename:
                <asp:Label ID="enameLabel" runat="server" Text='<%# Bind("ename") %>' />
                <br />
                job:
                <asp:Label ID="jobLabel" runat="server" Text='<%# Bind("job") %>' />
                <br />
                mgr:
                <asp:Label ID="mgrLabel" runat="server" Text='<%# Bind("mgr") %>' />
                <br />
                hiredate:
                <asp:Label ID="hiredateLabel" runat="server" Text='<%# Bind("hiredate") %>' />
                <br />
                sal:
                <asp:Label ID="salLabel" runat="server" Text='<%# Bind("sal") %>' />
                <br />
                comm:
                <asp:Label ID="commLabel" runat="server" Text='<%# Bind("comm") %>' />
                <br />
                deptno:
                <asp:Label ID="deptnoLabel" runat="server" Text='<%# Bind("deptno") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
        </asp:FormView>
        <br />
        <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataKeyField="empno" DataSourceID="SqlDataSource1" ForeColor="#333333" RepeatColumns="3" RepeatDirection="Horizontal">
            <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <ItemTemplate>
                empno:
                <asp:Label ID="empnoLabel" runat="server" Text='<%# Eval("empno") %>' />
                <br />
                ename:
                <asp:Label ID="enameLabel" runat="server" Text='<%# Eval("ename") %>' />
                <hr />
                <b>bla bla bla</b>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        </asp:DataList>
        <br />
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate><%# Eval("ename") %><br /></ItemTemplate>
            <HeaderTemplate><b><u>Liste des noms</u></b><br /></HeaderTemplate>
            <FooterTemplate>End</FooterTemplate>
            <AlternatingItemTemplate><%# Eval("ename") %><br /></AlternatingItemTemplate>
            <SeparatorTemplate><hr /></SeparatorTemplate>
        </asp:Repeater>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
