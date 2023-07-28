<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ListViewControl_Example.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center; border: 2px solid red">
            <h2>ListView Control in ASP.NET (PART-64)</h2>
            <hr />
            <div style="align-content:center">
            <asp:ListView ID="ListView1" runat="server" OnPagePropertiesChanging="ListView1_PagePropertiesChanging">

                <ItemTemplate>
                    <table border="1">
                        <tr>
                            <th>Sid</th>
                            <th>Name</th>
                            <th>Class</th>
                            <th>Fees</th>
                            <th>Photo</th>
                            <th>Is-Active</th>
                        </tr>
                        <tr>
                            <td><%# Eval("Sid") %></td>
                            <td><%# Eval("Name") %></td>
                            <td><%# Eval("Class") %></td>
                            <td><%# Eval("Fees") %></td>
                            <td>
                                <asp:Image ID="imgPhoto" runat="server" Width="200" Height="200"
                                    ImageUrl='<%# "~/Images/" + Eval("PhotoName") %>' /></td>
                            <td align="center">
                                <asp:CheckBox ID="cbStatus" runat="server" Enabled="false"
                                    Checked='<%# Eval("Status") %>' /></td>

                        </tr>

                    </table>

                </ItemTemplate>

            </asp:ListView>
            <asp:DataPager ID="DataPager1" runat="server" PageSize="1" PagedControlID="ListView1">
                <Fields>
                   <%-- <asp:NumericPagerField ButtonCount="5" ButtonType="Link" />--%>
                    <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="false" ShowPreviousPageButton="true" ShowNextPageButton="false" />
                    <%--<asp:NumericPagerField ButtonType="Link" />--%>
                    <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="true" ShowLastPageButton="true" ShowPreviousPageButton="false" />
                    
                </Fields>
            </asp:DataPager>
                </div>
        </div>
    </form>
</body>
</html>
