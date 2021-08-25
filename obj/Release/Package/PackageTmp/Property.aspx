<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page_2.Master" AutoEventWireup="true" CodeBehind="Property.aspx.cs" Inherits="Bunyaad.Property" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Master_1" runat="server">
    <section class="banner_section_Property">
        <div class="container">
            <div class="row">
                <div class="col-12 mt-1 ml-3" id="propertyImage">
                    <div id="image-container_Property">
                        <asp:Image ID="propImage" runat="server" onerror="this.src='Images/house_2.jpg'" Style="margin-left:170px;border-radius: 50%; height: 300px; width: 300px; overflow: hidden;"  />
                    </div>
                </div>
            </div>
        </div>
        <div class="container mt-3">
            <div class="row">
                <div class="col-1 col-sm-1 col-md-1"></div>
                <div class="col-6 col-sm-3 col-md-6">
                    <div class="flip-card">
                        <div class="flip-card-inner">
                            <div class="flip-card-front property text-left" style="border-radius: 35px;">
                                <h1 class="font-weight-bold mb-sm-4 text-white mt-1 text-center" style="font-variant: small-caps">Description
                                </h1>
                                <div class="container">
                                    <div class="row">
                                        <div class="col-2"></div>
                                        <div class="col-8">
                                            <p class="text-center">
                                                <asp:Label runat="server" class="text-white" Style="font-variant: small-caps" ID="description_label" Text="">
                                                </asp:Label>
                                            </p>
                                        </div>
                                        <div class="col-2"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="flip-card-back property" style="border-radius: 35px;">
                                <h1 class="font-weight-bold mb-sm-4 text-white text-capitalize mt-3">Details
                                </h1>
                                <div class="container" style="font-variant: small-caps">
                                    <div class="row mt-5">
                                        <div class="col-2 col-sm-2 col-md-2"></div>
                                        <div class="col-4 col-sm-2 col-md-4">
                                            <h5 class="font-weight-bold mb-sm-4 text-white mt-1 text-left text-capitalize" style="position: relative; margin-left: 35px">State
                                            </h5>
                                        </div>
                                        <div class="col-6 col-sm-3 col-md-5">
                                            <h5 class="font-weight-light mb-sm-4 text-white mt-1 text-left text-capitalize" style="position: relative; margin-left: 35px">
                                                <asp:Label runat="server" ID="state_prop" Text=""></asp:Label>
                                            </h5>
                                        </div>
                                    </div>
                                    <div class="row mt-1">
                                        <div class="col-2 col-sm-2 col-md-2"></div>
                                        <div class="col-4 col-sm-2 col-md-4">
                                            <h5 class="font-weight-bold mb-sm-4 text-white mt-1 text-left text-capitalize" style="position: relative; margin-left: 35px">City
                                            </h5>
                                        </div>
                                        <div class="col-6 col-sm-3 col-md-5">
                                            <h5 class="font-weight-light mb-sm-4 text-white mt-1 text-left" style="position: relative; margin-left: 35px">
                                                <asp:Label runat="server" ID="city_prop" Text=""></asp:Label>
                                            </h5>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-2 col-sm-2 col-md-2"></div>
                                        <div class="col-4 col-sm-2 col-md-4">
                                            <h5 class="font-weight-bold mb-sm-4 text-white mt-1 text-left text-capitalize" style="position: relative; margin-left: 35px">Region
                                            </h5>
                                        </div>
                                        <div class="col-6 col-sm-3 col-md-5">
                                            <h5 class="font-weight-light mb-sm-4 text-white mt-1 text-left text-capitalize" style="position: relative; margin-left: 35px">
                                                <asp:Label runat="server" ID="region_prop" Text=""></asp:Label>
                                            </h5>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-2 col-sm-2 col-md-2"></div>
                                        <div class="col-4 col-sm-2 col-md-4">
                                            <h5 class="font-weight-bold mb-sm-4 text-white mt-1 text-left text-capitalize" style="position: relative; margin-left: 35px">Sqaure Feet
                                            </h5>
                                        </div>
                                        <div class="col-6 col-sm-3 col-md-5">
                                            <h5 class="font-weight-light mb-sm-4 text-white mt-1 text-left text-capitalize" style="position: relative; margin-left: 35px">
                                                <asp:Label runat="server" ID="sq_prop" Text=""></asp:Label>
                                            </h5>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-2 col-sm-2 col-md-2"></div>
                                        <div class="col-4 col-sm-2 col-md-4">
                                            <h5 class="font-weight-bold mb-sm-4 text-white mt-1 text-left text-capitalize" style="position: relative; margin-left: 35px">Address
                                            </h5>
                                        </div>
                                        <div class="col-6 col-sm-3 col-md-5">
                                            <h5 class="font-weight-light mb-sm-4 text-white mt-1 text-left text-capitalize" style="position: relative; margin-left: 35px">
                                                <asp:Label runat="server" ID="address_prop" Text=""></asp:Label>
                                            </h5>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-4 propertyForm_1 text-white mt-2 col-sm-1 col-md-4">
                    <div id="property_card_Property">
                        <div class="container">
                            <div class="row">
                                <div class="col-8 mt-4 col-sm-8 col-md-8">
                                    <h5 class="font-weight-bold mb-sm-4 text-capitalize">Property Card <i class="fas fa-info-circle"></i></h5>
                                </div>
                                <div class="col-4 mt-4 col-sm-4 col-md-4">
                                    <asp:LinkButton Style="display: block" ID="shortlist" OnClick="Add_shortlist" runat="server"><span style="color:white;"><i class="far fa-bookmark"></i></span></asp:LinkButton>
                                    <asp:LinkButton Style="display: none" ID="shorlist_slash" OnClick="Remove_shortlist" runat="server"><span style="color:white;"><i class="fas fa-bookmark"></i></span></asp:LinkButton>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-6 mt-1 col-sm-6 col-md-6">
                                    <h6 class="font-weight-bold mb-sm-4 text-left text-capitalize">Owner</h6>
                                </div>
                                <div class="col-6 col-sm-6 col-md-6">
                                    <h6 class="font-weight-bold mb-sm-4 text-left text-capitalize">
                                        <asp:Label runat="server" ID="owner_name" Text=""></asp:Label>
                                    </h6>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-6 col-sm-6 col-md-6">
                                    <h6 class="font-weight-bold mb-sm-4 text-left text-capitalize">Base Price</h6>
                                </div>
                                <div class="col-6 col-sm-6 col-md-6">
                                    <h6 class="font-weight-bold mb-sm-4 text-left text-capitalize">
                                        <asp:Label runat="server" ID="base_price" Text=""></asp:Label>
                                    </h6>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-6 col-sm-6 col-md-6">
                                    <asp:Label Style="font-variant: small-caps" runat="server" ID="updates" Text="" Visible="false"></asp:Label>
                                </div>
                                <div class="col-6 col-sm-6 col-md-6">
                                    <button type="button" class="btn btn-success btn-sm text-capitalize" style="float: right;" data-toggle="modal" data-target="#exampleModal">
                                        Buy
                                    </button>
                                </div>
                            </div>
                            <div class="row">
                                <div class="modal fade" id="exampleModal" data-backdrop="false" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title text-capitalize" id="exampleModalLabel" style="color: black">Place offer</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <form>
                                                    <div class="form-group">
                                                        <label for="Offer_Property_label" style="color: black">Offer</label>
                                                        <asp:TextBox runat="server" TextMode="Number" class="form-control" ID="Offer_Property" aria-describedby="offer_Property_aria" placeholder="1250000" />
                                                        <small id="offer_Property_aria" class="form-text text-muted">Your offer can only be viewed by the owner</small>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="Password_Property_Label" style="color: black">Password</label>
                                                        <asp:TextBox runat="server" TextMode="Password" class="form-control" ID="Password_Property" />
                                                    </div>
                                                </form>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                                                <asp:LinkButton runat="server" type="button" OnClick="placeOffer" class="btn btn-success">Place</asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
