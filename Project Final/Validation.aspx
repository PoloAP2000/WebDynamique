<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Validation.aspx.cs" Inherits="Validation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 189px;
        }
    </style>

    <script type="text/javascript">
        function checkEvenNumber(source, args)
        {
            if (args.Value % 2 == 0)
                args.IsValid = true;
            else
                args.IsValid = false;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">First Name</td>
                <td>
                    <asp:TextBox ID="txtFirstName" runat="server" placeholder="Fill the first name"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName" ErrorMessage="The first name is required" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Last Name</td>
                <td>
                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName" ErrorMessage="The last name is required" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Username</td>
                <td>
                    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername" ErrorMessage="The username is required" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password</td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="The password is required" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Confirm Password</td>
                <td>
                    <asp:TextBox ID="txtConfirmPassword" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="The confirm password is required" ForeColor="#CC0000" Display="Dynamic">*</asp:RequiredFieldValidator>
                &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="The passwords must be identical" ForeColor="#CC0000">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Institution</td>
                <td>
                    <asp:DropDownList ID="ddlInst" runat="server">
                        <asp:ListItem Value="X">[Inst]</asp:ListItem>
                        <asp:ListItem Value="26">INCI</asp:ListItem>
                        <asp:ListItem Value="20">ESIB</asp:ListItem>
                        <asp:ListItem Value="63">IGE</asp:ListItem>
                        <asp:ListItem Value="48">FS</asp:ListItem>
                    </asp:DropDownList>
&nbsp;<asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="ddlInst" ErrorMessage="Institution required" ForeColor="#CC0000" Operator="NotEqual" ValueToCompare="X">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Age</td>
                <td>
                    <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
&nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAge" ErrorMessage="The age must be between 18 and 100" ForeColor="#CC0000" MaximumValue="100" MinimumValue="18" Type="Integer">*</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Email</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" Width="128px"></asp:TextBox>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Wrong email format" ForeColor="#CC0000" ValidationExpression="\w+@(\w+\.)+\w{2,3}">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Even Number</td>
                <td>
                    <asp:TextBox ID="txtEvenNumber" runat="server"></asp:TextBox>
&nbsp;<asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="checkEvenNumber" ControlToValidate="txtEvenNumber" ErrorMessage="The number must be even" ForeColor="#CC0000" OnServerValidate="checkEvenNumber">*</asp:CustomValidator>
                </td>
            </tr>
        </table>
    
    </div>
        <asp:Button ID="Button1" runat="server" Text="Button" />
        <br />
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </form>
</body>
</html>
