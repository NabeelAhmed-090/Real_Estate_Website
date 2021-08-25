<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page_1.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="Bunyaad.User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        function test(object) {
            object.
        }
    </script>
    <title>User</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Master_1" runat="server">
    <section class="banner_section_User">
        <div id="Main_Div_User" class="container mt-1">
            <div class="row">
                <div class="col-md-4 col-sm-8 UserProfile content-center" style="background-color: rgba(8,8,8,0.8)">
                    <asp:Image ID="user_pic" onerror="this.src='Images/avatar_m.png'" runat="server" class="mt-2 text-white" Style="border-radius: 50%; height: 145px; width: 145px; overflow: hidden;" />
                </div>
                <div class="col-md-8 col-sm-8 UserProfile" style="background-color: rgba(8,8,8,0.8)">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-6 col-md-6">
                                <h1 class="font-weight-light mb-sm-4 text-white" style="font-variant: small-caps">
                                    <asp:Label ID="label1" runat="server" Text=""></asp:Label>
                                </h1>
                            </div>
                            <div class="col-sm-2"></div>

                        </div>
                        <div class="row">
                            <h6 class="font-weight-light mb-sm-4 text-white text-center" style="margin-left: 15px">
                                <asp:Label ID="label2" runat="server" Text="" Style="font-variant: small-caps"></asp:Label>
                            </h6>
                        </div>
                        <div class="row">
                            <div class="col-sm-2 col-md-2">
                                <h6 class="font-weight-light mb-sm-4 text-white ml-1">
                                    <asp:Label ID="label3" runat="server" Text="" Style="font-variant: small-caps"></asp:Label>
                                </h6>
                            </div>
                            <div class="col-sm-10 col-md-10">
                                <h6 class="font-weight-light mb-sm-4 text-white text-right" style="font-variant: small-caps">
                                    <asp:Label runat="server" ID="PU" Text=""></asp:Label>
                                </h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="navbar-header">
                <nav class="navbar navbar-expand-lg navbar-dark mt-3" style="background-color: rgb(32,32,32)">

                    <button runat="server" class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent_2_User" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div id="navbarSupportedContent_2_User" class="collapse navbar-collapse" style="margin-left: 60px;">
                        <ul class="navbar-nav mr-auto">
                            <asp:HyperLink runat="server" Style="float: left" class="navbar-brand mt-1" href="Complain.aspx">
                                <li class="nav-item active marginL">
                                    <button id="complain" runat="server" type="button" class="btn btn-danger btn-sm">
                                        Complain
                                    </button>
                                </li>
                            </asp:HyperLink>
                            <li runat="server" id="SubscriptionButton_1_User" class="nav-item active marginL">
                                <asp:LinkButton Style="height: 32px; margin-top: 9px;" runat="server" OnClick="displaySubscriptions_User" CssClass="btn btn-sm btn-dark ml-4">
                                      Subscriptions&nbsp<i class="fas fa-bell"></i></asp:LinkButton>
                            </li>
                            <li runat="server" id="ShortlistButton_1_User" class="nav-item active marginL">
                                <asp:LinkButton Style="height: 32px; margin-top: 9px;" runat="server" OnClick="displayShortlist_User" CssClass="btn btn-sm btn-dark ml-2">
                                        &nbsp Shortlisted&nbsp<i class="fa fa-list-alt" aria-hidden="true"></i>&nbsp</asp:LinkButton>
                            </li>
                            <li runat="server" id="NotificationButton_1_User" class="nav-item active marginL">
                                <asp:LinkButton Style="height: 32px; margin-top: 9px;" runat="server" OnClick="displayNotifications_User" CssClass="btn btn-sm btn-dark ml-2">
                                     Notifications&nbsp<i class="fas fa-bullhorn"></i></asp:LinkButton>
                            </li>
                            <li runat="server" id="propertyButton_1_User" class="nav-item active marginL" style="display: none;">
                                <asp:LinkButton ID="dis_prop" Style="height: 32px; margin-top: 9px; margin-left: 220px" runat="server" OnClick="displayProperties_User" CssClass="btn btn-sm btn-dark">
                                      Properties&nbsp<i class="fas fa-building"></i></asp:LinkButton>
                            </li>
                            <li runat="server" id="offerButton_1_User" class="nav-item active marginL" style="display: none">
                                <asp:LinkButton runat="server" ID="dis_offer" Style="height: 32px; margin-top: 9px; margin-left: 10px" OnClick="displayOffers_User" CssClass="btn btn-sm btn-dark">
                                      &nbsp Offers &nbsp<i class="fab fa-buffer"></i></asp:LinkButton>
                            </li>
                            <li runat="server" class="nav-item dropdown active" id="drop_user" style="float: right; margin-left: 217px">
                                <asp:HyperLink runat="server" class="nav-link dropdown-toggle" href="#" ID="navbarDropdown_1_User" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-gear" viewBox="0 0 16 16">
                                        <path
                                            d="M8 4.754a3.246 3.246 0 1 0 0 6.492 3.246 3.246 0 0 0 0-6.492zM5.754 8a2.246 2.246 0 1 1 4.492 0 2.246 2.246 0 0 1-4.492 0z" />
                                        <path
                                            d="M9.796 1.343c-.527-1.79-3.065-1.79-3.592 0l-.094.319a.873.873 0 0 1-1.255.52l-.292-.16c-1.64-.892-3.433.902-2.54 2.541l.159.292a.873.873 0 0 1-.52 1.255l-.319.094c-1.79.527-1.79 3.065 0 3.592l.319.094a.873.873 0 0 1 .52 1.255l-.16.292c-.892 1.64.901 3.434 2.541 2.54l.292-.159a.873.873 0 0 1 1.255.52l.094.319c.527 1.79 3.065 1.79 3.592 0l.094-.319a.873.873 0 0 1 1.255-.52l.292.16c1.64.893 3.434-.902 2.54-2.541l-.159-.292a.873.873 0 0 1 .52-1.255l.319-.094c1.79-.527 1.79-3.065 0-3.592l-.319-.094a.873.873 0 0 1-.52-1.255l.16-.292c.893-1.64-.902-3.433-2.541-2.54l-.292.159a.873.873 0 0 1-1.255-.52l-.094-.319zm-2.633.283c.246-.835 1.428-.835 1.674 0l.094.319a1.873 1.873 0 0 0 2.693 1.115l.291-.16c.764-.415 1.6.42 1.184 1.185l-.159.292a1.873 1.873 0 0 0 1.116 2.692l.318.094c.835.246.835 1.428 0 1.674l-.319.094a1.873 1.873 0 0 0-1.115 2.693l.16.291c.415.764-.42 1.6-1.185 1.184l-.291-.159a1.873 1.873 0 0 0-2.693 1.116l-.094.318c-.246.835-1.428.835-1.674 0l-.094-.319a1.873 1.873 0 0 0-2.692-1.115l-.292.16c-.764.415-1.6-.42-1.184-1.185l.159-.291A1.873 1.873 0 0 0 1.945 8.93l-.319-.094c-.835-.246-.835-1.428 0-1.674l.319-.094A1.873 1.873 0 0 0 3.06 4.377l-.16-.292c-.415-.764.42-1.6 1.185-1.184l.292.159a1.873 1.873 0 0 0 2.692-1.115l.094-.319z" />
                                    </svg>
                                </asp:HyperLink>
                                <div class="dropdown-menu" id="dropdown_user" style="float: right" aria-labelledby="dropdownMenu_1_User">
                                    <div class="container-fluid">
                                        <div class="row">
                                            <div class="col-8">
                                                <asp:HyperLink runat="server" href="Profile_Editing.aspx">
                                                    <button runat="server" id="Settings_1_User" class="dropdown-item mr-5" style="text-decoration: none;" type="button">
                                                        settings
                                                    </button>
                                                </asp:HyperLink>
                                            </div>
                                            <div class="col-4">
                                                <i class="fas fa-cogs mt-2"></i>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-8">
                                                <asp:Button OnClick="logout" runat="server" class="dropdown-item mr-5" type="submit" Text="logout"></asp:Button>
                                            </div>
                                            <div class="col-4">
                                                <i class="fas fa-sign-out-alt mt-2"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div runat="server" id="buyer" style="float: right">
                                    <asp:LinkButton type="button" runat="server" autopostback="false" Style="float: right; width: 100px" OnClick="switch_user_1" class="btn btn-warning btn-sm mt-2">
                                        Buyer <i class="fas fa-shopping-bag"></i>
                                    </asp:LinkButton>
                                </div>
                                <div runat="server" id="sell" style="display: none; float: right;">
                                    <asp:LinkButton type="button" runat="server" autopostback="false" Style="float: left; width: 100px;" OnClick="switch_user_2" class="btn btn-warning btn-sm mt-2">
                                        Seller <i class="fas fa-shopping-bag"></i>
                                    </asp:LinkButton>
                                </div>
                            </li>
                            <li>
                                <div>
                                    <asp:HyperLink Style="float: right" class="ml-2" ID="Search_Link_Property" runat="server" href="Search.aspx">
                                        <asp:HyperLink runat="server" ID="Shop_Button_Property" type="button" class="btn btn-success marginL mt-2 btn-sm" href="Search.aspx" Style="width: 100px !important; height: 30px !important; float: right"><span style="color:white"><i class="fas fa-shopping-cart mr-2"></i>&nbsp;Shop</span></asp:HyperLink>
                                    </asp:HyperLink>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
            <div id="Subscriptions_User" runat="server" class="custom1 div_users">
                <asp:LinkButton ID="subsc_button" Style="float: right" runat="server" OnClick="hideSubscriptions_User">
                    <i class="far fa-times-circle" style="color:white"></i></asp:LinkButton>
                <br />
                <h2 class="font-weight-bold mb-sm-4 mr-5 text-white" id="subs_title" style="font-variant: small-caps">Subscriptions
                </h2>
                <div id="div2_User" style="max-height: 80%; overflow: auto; margin-left: 45px">
                    <asp:GridView OnRowCommand="GridView1_RowCommand" ID="Subs_Table" AutoGenerateColumns="false" runat="server" CssClass="mydatagrid" PagerStyle-CssClass="pager"
                        HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="False">
                        <Columns>
                            <asp:BoundField DataField="Agent Name" HeaderText="Agent" />
                            <asp:BoundField DataField="City" HeaderText="City" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button runat="server" class="btn btn-success btn-sm" CommandName="view_button" ID="SanctionedButton" Text="View" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
            <div id="Notifications_User" runat="server" style="height: 400px; position: relative; float: left; width: 550px; display: none;" class="custom1 text-left">
                <asp:LinkButton ID="nots_button" Style="float: right" runat="server" OnClick="hideNotifications_User">
                    <i class="far fa-times-circle" style="color:white"></i></asp:LinkButton>
                <br />
                <h2 class="font-weight-bold mb-sm-4 text-white" style="position: relative; margin-left: 130px; font-variant: small-caps">Notifications
                </h2>
                <div style="max-height: 80%; overflow: auto; margin-left: 45px;">
                    <div class="col-12">
                        <asp:GridView OnRowCommand="GridView3_RowCommand" ID="nots_table" AutoGenerateColumns="false" runat="server" CssClass="mydatagrid" PagerStyle-CssClass="pager"
                            HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="False">
                            <Columns>
                                <asp:BoundField DataField="Notification Id" HeaderText="ID" />
                                <asp:BoundField DataField="Message" HeaderText="Message" />
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Button runat="server" class="btn btn-danger btn-sm" CommandName="view_button" ID="SanctionedButton" Text="Delete" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
            <div id="Shortlist_User" runat="server" style="height: 400px; position: relative; float: left; width: 550px; display: none;" class="custom1 text-left">
                <asp:LinkButton ID="short_button" Style="float: right" runat="server" OnClick="hideShortlist_User">
                    <i class="far fa-times-circle" style="color:white"></i></asp:LinkButton>
                <br />
                <h2 class="font-weight-bold mb-sm-4 text-white" style="position: relative; margin-left: 170px; font-variant: small-caps">Shortlist
                </h2>
                <div style="max-height: 80%; overflow: auto; margin-left: 45px;">
                    <div class="col-12">
                        <asp:GridView OnRowCommand="GridView2_RowCommand" ID="shortlist_table" AutoGenerateColumns="false" runat="server" CssClass="mydatagrid" PagerStyle-CssClass="pager"
                            HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="False">
                            <Columns>
                                <asp:BoundField DataField="Property_Id" HeaderText="ID" />
                                <asp:BoundField DataField="Owner_Name" HeaderText="Owner" />
                                <asp:BoundField DataField="Class" HeaderText="Class" />
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Button runat="server" class="btn btn-success btn-sm" CommandName="view_button" ID="SanctionedButton" Text="View" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
            <div id="Properties_User" runat="server" style="height: 400px; position: relative; float: left; width: 800px; display: none;" class="customPropUser text-left">
                <asp:LinkButton ID="prop_button" Style="float: right" runat="server" OnClick="hideProperties_User">
                    <i class="far fa-times-circle" style="color:white"></i></asp:LinkButton>
                <br />
                <h2 class="font-weight-bold sm-4 text-white" style="position: relative; margin-left: 250px; font-variant: small-caps">Property List
                </h2>
                <div id="Property_Table_Div_User" class="mt-4" style="max-height: 80%; overflow: auto; margin-left: 40px">
                    <div class="col-12">
                        <asp:GridView OnRowCommand="GridView4_RowCommand" ID="Proptable" AutoGenerateColumns="false" runat="server" CssClass="mydatagrid_1" PagerStyle-CssClass="pager_1"
                            HeaderStyle-CssClass="header_1" RowStyle-CssClass="rows_1" AllowPaging="False">
                            <Columns>
                                <asp:BoundField DataField="Property_Id" HeaderText="ID" />
                                <asp:BoundField DataField="City" HeaderText="City" />
                                <asp:BoundField DataField="Region" HeaderText="Region" />
                                <asp:BoundField DataField="Property_Address" HeaderText="Address" />
                                <asp:BoundField DataField="Square_Feet" HeaderText="Square Feet" />
                                <asp:BoundField DataField="Class" HeaderText="Class" />
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Button runat="server" class="btn btn-success btn-sm" CommandName="view_button" ID="SanctionedButton" Text="Sell" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
            <div id="Offer_User" runat="server" style="height: 400px; position: relative; float: left; width: 550px; display: none" class="custom1 text-left">
                <asp:LinkButton ID="LinkButton1" Style="float: right" runat="server" OnClick="hideOffers_User">
                    <i class="far fa-times-circle" style="color:white"></i></asp:LinkButton>
                <br />
                <h2 class="font-weight-bold mb-sm-4 text-white" style="position: relative; margin-left: 190px; font-variant: small-caps">Offers
                </h2>
                <div style="max-height: 80%; overflow: auto; margin-left: 45px;">
                    <div class="col-12">
                        <asp:GridView OnRowCommand="Offer_RowCommand" ID="Offer_table" AutoGenerateColumns="false" runat="server" CssClass="mydatagrid" PagerStyle-CssClass="pager"
                            HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="False">
                            <Columns>
                                <asp:BoundField DataField="Buyer_Name" HeaderText="Buyer" />
                                <asp:BoundField DataField="Property_Id" HeaderText="ID" />
                                <asp:BoundField DataField="Price" HeaderText="Price" />
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Button runat="server" class="btn btn-success btn-sm" data-inline="true" CommandName="Accept" ID="Button1" Text="Accept" />
                                        <asp:Button runat="server" class="btn btn-danger btn-sm" data-inline="true" CommandName="Decline" ID="SanctionedButton" Text="Decline" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
            <div id="Sale_User" runat="server" style="height: 330px; position: relative;font-variant:small-caps; float: left; display: none" class="Property_User text-left">
                <asp:LinkButton ID="sale_button" Style="float: right" runat="server" OnClick="hideSale_User">
                    <i class="far fa-times-circle" style="color:white"></i></asp:LinkButton>
                <br />
                <h2 class="font-weight-bold mb-sm-4 text-white" style="margin-top: 20px; font-variant: small-caps">Sell
                </h2>
                <div class="form-group">
                    <asp:Label runat="server" style="margin-top:70px" for="Base_Price_1_User" class="text-white">Enter price</asp:Label>
                    <asp:TextBox runat="server" type="number" class="form-control mt-2" ID="Base_Price_1_User" aria-describedby="Base_Price_1_User" placeholder="base price" />
                </div>
                <br />
                <br />
                <asp:Button runat="server" type="submit" OnClick="putOnSale" style="margin-left:240px;" class="btn btn-primary" Text="Submit"></asp:Button>
            </div>
        </div>
    </section>
</asp:Content>
