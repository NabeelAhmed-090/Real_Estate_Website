<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page_1.Master" AutoEventWireup="true" CodeBehind="Sign_In.aspx.cs" Inherits="Bunyaad.Sign_In" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Master_1" runat="server">
    <section class="banner_section_homepage">
        <div>.</div>
        <div id="Main_Div_Homepage" class="text-white custom">
            <div id="sign-in_homepage">
                <h2 class="font-weight-bold mb-sm-4">Sign In
                </h2>
                <div class="form-group">
                    <asp:Label runat="server" for="User_Name_2_Sign_In">User Name</asp:Label>
                    <br />
                    <asp:TextBox runat="server" type="text" class="form-control" ID="User_Name_2_Sign_In" MaxLength="20" placeholder="@ahmednabeel"/>
                    <asp:Label runat="server" Visible="false" For="User_Name_2_Sign_In" ID="Label1"></asp:Label>

                </div>
                <div class="form-group">
                    <asp:Label runat="server" for="Password_1_Homepage">Password</asp:Label>
                    <br />
                    <asp:TextBox runat="server" TextMode="Password" class="form-control" ID="Password_1_Homepage" MaxLength="25" placeholder="Password"/>
                   
                    <div class="row">
                        <div class="col-6">
                            <a href="#" style="color: grey" data-toggle="modal" data-target="#submit_complain">Forgot password?</a>
                            </div>
                        <div class="col-6">
                            <a id="v_1" style="float: right" class="mt-1" onclick="javascript:visible()"><i class="fas fa-eye mt-1"></i></a>
                            <a id="v_2" class="mt-1" style="float: right; display: none" onclick="javascript: Notvisible()"><i style="float: right" class="fas fa-eye-slash mt-1"></i></a>
                        </div>
                    </div>
                     <asp:Label runat="server" Visible="false" For="Password_1_Homepage" ID="Label2"></asp:Label>
                    <asp:Label Visible="false" runat="server" ID="lable4"></asp:Label>
                </div>
                <asp:HyperLink ID="HyperLink1" class="mt-4" runat="server">
                    <asp:Button runat="server" type="button" class="btn btn-danger mt-4" OnClick="Sign_In_Button" ID="submit" Text="Submit"></asp:Button>
                </asp:HyperLink>

                <div class="mt-2">
                    Don't have an account?
                        <a href="Sign_Up.aspx" style="color: grey">Sign up!</a>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="modal fade" id="submit_complain" data-backdrop="false" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" style="background-color: rgb(16,16,16)" role="document">
                                <div class="modal-content" style="background-color: rgb(16,16,16)">
                                    <div class="modal-header">
                                        <h5 class="modal-title text-white text-capitalize font-weight-bold" id="exampleModalLabel">Password reset</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="container">
                                            <div class="row">
                                                <div class="col-6">
                                                    <asp:Label runat="server" for="email_pass_reset">Enter Email</asp:Label>
                                                </div>
                                                <div class="col-6">
                                                    <asp:TextBox runat="server" type="email" MaxLength="30" ID="email_pass_reset" require="*"></asp:TextBox>
                                                    <asp:Label runat="server" Visible="false" ID="lable3"></asp:Label>
                                                </div>
                                            </div>
                                            <div class="row mt-2">
                                                <div class="col-6">
                                                    <asp:Label runat="server" for="email_pass_reset">New password</asp:Label>
                                                </div>
                                                <div class="col-6">
                                                    <asp:TextBox runat="server" TextMode="Password" MaxLength="25" ID="pass_pass_reset" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" require="*"></asp:TextBox>
                                                </div>
                                            </div>

                                        </div>

                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-danger mr-2" data-dismiss="modal">cancel</button>

                                        <asp:Button runat="server" OnClick="Password_Reset" type="button" class="btn btn-success" style="margin-right:32px" Text="update"></asp:Button>

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

