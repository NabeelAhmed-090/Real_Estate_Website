<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page_1.Master" AutoEventWireup="true" CodeBehind="Feed.aspx.cs" Inherits="Bunyaad.Feed" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Master_1" runat="server">
    <section class="banner_section_feed">
        <div class="container">
            <div class="row">
                <div class="col-4 mt-5 text-white" style="background-color: rgb(8,8,8); height: 600px">
                    <h1 class="font-weight-bold text-center" style="border-bottom: 1px solid white">News</h1>
                    <div class="row" style="margin-top: 20px;">
                        <div class="col-12">
                            <h4 class="font-weight-bold mb-sm-4 text-white" style="margin-left: 180px">
                                <i class="fas fa-dollar-sign"></i>
                            </h4>
                            <div class="row">
                                <div class="col-8">
                                    <h6 class="font-weight-bold mb-sm-4 text-white text-sm-left">Most Expensive</h6>
                                </div>
                                <div class="col-4">
                                    <h6 class="font-weight-bold mb-sm-4 text-white text-sm-right">
                                        <asp:Label runat="server" ID="most_expensive"></asp:Label>
                                    </h6>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-8">
                                    <h6 class="font-weight-bold mb-sm-4 text-white text-sm-left">Least Expensive</h6>
                                </div>
                                <div class="col-4">
                                    <h6 class="font-weight-bold mb-sm-4 text-white text-sm-right">
                                        <asp:Label runat="server" ID="least_expensive"></asp:Label>
                                    </h6>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 20px;">
                        <h4 class="font-weight-bold mb-sm-4 text-white" style="margin-left: 185px">
                            <i class="fas fa-user-tie"></i>
                        </h4>
                        <div class="col-12">
                            <div class="row">
                                <div class="col-8">
                                    <h6 class="font-weight-bold mb-sm-4 text-white text-sm-left">
                                        <asp:Label runat="server" ID="agent">
                                        </asp:Label>
                                    </h6>
                                </div>
                                <div class="col-4">
                                    <h6 class="font-weight-bold mb-sm-4 text-white text-sm-right">
                                        <asp:Label runat="server" ID="agent_subs">
                                        </asp:Label>
                                    </h6>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row " style="margin-top: 20px;">
                        <h4 class="font-weight-bold mb-sm-4 text-white" style="margin-left: 182px">
                            <i class="fas fa-chart-line"></i>
                        </h4>
                        <div class="col-12">
                            <div class="row">
                                <div class="col-8">

                                    <h6 class="font-weight-bold mb-sm-4 text-white text-sm-left">
                                        <asp:Label runat="server" ID="prop" Text="# "></asp:Label>
                                    </h6>
                                </div>
                                <div class="col-4">
                                    <h6 class="font-weight-bold mb-sm-4 text-white text-sm-right">
                                        <asp:Label runat="server" ID="prop_count"></asp:Label>
                                    </h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-8 mt-5" style="background-color: #E0E0E0">
                    <h1 class="font-weight-bold text-center" style="border-bottom: 1px solid rgb(8,8,8)">Recently Added Properties</h1>
                    <div class="row mt-5 ml-1 mr-1" style="background-color: rgb(8,8,8)">
                        <div class="col-12">
                            <h6 class="font-weight-bold mb-sm-4 mt-3 text-white text-center">
                                <asp:Label runat="server" ID="prop_1"></asp:Label></h6>
                        </div>
                    </div>
                    <div class="row mt-5 ml-1 mr-1" style="background-color: rgb(8,8,8)">
                        <div class="col-12">
                            <h6 class="font-weight-bold mb-sm-4 mt-3 text-white text-center">
                                <asp:Label runat="server" ID="prop_2"></asp:Label></h6>
                        </div>
                    </div>
                    <div class="row mt-5 ml-1 mr-1" style="background-color: rgb(8,8,8)">
                        <div class="col-12">
                            <h6 class="font-weight-bold mb-sm-4 mt-3 text-white text-center">
                                <asp:Label runat="server" ID="prop_3"></asp:Label></h6>
                        </div>
                    </div>
                    <div class="row mt-5 ml-1 mr-1" style="background-color: rgb(8,8,8)">
                        <div class="col-12">
                            <h6 class="font-weight-bold mb-sm-4 mt-3 text-white text-center">
                                <asp:Label runat="server" ID="prop_4"></asp:Label></h6>
                        </div>
                    </div>
                    <div class="row mt-5 ml-1 mr-1" style="background-color: rgb(8,8,8)">
                        <div class="col-12">
                            <h6 class="font-weight-bold mb-sm-4 mt-3 text-white text-center">
                                <asp:Label runat="server" ID="prop_5"></asp:Label></h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </section>
</asp:Content>
