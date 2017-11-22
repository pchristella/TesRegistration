<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site3.Master" CodeBehind="luckydraw_result_staff.aspx.cs" Inherits="TesRegistration.Module.LuckyDraw.luckydraw_result_staff" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>    
        <asp:Table ID="Table3" HorizontalAlign="Center" runat="server">
            <asp:TableRow>
                <asp:TableCell><asp:Image ImageUrl="~/img/tes.png" runat="server"></asp:Image></asp:TableCell>
            </asp:TableRow>
        </asp:Table>

        <div style="text-align:center">
            <asp:Label align="center" runat="server" Text="******THE WINNER IS******" Font-Size="30px"></asp:Label>
        </div>
        <br />
        <asp:Table runat="server" HorizontalAlign="Center" CellSpacing="30" >
            <asp:TableRow CssClass="lbl_1">
                <asp:TableCell HorizontalAlign="Center">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>  
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow CssClass="lbl_1" HorizontalAlign="Center">
                <asp:TableCell HorizontalAlign="Center">
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>

             <asp:TableRow CssClass="lbl_1" HorizontalAlign="Center">
                <asp:TableCell HorizontalAlign="Center">
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell><asp:Image ImageUrl="~/img/_con.png" runat="server"></asp:Image></asp:TableCell>
            </asp:TableRow>
        </asp:Table>

        <asp:Table ID="Table1" HorizontalAlign="Center" runat="server">
            <asp:TableRow>
                <asp:TableCell><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/img/back.png" PostBackUrl="~/Default.aspx" ImageAlign="Left" /></asp:TableCell>
                <asp:TableCell></asp:TableCell>
                <asp:TableCell></asp:TableCell>
                <asp:TableCell><asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/img/draw.png" OnClick="ImageButton2_Click"/></asp:TableCell>
            </asp:TableRow>
        </asp:Table>

    </div>
</asp:Content>
