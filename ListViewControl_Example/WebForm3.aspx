<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="ListViewControl_Example.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ListView GroupTemplate</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListView ID="ListView1" runat="server">
                <LayoutTemplate>
                    <table>
                        <caption>Student Details</caption>
                        <asp:PlaceHolder ID="GroupPlaceHolder" runat="server"></asp:PlaceHolder>
                    </table>
                </LayoutTemplate>
                <GroupTemplate>
                    <tr>
                        <asp:PlaceHolder ID="ItemPlaceHolder" runat="server"></asp:PlaceHolder>
                    </tr>
                </GroupTemplate>
                <ItemTemplate>
                    <td>
                        <table border="1" width="100%">
                            <tr>
                                <td rowspan="5">
                                    <asp:Image ID="imgPhoto" runat="server" Width="220" Height="200"
                                        ImageUrl='<%# "~/Images/" + Eval("PhotoName") %>' /></td>
                                <td>SID: <%# Eval("Sid") %></td>
                            </tr>
                            <tr>
                                <td>Name: <%# Eval("Name") %></td>
                            </tr>
                            <tr>
                                <td>Class: <%# Eval("Class") %></td>
                            </tr>
                            <tr>
                                <td>Fees: <%# Eval("Fees") %></td>
                            </tr>
                            <tr>
                                <td>Is-Active: <%# Eval("Status") %></td>
                            </tr>

                        </table>
                    </td>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </form>
</body>
</html>
