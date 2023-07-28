<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="ListViewControl_Example.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListView ID="ListView1" runat="server">
                <LayoutTemplate>
                    <table border="1" align="center">
                        <caption>Student Details</caption>
                        <tr>
                            <th>Sid</th>
                            <th>Name</th>
                            <th>Class</th>
                            <th>Fees</th>
                            <th>Photo</th>
                            <th>Is-Active</th>
                        </tr>
                        <asp:PlaceHolder ID="ItemPlaceHolder" runat="server" />
                        <tr>
                            <td colspan="6" align="center">End of table data.</td>
                        </tr>
                    </table>
                </LayoutTemplate>

                <ItemTemplate>
                    <tr>
                        <td align="center"><%# Eval("Sid") %></td>
                        <td ><%# Eval("Name") %></td>
                        <td align="center"><%# Eval("Class") %></td>
                        <td align="right"><%# Eval("Fees") %></td>
                        <td>
                            <asp:Image ID="imgPhoto" runat="server" Width="200" Height="200"
                                ImageUrl='<%# "~/Images/" + Eval("PhotoName") %>' /></td>
                        <td align="center">
                            <asp:CheckBox ID="cbStatus" runat="server" Enabled="false"
                                Checked='<%# Eval("Status") %>' /></td>

                    </tr>
                </ItemTemplate>

            </asp:ListView>
        </div>
    </form>
</body>
</html>
