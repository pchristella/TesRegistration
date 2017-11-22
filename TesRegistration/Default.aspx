<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="TesRegistration._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div>
        <asp:Table ID="Table3" HorizontalAlign="Center" runat="server">
            <asp:TableRow>
                <asp:TableCell><asp:Image ImageUrl="~/img/tes.png" runat="server"></asp:Image></asp:TableCell>
            </asp:TableRow>
        </asp:Table>

        <div>
            <asp:Table ID="Table1" runat="server" HorizontalAlign="Center" Width="60%">
                <asp:TableRow>
                    <asp:TableCell><asp:TextBox ID="txt_id" runat="server" CssClass="txtbox" placeholder="Staff ID" Font-Bold="True" Font-Size="35px"></asp:TextBox></asp:TableCell>
                    <asp:TableCell><asp:ImageButton ID="ImageButton1" OnClick="ImageButton1_Click" ImageUrl="~/img/check.png" runat="server" /></asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell columnspan="2">
                        <div align="center"><asp:Label align="center" runat="server" ID="lbl_error" Font-Size="30px" Text="Label" Visible="False"></asp:Label></div>
                        </asp:TableCell>
                </asp:TableRow>
            </asp:Table>

            <br /> 

    <asp:Table ID="Table2" HorizontalAlign="Center" runat="server">  
        <asp:TableRow>
                <asp:TableCell CssClass="lbl_1" Width="20%" >Name:&nbsp;&nbsp;</asp:TableCell>
                <asp:TableCell Width="80%" ColumnSpan="3"><asp:TextBox ID="txt_name" runat="server" Enabled="false" CssClass="txtbox" Font-Size="35px"></asp:TextBox></asp:TableCell>    
        </asp:TableRow>
        
        <asp:TableRow>
            <asp:TableCell></asp:TableCell>
            <asp:TableCell></asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell CssClass="lbl_1" Width="20%">Section:&nbsp;&nbsp;</asp:TableCell>
            <asp:TableCell CssClass="lbl_1" Width="80%"><asp:TextBox ID="txt_sec" runat="server" Enabled="False" Font-Size="35px"></asp:TextBox></asp:TableCell>
            <asp:TableCell CssClass="lbl_1" Width="20%">Seat:&nbsp;&nbsp;</asp:TableCell>
            <asp:TableCell CssClass="lbl_1" Width="80%"><asp:TextBox ID="txt_seat" runat="server" Enabled="False" Height="55px" Font-Size="35px"></asp:TextBox></asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell></asp:TableCell>
            <asp:TableCell><asp:ImageButton ID="ImageButton3" OnClick="ImageButton3_Click" ImageAlign="left" ImageUrl="~/img/luckydraw.png" runat="server" /></asp:TableCell>
            <asp:TableCell HorizontalAlign="Right"><asp:ImageButton ID="ImageButton2" OnClick="ImageButton2_Click" ImageUrl="~/img/checkin.png" runat="server" /></asp:TableCell>
            <asp:TableCell></asp:TableCell>
        </asp:TableRow>
       </asp:Table>
        </div>
        <div align="right"><asp:LinkButton OnClick="reset_Click" runat="server">...</asp:LinkButton></div>
        
    </div>
</asp:Content>