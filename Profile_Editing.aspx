<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page_2.Master" AutoEventWireup="true" CodeBehind="Profile_Editing.aspx.cs" Inherits="Bunyaad.Profile_Editing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Master_1" runat="server">
    <section class="banner_section_Profile_Editing" style="height: 700px">
        <div class="containter" style="opacity: 1">
            <div class="row" style="height: 650px">
                <div class="col-2 Settings" style="height: 700px;">
                    <div class="row" style="margin-top: 50px; border-bottom: 2px solid white">
                        <h2 class="font-weight-bold mb-sm-4 text-white text-center" style="margin-left: 50px;">Settings
                        </h2>
                    </div>
                    <div class="row" style="margin-top: 20px;">
                        <div class="col-12">
                            <button runat="server" type="button" onclick="javascript:displayProperties_ProfileEdit()" class="btn btn-dark btn-sm" style="width: 118px !important; margin-left: 35px">&nbsp Properties&nbsp&nbsp <i class="ml-1 fas fa-building"></i></button>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 20px;">
                        <div class="col-12">
                            <asp:LinkButton runat="server" type="button" OnClick="displaySubscriptions_User" class="btn btn-dark btn-sm" Style="margin-left: 35px;">Subscriptions <i class="ml-1 fas fa-bell"></i></asp:LinkButton>
                        </div>
                    </div>
                    <div class="row " style="margin-top: 20px;">
                        <div class="col-12">
                            <button runat="server" type="button" onclick="javascript:displayNotification_ProfileEdit()" class="btn btn-dark btn-sm" style="margin-left: 35px;">Notifications  <i class="ml-1 fas fa-bullhorn"></i></button>
                        </div>
                    </div>
                    <div class="row " style="margin-top: 20px;">
                        <div class="col-12">
                            <asp:Linkbutton runat="server" OnClick="displayUser" type="button" class="btn btn-dark btn-sm" style="margin-left: 35px; width: 118px !important">&nbsp  User Info &nbsp &nbsp<i class=" ml-1 fas fa-id-card"></i></asp:Linkbutton>
                        </div>
                    </div>
                    <div class="row " style="margin-top: 20px;">
                        <div class="col-12">
                            <asp:LinkButton runat="server" OnClick="OnSale" type="button" class="btn btn-dark btn-sm" Style="margin-left: 35px; width: 118px !important">&nbsp  On Sale &nbsp &nbsp &nbsp<i class="fas fa-balance-scale"></i></asp:LinkButton>
                        </div>
                    </div>
                    <div class="row " style="margin-top: 20px;">
                        <div class="col-12">
                            <asp:LinkButton runat="server" type="button" class="btn btn-danger btn-sm" Style="margin-left: 35px; width: 118px !important" data-toggle="modal" data-target="#exampleModal">&nbsp  DELETE &nbsp<i class="fas fa-trash-alt"></i></asp:LinkButton>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 50px;">
                        <h2 class="font-weight-bold mb-sm-4 text-white text-center" style="margin-left: 50px; border-bottom: 2px solid white">Updates
                        </h2>
                        <asp:Label runat="server" Style="margin-left: 80px;" ID="lable_u" Visible="false"></asp:Label>
                        <asp:Label runat="server" Style="margin-left: 34px;" ID="lable_u1" Visible="false"></asp:Label>
                    </div>
                </div>
                <div class="col-9" style="height: 700px">
                    <div runat="server" style="height: 200px; position: absolute; float: left; width: 300px; display: none;" id="Properties_ProfileEdit" class="custom_Profile_Edit_Properties text-left">
                        <asp:LinkButton ID="hideProperties_Button_PE" Style="float: right" runat="server" OnClick="hideProperties_PE">
                           <i class="far fa-times-circle" style="color:white"></i></asp:LinkButton>
                        <br />
                        <h2 class="font-weight-bold mb-sm-4 text-white" style="position: relative; margin-left: 35px">Properties
                        </h2>
                        <div class="row">
                            <div class="col-3 ml-3">
                                <asp:LinkButton runat="server" type="button" OnClick="displayAdd_Properties_ProfileEdit" class="btn btn-dark" Style="width: 105px !important;"><span>&nbsp Add <i class="fas fa-plus"></i></span></asp:LinkButton>
                            </div>
                            <div class="col-2"></div>
                            <div class="col-3">
                                <asp:LinkButton runat="server" type="button" OnClick="displayRemove_Properties_ProfileEdit" class="btn btn-dark" Style="width: 105px !important;"><span>Remove <i class="fas fa-trash-alt"></i></span></asp:LinkButton>
                            </div>
                            <div class="col-3"></div>
                            <div class="col-1"></div>
                        </div>
                    </div>
                    <div runat="server" id="Add_Properties_ProfileEdit" style="margin-bottom: 50px; height: 600px; position: relative; float: left; width: 550px; display: none;" class="custom_Profile_Edit_Add text-left">
                        <asp:LinkButton ID="ADD_Property_PE" Style="float: right" runat="server" OnClick="hideAddProperty_ProfileEdit">
                           <i class="far fa-times-circle" style="color:white"></i></asp:LinkButton>
                        <br />
                        <h2 class="font-weight-bold mb-sm-4 text-white" style="position: relative; margin-left: 130px">Add Property
                        </h2>
                        <div class="container">
                            <div class="row">
                                <div class="col-6">
                                    <h5 class="font-weight-bold mb-sm-4 text-white mt-1" style="position: relative; margin-left: 35px">City
                                    </h5>
                                </div>
                                <div class="col-6">
                                    <asp:TextBox runat="server" type="text" class="form-control" ID="City_3_ProfileEdit" placeholder="city" required="*" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-6">
                                    <h5 class="font-weight-bold mb-sm-4 text-white mt-1" style="position: relative; margin-left: 35px">Region
                                    </h5>
                                </div>
                                <div class="col-6">
                                    <asp:TextBox runat="server" type="text" class="form-control" ID="Region_3_ProfileEdit" placeholder="Region" required="*" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-6">
                                    <h5 class="font-weight-bold mb-sm-4 text-white mt-1" style="position: relative; margin-left: 35px">Address
                                    </h5>
                                </div>
                                <div class="col-6">
                                    <asp:TextBox runat="server" type="text" class="form-control" ID="Address_3_ProfileEdit" placeholder="Address" required="*" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-6">
                                    <h5 class="font-weight-bold mb-sm-4 text-white mt-1" style="position: relative; margin-left: 35px">Sqaure Feet
                                    </h5>
                                </div>
                                <div class="col-6">
                                    <asp:TextBox runat="server" type="number" class="form-control" ID="Sq_3_ProfileEdit" MaxLength="10" placeholder="Square Feet" required="*" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-6">
                                    <h5 class="font-weight-bold mb-sm-4 text-white mt-1" style="position: relative; margin-left: 35px">Property Picture
                                    </h5>
                                </div>
                                <div class="col-6">
                                    <asp:TextBox runat="server" type="text" class="form-control" ID="Property_Pic_3_ProfileEdit" placeholder="image link" />
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label runat="server" for="Description_1_ProfileEdit" Style="margin-left: 20px;" class="text-white">
                                    <h5 class="font-weight-bold sm-4 text-white" style="margin-left: 15px;">Description
                                    </h5>
                                </asp:Label>
                                <asp:TextBox runat="server" class="form-control" ID="Description_1_ProfileEdit" Rows="2" Style="margin-left: 15px; height: 50px"></asp:TextBox>
                            </div>
                            <div class="row" style="margin-left: 5px">
                                <div class="col-md-6">
                                    <asp:Label runat="server" for="new_state" class="text-white"></asp:Label>
                                    <asp:DropDownList runat="server" ID="options" class="form-control" Style="margin-bottom: 50px">
                                        <asp:ListItem Selected="True" Value="Commercial">Commercial</asp:ListItem>
                                        <asp:ListItem Value="Residential">Residential</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col-6">
                                    <asp:Button runat="server" type="submit" OnClick="Add_Property" Style="margin-left: 40px; margin-top: 25px" class="btn btn-info" Text="Add" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div runat="server" id="Remove_Properties_ProfileEdit" style="height: 500px; position: relative; float: left; width: 550px; display: none;" class="custom_Profile_Edit text-left">
                        <asp:LinkButton ID="subsc_button" Style="float: right" runat="server" OnClick="hideRemove_Properties_ProfileEdit">
                           <i class="far fa-times-circle" style="color:white"></i></asp:LinkButton>
                        <br />
                        <h2 class="font-weight-bold mb-sm-4 text-white" style="position: relative; margin-left: 100px">Remove Properties
                        </h2>
                        <div id="div_3__ProfileEdit" style="max-height: 80%; overflow: auto; margin-left: 25px">
                            <asp:GridView OnRowCommand="RemovePropertyPE_RowCommand" ID="RemoveProperty_PE" AutoGenerateColumns="false" runat="server" CssClass="mydatagrid_2" PagerStyle-CssClass="pager_2"
                                HeaderStyle-CssClass="header_2" RowStyle-CssClass="rows_2" AllowPaging="False">
                                <Columns>
                                    <asp:BoundField DataField="Property_Id" HeaderText="ID" />
                                    <asp:BoundField DataField="City" HeaderText="CITY" />
                                    <asp:BoundField DataField="Region" HeaderText="REGION" />
                                    <asp:BoundField DataField="Property_Address" HeaderText="ADDRESS" />
                                    <asp:BoundField DataField="Class" HeaderText="CLASS" />
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:LinkButton runat="server" class="btn btn-danger btn-sm" Style="background-color: red" CommandName="view_button" ID="SanctionedButton"><i class="fas fa-trash-alt"></i></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                    <div runat="server" id="User_Info_ProfileEdit" style="height: 600px; position: relative; float: left; width: 550px; display: none;" class="custom_Profile_Edit text-left">
                        <asp:LinkButton ID="Hide_User_Info_Button" Style="float: right" runat="server" OnClick="hideNotification_ProfileEdit">
                         <i class="far fa-times-circle" style="color:white"></i></asp:LinkButton>
                        <br />
                        <h2 class="font-weight-bold mb-sm-4 text-white text-center">User Info
                        </h2>
                        <form class="text-white">
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label runat="server" for="City__ProfileEdit" class="text-white">City</label>
                                    <asp:TextBox runat="server" TextMode="SingleLine" class="form-control" ID="City_ProfileEdit" placeholder="city" />
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <asp:Label runat="server" for="New_Password__ProfileEdit" class="text-white">new password</asp:Label>
                                    <asp:TextBox runat="server" TextMode="SingleLine" class="form-control" ID="New_Password__ProfileEdit" placeholder="new password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" />
                                </div>
                                <div class="form-group col-md-6">
                                    <asp:Label runat="server" for="Confirm_Password_ProfileEdit" class="text-white">confirm password</asp:Label>
                                    <asp:TextBox runat="server" TextMode="SingleLine" class="form-control" ID="Confirm_Password_ProfileEdit" placeholder="confirm password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" />
                                    <asp:Label runat="server" Visible="false" For="Confirm_Password_ProfileEdit" ID="Label_1_PE"></asp:Label>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="Name_ProfileEdit" class="text-white">Name</label>
                                <asp:TextBox runat="server" TextMode="SingleLine" class="form-control" ID="Name_ProfileEdit" placeholder="Nabeel Ahmed" />
                            </div>
                            <div class="form-group">
                                <label for="Profile_Pic_ProfileEdit" class="text-white">Profile Picture Link</label>
                                <asp:TextBox runat="server" TextMode="SingleLine" class="form-control" ID="Profile_Pic_ProfileEdit" placeholder="https://drive.google.com/-Zble4TGK6QUdEF87jCrAe4M3Fcg/view" />
                            </div>
                            <div class="custom-control custom-checkbox text-white" style="float: left;">
                                <asp:CheckBox runat="server" id="Checkbox_ProfileEdit"/> Premium User
                            </div>
                            <asp:LinkButton runat="server" OnClick="update_user_info" type="submit" class="btn btn-danger" Style="float: right;" Text="update"></asp:LinkButton>
                            <br />
                        </form>
                    </div>
                    <div runat="server" id="Notification_ProfileEdit" style="height: 500px; position: relative; float: left; width: 550px; display: none;" class="custom_Profile_Edit text-left text-white">
                        <asp:LinkButton ID="Not_Button_PE" Style="float: right" runat="server" OnClick="hideNotification_ProfileEdit">
                         <i class="far fa-times-circle" style="color:white"></i></asp:LinkButton>
                        <br />
                        <h2 class="font-weight-bold mb-sm-4 text-white text-center">Notification
                        </h2>
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <asp:Label runat="server" for="new_state">Class</asp:Label>
                                    <asp:DropDownList runat="server" ID="not_drop" class="form-control">
                                        <asp:ListItem Selected="True" Value="commercial">Commercial</asp:ListItem>
                                        <asp:ListItem Value="Residential">Residential</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label for="City_2_ProfileEdit">City</label>
                                    <asp:TextBox runat="server" ID="City_2_ProfileEdit" type="text" class="form-control" placeholder="city" />
                                </div>
                                <div class="col-md-6">
                                    <label for="Region_2_ProfileEdit">Region</label>
                                    <asp:TextBox runat="server" ID="Region_2_ProfileEdit" type="text" class="form-control" placeholder="Region" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label for="Price_Limit_ProfileEdit">Price Limit</label>
                                    <asp:TextBox runat="server" ID="Price_Limit_2_ProfileEdit" type="number" class="form-control" placeholder="price limit" />
                                </div>
                                <div class="col-md-6">
                                    <label for="sq_2_ProfileEdit">Square feet</label>
                                    <asp:TextBox runat="server" ID="Sq_2_ProfileEdit" type="number" class="form-control" placeholder="square feet" />
                                </div>
                            </div>
                            <div class="row mt-5">
                                <div class="col-8"></div>
                                <div class="col-4">
                                    <asp:LinkButton runat="server" OnClick="Notification_fun" type="submit" class="btn btn-success" Style="float: right;" Text="Done"></asp:LinkButton>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div runat="server" id="Subscription_ProfileEdit" style="height: 500px; position: relative; float: left; width: 550px; display: none;" class="custom_Profile_Edit text-left">
                        <asp:LinkButton ID="SubsButton_PE" Style="float: right" runat="server" OnClick="hideSubscriptions_User">
                         <i class="far fa-times-circle" style="color:white"></i></asp:LinkButton>
                        <br />
                        <h2 class="font-weight-bold mb-sm-4 text-white" style="position: relative; margin-left: 130px;">Subscriptions
                        </h2>
                        <div id="div20_User" style="max-height: 80%; overflow: auto; margin-left: 45px">
                            <asp:GridView OnRowCommand="Remove_Subs" ID="Subs_Table" AutoGenerateColumns="false" runat="server" CssClass="mydatagrid_2" PagerStyle-CssClass="pager_2"
                                HeaderStyle-CssClass="header_2" RowStyle-CssClass="rows_2" AllowPaging="False">
                                <Columns>
                                    <asp:BoundField DataField="Agent Name" HeaderText="Agent" />
                                    <asp:BoundField DataField="City" HeaderText="City" />
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:LinkButton runat="server" class="btn btn-danger btn-sm" style="background-color:red" CommandName="remove_subs_button" ID="SanctionedButton"><i class="fas fa-trash-alt"></i></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                    <div runat="server" id="OnSaleDiv" style="height: 500px; position: relative; float: left; width: 550px; display: none;" class="custom_Profile_Edit text-left">
                        <asp:LinkButton ID="LinkButton1" Style="float: right" runat="server" OnClick="hideOnSale">
                           <i class="far fa-times-circle" style="color:white"></i></asp:LinkButton>
                        <br />
                        <h2 class="font-weight-bold mb-sm-4 text-white" style="position: relative; margin-left: 180px">On Sale
                        </h2>
                        <div id="div_4_PE" style="max-height: 80%; overflow: auto; margin-left: 40px">
                            <asp:GridView OnRowCommand="RemoveSale" ID="OnSaleGV" AutoGenerateColumns="false" runat="server" CssClass="mydatagrid_2" PagerStyle-CssClass="pager_2"
                                HeaderStyle-CssClass="header_2" RowStyle-CssClass="rows_2" AllowPaging="False">
                                <Columns>
                                    <asp:BoundField DataField="Property_Id" HeaderText="ID" />
                                    <asp:BoundField DataField="Property_Address" HeaderText="ADDRESS" />
                                    <asp:BoundField DataField="Region" HeaderText="REGION" />
                                    <asp:BoundField DataField="City" HeaderText="CITY" />
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:LinkButton runat="server" class="btn btn-danger btn-sm" Style="background-color: red" CommandName="view_button" ID="SanctionedButton"><i class="fas fa-trash-alt"></i></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                    <div>
                        <div class="modal fade" id="exampleModal" data-backdrop="false" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog text-white" role="document" style="background-color: black">
                                <div class="modal-content" style="background-color: black">
                                    <div class="modal-header">
                                        <h5 class="modal-title text-capitalize" id="exampleModalLabel" style="font-variant: small-caps">Delete Account</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <p style="font-variant: small-caps">Are you sure you want to delete your account?</p>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-danger" data-dismiss="modal">NO!</button>
                                        <asp:LinkButton runat="server" type="button" OnClick="DeleteAccount" class="btn btn-success">YES</asp:LinkButton>
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
