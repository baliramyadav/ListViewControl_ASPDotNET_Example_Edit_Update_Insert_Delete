<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="ListViewControl_Example.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ListView Edit Update Delete and Insert</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="Custid" InsertItemPosition="LastItem" OnItemEditing="ListView1_ItemEditing"
                 OnItemCanceling="ListView1_ItemCanceling" OnItemInserting="ListView1_ItemInserting" OnItemUpdating="ListView1_ItemUpdating" OnItemDeleting="ListView1_ItemDeleting" >
                <LayoutTemplate>
                    <table border="1" align="center">
                        <caption>Customer Details</caption>
                        <tr>
                            <th>Custid</th>
                            <th>Name</th>
                            <th>Balance</th>
                            <th>City</th>
                            <th>Is-Active</th>
                            <th>Actions</th>
                        </tr>
                        <asp:PlaceHolder ID="ItemPlaceHolder" runat="server" />
                    </table>

                </LayoutTemplate>

                <ItemTemplate>
                    <tr>
                        <td align="center"><%# Eval("Custid") %></td>
                        <td><%# Eval("Name") %></td>
                        <td align="right"><%# Eval("Balance") %></td>
                        <td><%# Eval("City") %></td>
                        <td align="center">
                            <asp:CheckBox ID="cbStatus" runat="server" Enabled="false"
                                Checked='<%# Eval("Status") %>' /></td>
                        <td align="center">
                            <asp:LinkButton ID="btnEdit" runat="server" Text="Edit" CommandName="Edit" />
                            <asp:LinkButton ID="LinkDelete" runat="server" Text="Delete" CommandName="Delete"
                                OnClientClick="return confirm('Are you sure of deleting the record?')" />
                        </td>
                    </tr>

                </ItemTemplate>

                <InsertItemTemplate>
                    <tr style="background-color: cornflowerblue">
                        <td></td>
                        <td>
                            <asp:TextBox ID="txtName" runat="server" /></td>
                        <td>
                            <asp:TextBox ID="txtBalance" runat="server" /></td>
                        <td>
                            <asp:TextBox ID="txtCity" runat="server" /></td>
                        <td align="center">
                            <asp:CheckBox ID="cbStatus" runat="server" /></td>
                        <td align="center">
                            <asp:LinkButton ID="btnInsert" runat="server" Text="Insert" CommandName="Insert" />
                        </td>
                    </tr>

                </InsertItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color: aquamarine">
                        <td><%# Eval("Custid") %></td>
                        <td>
                            <asp:TextBox ID="txtName" runat="server" Text='<%# Eval("Name") %>' /></td>
                        <td>
                            <asp:TextBox ID="txtBalance" runat="server" Text='<%# Eval("Balance") %>' /></td>
                        <td>
                            <asp:TextBox ID="txtCity" runat="server" Text='<%# Eval("City") %>' /></td>
                        <td align="center">
                            <asp:CheckBox ID="cbStatus" runat="server" Enabled="false"
                                Checked='<%# Eval("Status") %>' /></td>
                        <td align="center">
                            <asp:LinkButton ID="btnUpdate" runat="server" Text="Update" CommandName="Update" />
                            <asp:LinkButton ID="btnCancel" runat="server" Text="Cancel" CommandName="Cancel" />
                        </td>
                    </tr>

                </EditItemTemplate>

            </asp:ListView>
        </div>
    </form>
</body>
</html>
