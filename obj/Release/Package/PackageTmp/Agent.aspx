<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page_1.Master" AutoEventWireup="true" CodeBehind="Agent.aspx.cs" Inherits="Bunyaad.Agent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Master_1" runat="server">
    <section class="banner_section_Agent">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-8 UserProfile content-center" style="background-color: rgba(8,8,8,0.8)">
                    <asp:Image ID="aegnt_pic" onerror="this.src='Images/avatar_m.png'" runat="server" class="mt-2" Style="border-radius: 50%; height: 145px; width: 145px; overflow: hidden;" />
                </div>
                <div class="col-8 UserProfile" style="background-color: rgba(8,8,8,0.8)">
                    <div class="container">
                        <div class="row">
                            <div class="col-6">
                                <h1 class="font-weight-light mb-sm-4 text-white" style="font-variant: small-caps">
                                    <asp:Label runat="server" ID="label1"></asp:Label>
                                </h1>
                            </div>
                            <div class="col-6 mt-3">
                                <h6 class="font-weight-bold mb-sm-4 text-white text-right" style="margin-top: 2px;">
                                    <svg class="mb-1" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="yellow" class="bi bi-star-fill" viewBox="0 0 16 16">
                                        <path
                                            d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
                                    </svg>
                                    <asp:Label runat="server" ID="rating" Text="" class="text-white"></asp:Label>
                                </h6>
                            </div>
                        </div>
                        <div class="row">
                            <div>
                                <h6 class="font-weight-light mb-sm-4 text-white text-center" style="margin-left: 15px; font-variant: small-caps">
                                    <asp:Label runat="server" ID="label2"></asp:Label>
                                </h6>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-2">
                                <h6 class="font-weight-light mb-sm-4 text-white ml-1" style="font-variant: small-caps">
                                    <asp:Label runat="server" ID="label3"></asp:Label>
                                </h6>
                            </div>
                            <div class="col-10">
                                <h6 class="font-weight-light mb-sm-4 text-white text-right" style="font-variant: small-caps">
                                    <asp:Label runat="server" ID="PU" Text=""></asp:Label>
                                </h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <nav class="navbar navbar-expand-lg navbar-dark mt-3 text-black" style="background-color: rgb(32,32,32); color: black">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent_Agent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" style="margin-left: 70px;" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li runat="server" id="NotificationButton_1_agent" class="nav-item active marginL">
                            <asp:LinkButton Style="height: 32px; margin-top: 5px; margin-left: 10px; width: 120px !important" runat="server" OnClick="DisplayNotification" CssClass="btn btn-sm btn-dark ml-2">
                                     Notifications&nbsp<i class="fas fa-bullhorn"></i></asp:LinkButton>
                        </li>
                        <li runat="server" id="ShortlistButton_1_Agent" class="nav-item active marginL">
                            <asp:LinkButton Style="height: 32px; margin-top: 5px; margin-left: 10px; width: 120px !important" runat="server" OnClick="displayShortlist_Agent" CssClass="btn btn-sm btn-dark ml-2">
                                        &nbsp Shortlisted&nbsp<i class="fa fa-list-alt" aria-hidden="true"></i>&nbsp</asp:LinkButton>
                        </li>
                        <li runat="server" id="propertyButton_1_agent" class="nav-item active marginL">
                            <asp:LinkButton ID="dis_prop" Style="height: 32px; margin-top: 5px; margin-left: 10px; width: 120px !important" runat="server" OnClick="DisplayProperties" CssClass="btn btn-sm btn-dark ml-2">
                                      Properties&nbsp<i class="fas fa-building"></i></asp:LinkButton>
                        </li>
                        <li runat="server" id="offerButton_1_agent" class="nav-item active marginL">
                            <asp:LinkButton runat="server" ID="dis_offer" Style="height: 32px; margin-top: 5px; margin-left: 10px; width: 120px !important" OnClick="displayOffers_User" CssClass="btn btn-sm btn-dark">
                                      &nbsp Offers &nbsp<i class="fab fa-buffer"></i></asp:LinkButton>
                        </li>
                        <li runat="server" id="subs_button" class="nav-item active marginL">
                            <asp:LinkButton runat="server" OnClick="displaySubscription" ID="subscribe_button" Style="height: 32px; margin-top: 5px; margin-left: 10px; width: 120px !important" CssClass="btn btn-sm btn-dark">
                                      Subscriptions&nbsp<i class="fas fa-bell"></i></asp:LinkButton>
                        </li>
                        <li class="nav-item dropdown active" style="margin-left: 160px;">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown_Agent" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-gear" viewBox="0 0 16 16">
                                    <path
                                        d="M8 4.754a3.246 3.246 0 1 0 0 6.492 3.246 3.246 0 0 0 0-6.492zM5.754 8a2.246 2.246 0 1 1 4.492 0 2.246 2.246 0 0 1-4.492 0z" />
                                    <path
                                        d="M9.796 1.343c-.527-1.79-3.065-1.79-3.592 0l-.094.319a.873.873 0 0 1-1.255.52l-.292-.16c-1.64-.892-3.433.902-2.54 2.541l.159.292a.873.873 0 0 1-.52 1.255l-.319.094c-1.79.527-1.79 3.065 0 3.592l.319.094a.873.873 0 0 1 .52 1.255l-.16.292c-.892 1.64.901 3.434 2.541 2.54l.292-.159a.873.873 0 0 1 1.255.52l.094.319c.527 1.79 3.065 1.79 3.592 0l.094-.319a.873.873 0 0 1 1.255-.52l.292.16c1.64.893 3.434-.902 2.54-2.541l-.159-.292a.873.873 0 0 1 .52-1.255l.319-.094c1.79-.527 1.79-3.065 0-3.592l-.319-.094a.873.873 0 0 1-.52-1.255l.16-.292c.893-1.64-.902-3.433-2.541-2.54l-.292.159a.873.873 0 0 1-1.255-.52l-.094-.319zm-2.633.283c.246-.835 1.428-.835 1.674 0l.094.319a1.873 1.873 0 0 0 2.693 1.115l.291-.16c.764-.415 1.6.42 1.184 1.185l-.159.292a1.873 1.873 0 0 0 1.116 2.692l.318.094c.835.246.835 1.428 0 1.674l-.319.094a1.873 1.873 0 0 0-1.115 2.693l.16.291c.415.764-.42 1.6-1.185 1.184l-.291-.159a1.873 1.873 0 0 0-2.693 1.116l-.094.318c-.246.835-1.428.835-1.674 0l-.094-.319a1.873 1.873 0 0 0-2.692-1.115l-.292.16c-.764.415-1.6-.42-1.184-1.185l.159-.291A1.873 1.873 0 0 0 1.945 8.93l-.319-.094c-.835-.246-.835-1.428 0-1.674l.319-.094A1.873 1.873 0 0 0 3.06 4.377l-.16-.292c-.415-.764.42-1.6 1.185-1.184l.292.159a1.873 1.873 0 0 0 2.692-1.115l.094-.319z" />
                                </svg>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenu_1_Agent">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-8">
                                            <asp:HyperLink runat="server" href="Profile_Editing.aspx">
                                                <button runat="server" id="Settings_1_Agent" class="dropdown-item mr-5" style="text-decoration: none;" type="button">
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
                    </ul>
                    <asp:HyperLink runat="server" ID="serchlink_Agent" href="Search.aspx">
                        <button runat="server" type="button" id="shop_Agent" class="btn btn-success btn-sm" style="width: 100px !important; height: 30px !important;"><i class="fas fa-shopping-cart mr-2"><span>&nbsp; &nbsp; Shop</span></i></button>
                    </asp:HyperLink>
                </div>
            </nav>
            <div runat="server" id="Notifications_Agent" style="height: 400px; position: relative; float: left; width: 550px; display: none;" class="custom2 text-left">
                <asp:LinkButton ID="nots_button" Style="float: right" runat="server" OnClick="hideNotifications">
                    <i class="far fa-times-circle" style="color:white"></i></asp:LinkButton>
                <h2 class="font-weight-bold mb-sm-4 text-white ml-2" style="position: relative; text-align: center;">Notifications
                </h2>
                <div style="max-height: 80%; overflow: auto; margin-left: 45px;">
                    <div class="col-12">
                        <asp:GridView OnRowCommand="GridView1_RowCommand" ID="not_Table" AutoGenerateColumns="false" runat="server" CssClass="mydatagrid" PagerStyle-CssClass="pager"
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
            <div id="Shortlist_Agent" runat="server" style="height: 400px; position: relative; float: left; width: 550px; display: none;" class="custom2 text-left">
                <asp:LinkButton ID="short_button" Style="float: right" runat="server" OnClick="hideShortlist_Agent">
                    <i class="far fa-times-circle" style="color:white"></i></asp:LinkButton>
                <br />
                <h2 class="font-weight-bold mb-sm-4 text-white" style="position: relative; margin-left: 170px;">Shortlist
                </h2>
                <div style="max-height: 80%; overflow: auto; margin-left: 45px;">
                    <div class="col-12">
                        <asp:GridView OnRowCommand="GridView2_RowCommand" ID="shortlist_table_Agent" AutoGenerateColumns="false" runat="server" CssClass="mydatagrid" PagerStyle-CssClass="pager"
                            HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="False">
                            <Columns>
                                <asp:BoundField DataField="Property_Id" HeaderText="ID" />
                                <asp:BoundField DataField="Owner_Name" HeaderText="Owner" />
                                <asp:BoundField DataField="Class" HeaderText="Class" />
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Button runat="server" class="btn btn-success btn-sm" CommandName="view_button" ID="SanctionedButton2" Text="View" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
            <div runat="server" id="Subscriptions_Agent" style="height: 400px; position: relative; float: left; width: 550px; display: none;" class="custom2 text-left">
                <asp:LinkButton ID="SubsDivButton" Style="float: right" runat="server" OnClick="hideSubscription_Agents">
                    <i class="far fa-times-circle" style="color:white"></i></asp:LinkButton>
                <br />
                <h2 class="font-weight-bold mb-sm-4 text-white" style="position: relative; margin-left: 132px;">Subscriptions
                </h2>
                <div style="max-height: 80%; overflow: auto; margin-left: 45px;">
                    <div class="col-12">
                        <asp:GridView OnRowCommand="SubscriptionGridView" ID="SubsTable" AutoGenerateColumns="false" runat="server" CssClass="mydatagrid" PagerStyle-CssClass="pager"
                            HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="False">
                            <Columns>
                                <asp:BoundField DataField="Client_Name" HeaderText="Subscriber" />
                                <asp:BoundField DataField="City" HeaderText="City" />
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Button runat="server" class="btn btn-success btn-sm" CommandName="view_button" ID="SanctionedButton2" Text="View" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>

            <div runat="server" id="Properties_Agent" style="display: none;">
                <div runat="server" id="Commercial_Agent" style="height: 400px; position: relative; float: left; width: 550px; border-radius: 35px;" class="custom_Agent_Pro text-left">
                    <h2 class="font-weight-bold mb-sm-4 mt-3 text-white" style="position: relative; text-align: center; font-variant: small-caps">Commercial
                    </h2>
                    <div style="max-height: 80%; overflow: auto; margin-left: 30px;">
                        <asp:GridView OnRowCommand="GridView4_RowCommand" ID="Commercial_Table" AutoGenerateColumns="false" runat="server" CssClass="mydatagrid" PagerStyle-CssClass="pager"
                            HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="False">
                            <Columns>
                                <asp:BoundField DataField="Property_Id" HeaderText="ID" />
                                <asp:BoundField DataField="City" HeaderText="City" />
                                <asp:BoundField DataField="Region" HeaderText="Region" />
                                <asp:BoundField DataField="Property_Address" HeaderText="Address" />
                                <asp:BoundField DataField="Square_Feet" HeaderText="Area" />
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Button runat="server" class="btn btn-success btn-sm" CommandName="view_button" ID="SanctionedButton" Text="Sell" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
                <div runat="server" id="Residential_Agent" style="height: 400px; position: relative; float: right; width: 550px; border-radius: 35px;" class="custom_Agent_Pro text-left">
                    <asp:LinkButton ID="subsc_button" OnClick="hideProperties" Style="float: right" runat="server">
                    <i class="far fa-times-circle" style="color:white"></i></asp:LinkButton>
                    <h2 class="font-weight-bold mb-sm-4 mt-3 text-white" style="position: relative; text-align: center; font-variant: small-caps">Residential
                    </h2>

                    <div style="max-height: 80%; overflow: auto; margin-left: 30px;">
                        <asp:GridView OnRowCommand="GridView5_RowCommand" ID="Residential_Table" AutoGenerateColumns="false" runat="server" CssClass="mydatagrid" PagerStyle-CssClass="pager"
                            HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="False">
                            <Columns>
                                <asp:BoundField DataField="Property_Id" HeaderText="ID" />
                                <asp:BoundField DataField="City" HeaderText="City" />
                                <asp:BoundField DataField="Region" HeaderText="Region" />
                                <asp:BoundField DataField="Property_Address" HeaderText="Address" />
                                <asp:BoundField DataField="Square_Feet" HeaderText="Area" />
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
            <div id="Offer_agent" runat="server" style="height: 400px; position: relative; float: left; width: 550px; display: none" class="custom1 text-left">
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
            <div id="Sale_agent" runat="server" style="height: 330px; position: relative; font-variant: small-caps; float: left; display: none" class="Property_User text-left">
                <asp:LinkButton ID="sale_button" Style="float: right" runat="server" OnClick="hideSale_agent">
                    <i class="far fa-times-circle" style="color:white"></i></asp:LinkButton>
                <br />
                <h2 class="font-weight-bold mb-sm-4 text-white" style="margin-top: 20px; font-variant: small-caps">Sell
                </h2>
                <div class="form-group">
                    <asp:Label runat="server" Style="margin-top: 70px" for="Base_Price_1_User" class="text-white">Enter price</asp:Label>
                    <asp:TextBox runat="server" type="number" class="form-control mt-2" ID="Base_Price_1_User" aria-describedby="Base_Price_1_User" placeholder="base price" />
                </div>
                <br />
                <br />
                <asp:Button runat="server" type="submit" OnClick="putOnSale" Style="margin-left: 240px;" class="btn btn-primary" Text="Submit"></asp:Button>
            </div>

        </div>
    </section>

</asp:Content>
