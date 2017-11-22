<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="luckydraw_main.aspx.cs" Inherits="TesRegistration.Module.LuckyDraw.luckydraw_main" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
        <asp:Table ID="Table3" HorizontalAlign="Center" runat="server">
            <asp:TableRow>
                <asp:TableCell><asp:Image ImageUrl="~/img/tes.png" runat="server"></asp:Image></asp:TableCell>
            </asp:TableRow>
        </asp:Table>

        <asp:Table runat="server" HorizontalAlign="Center">
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Center"><asp:Image ImageUrl="~/img/lucky.png" runat="server"></asp:Image></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <br />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="50%" HorizontalAlign="Center">
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/img/draw.png" OnClick="ImageButton1_Click" ImageAlign="Middle" />
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell><asp:ImageButton ID="ImageButton2" ImageUrl="~/img/back.png" PostBackUrl="~/Default.aspx" runat="server" /></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        
   
</asp:Content>
