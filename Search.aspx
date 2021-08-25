<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page_2.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="Bunyaad.Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Master_1" runat="server">
    <section class="banner_section_Search">
        <div class="container mb-1">
            <div class="row">
                <div class="col-3 mt-5 text-center text-white" style="height: 600px; background-color: rgb(16,16,16);">
                    <div class="row">
                        <div class="col-12 mt-2">
                            <h2 class="font-weight-bold" style="border-bottom: 1px solid white">Search</h2>
                        </div>
                    </div>
                    <div class="row mt-1">
                        <div class="col-1"></div>
                        <div class="col-10">
                            <asp:Label runat="server" for="User_name_Search">User name</asp:Label>
                            <asp:TextBox runat="server" class="form-control" id="User_name_Search" type="text" placeholder="@ahmednabeel" />
                        </div>
                        <div class="col-1"></div>
                    </div>
                    <div class="row mt-1">
                        <div class="col-1"></div>
                        <div class="col-10">
                            <asp:Label runat="server" for="Sq_Feet_Search">Name</asp:Label>
                            <asp:TextBox runat="server" class="form-control" id="name" type="text" placeholder="nabeel ahmed" />
                        </div>
                        <div class="col-1"></div>
                    </div>
                    <div class="row mt-1">
                        <div class="col-1"></div>
                        <div class="col-10">
                            <asp:Label runat="server" for="Price_Seach">Price</asp:Label>
                            <asp:TextBox runat="server" class="form-control" id="Price_Search" type="number" placeholder="1250000" />
                        </div>
                        <div class="col-1"></div>
                    </div>
                    <div class="row mt-1">
                        <div class="col-1"></div>
                        <div class="col-10">
                            <asp:Label runat="server" for="City_Search">City</asp:Label>
                            <asp:TextBox runat="server" class="form-control" id="City_Search" type="text" placeholder="Lahore" />
                        </div>
                        <div class="col-1"></div>
                    </div>
                    <div class="row mt-1">
                        <div class="col-1"></div>
                        <div class="col-10">
                            <asp:Label runat="server" for="Sq_Feet_Search">Sq Feet</asp:Label>
                            <asp:TextBox runat="server" class="form-control" id="Sq_Feet_Search" type="number" placeholder="5000" />
                        </div>
                        <div class="col-1"></div>
                    </div>
                    <div class="row mt-1">
                         <div class="col-1"></div>
                        <div class="col-10">
                            <asp:Label runat="server" for="Dropbox_1_Search">Type</asp:Label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <asp:Label ID="Dropbox_1_Search" class="input-group-text" runat="server" Text="Options"></asp:Label>
                                </div>
                                <asp:DropDownList ID="Options_Search" class="custom-select" runat="server">
                                    <asp:ListItem Text="Commercial" Value="1" Selected="True"></asp:ListItem>
                                    <asp:ListItem Text="Residential" Value="0"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                     <div class="col-1"></div>
                    <div class="row mt-5">
                        <div class="col-6">
                            <asp:Button runat="server" type="button" class="btn btn-success" Text="Submit" OnClick="Button_Press"></asp:Button>
                        </div>
                        <div class="col-6">
                            <button type="submit" class="btn btn-danger" onclick="javascipt:clearValues_Search() ">Reset</button>
                        </div>
                    </div>
                </div>
                <div runat="server" class="col-9 mt-5" style="height: 600px; position: relative; background-color: rgba(16,16,16,0.8);">
                    <div runat="server" id="superDIV" style="max-height: 80%; overflow: auto;"></div>
                    <%--<asp:Button ID="testing" runat="server" style="display:none" OnClick="check_user" Text="View" class="d-none btn btn-success mb-1 mr-1" />--%>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
