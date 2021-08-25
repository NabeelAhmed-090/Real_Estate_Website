<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page_2.Master" AutoEventWireup="true" CodeBehind="visitProfile.aspx.cs" Inherits="Bunyaad.View_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>View Profile</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Master_1" runat="server">
    <section class="banner_section_Visit_Profile">
        <div class="container" style="height: 500px;">
            <div class="row">
                <div class="col-3" style="border: 1px solid white; width: 60%; margin-top: 20px; background-color: rgba(0,0,0,0.7); height: 460px; border-radius: 35px;">
                    <div class="row grow">
                        <asp:Image ID="userPic" class="mt-3" Width=" 150" Height="150" src="Images/avatar_m.png" Style="border-radius: 50%; display: inline; margin-left: auto; margin-right: auto;" runat="server" />
                    </div>
                    <h4 class="font-weight-light mb-sm-4 text-white text-center" style="margin-top: 25px;">
                        <asp:Label ID="uname" class="text-center" Style="font-variant: small-caps; font-weight: bold; border-bottom: 1px solid white;" runat="server" Text=""></asp:Label>
                    </h4>
                    <h6 class="font-weight-light mb-sm-4 text-white text-center" style="margin-top: 25px;">
                        <asp:Label ID="fname" Style="font-variant: small-caps; font-weight: bold; border-bottom: 1px solid white;" runat="server" Text=""></asp:Label>
                    </h6>
                    <h6 class="font-weight-light mb-sm-4 text-white text-center">
                        <asp:Label ID="city" Style="font-variant: small-caps; font-weight: bold; border-bottom: 1px solid white;" runat="server" Text=""></asp:Label>
                    </h6>
                    <h6 class="font-weight-light mb-sm-4 text-white text-center">
                        <asp:Label ID="Property_count" Style="font-variant: small-caps; font-weight: bold; border-bottom: 1px solid white;" runat="server" Text=""></asp:Label>
                    </h6>
                    <asp:LinkButton runat="server" ID="subButton" OnClick="subscriber" Style="margin-left: 220px; margin-top: 30px; border-radius: 35px;" class="btn btn-outline-danger"><i class="fas fa-bell"></i></asp:LinkButton>
                </div>
                <div class="col=6">
                    <div runat="server" ID="rate_div" style="width: 600px; margin-left: 90px">
                        <nav class="navbar navbar-expand-lg navbar navbar-dark" style="margin-left: 80px; margin-top: 20px; opacity: 0.9; background-color: black">
                            <div class="collapse navbar-collapse mt-3" id="navbarSupportedContent_ViewProfile">
                                <ul class="navbar-nav mr-auto">
                                    <li>
                                        <asp:LinkButton runat="server" OnClick="rate" for="Rating_ViewProfile()" class="btn btn-md btn-outline-dark text-white mb-3 ml-2">
                                            Rate &nbsp
                                                 <svg class="mb-1 bi bi-star-fill" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="yellow" viewBox="0 0 16 16">
                                            <path
                                                d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
                                                </svg>
                                        </asp:LinkButton>
                                        <%--<div>--%>
                                            <label class="mb-1" style="margin-left:130px">
                                                <asp:RadioButton runat="server" ID="butt1" name="test" OnChange="javascript:testFunction()" />
                                                <span style="font-size: 1.5em;color: yellow">
                                                    <i runat="server" class="far fa-star" id="starU1"></i>
                                                    <i runat="server" class="fas fa-star" id="starV1" style="display: none"></i>
                                                </span>
                                            </label>
                                            <label class="mb-1">
                                                <asp:RadioButton runat="server" ID="butt2" name="test" OnChange="javascript:testFunction()" />
                                                <span style="font-size: 1.5em;color: yellow">
                                                    <i runat="server" class="far fa-star" id="starU2"></i>
                                                    <i runat="server" class="fas fa-star" id="starV2" style="display: none"></i>
                                                </span>
                                            </label>
                                            <label class="mb-1">
                                                <asp:RadioButton runat="server" ID="butt3" name="test" OnChange="javascript:testFunction()" />
                                                <span style="font-size: 1.5em;color: yellow">
                                                    <i runat="server" class="far fa-star" id="starU3"></i>
                                                    <i runat="server" class="fas fa-star" id="starV3" style="display: none"></i>
                                                </span>
                                            </label>
                                            <label class="mb-1">
                                                <asp:RadioButton runat="server" ID="butt4" name="test" OnChange="javascript:testFunction()" />
                                                <span style="font-size: 1.5em;color: yellow">
                                                    <i runat="server" class="far fa-star" id="starU4"></i>
                                                    <i runat="server" class="fas fa-star" id="starV4" style="display: none"></i>
                                                </span>
                                            </label>
                                            <label class="mb-1">
                                                <asp:RadioButton runat="server" ID="butt5" name="test" OnChange="javascript:testFunction()" />
                                                <span style="font-size: 1.5em;color: yellow">
                                                    <i runat="server" class="far fa-star" id="starU5"></i>
                                                    <i runat="server" class="fas fa-star" id="starV5" style="display: none"></i>
                                                </span>
                                            </label>
                                        <%--</div>--%>
                                        <br />
                                        <%--<h4 class="text-white" style="margin-left: 133px"><span style="color: white"><i class="fas fa-angry"></i></span><span style="color: white"><i class="fas fa-grin-stars" style="margin-left: 267px"></i></span></h4>--%>
                                    </li>
                                </ul>
                            </div>
                        </nav>
                    </div>

                    <div style="width: 800px; margin-left: 20px; margin-top: 50px; height: 600px; position: relative;">
                        <div style="max-height: 80%; overflow: auto;">
                            <asp:GridView OnRowCommand="Select_Property" ID="view_profile_table" AutoGenerateColumns="false" runat="server" CssClass="mydatagrid_2" PagerStyle-CssClass="pager_2"
                                HeaderStyle-CssClass="header_2" RowStyle-CssClass="rows_2" AllowPaging="False" Style="margin-left: 70px; margin-top: 20px" class="text-white">
                                <Columns>
                                    <asp:BoundField DataField="Property_Id" HeaderText="ID" />
                                    <asp:BoundField DataField="Owner_Name" HeaderText ="Owner" />
                                    <asp:BoundField DataField="City" HeaderText="CITY" />
                                    <asp:BoundField DataField="Region" HeaderText="REGION" />
                                    <asp:BoundField DataField="Property_Address" HeaderText="ADDRESS" />
                                    <asp:BoundField DataField="Square_Feet" HeaderText="SQUARE FEET" />
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:Button runat="server" class="btn btn-success btn-sm" CommandName="view_Property" ID="SanctionedButton" Text="View" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
