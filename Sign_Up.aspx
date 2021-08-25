<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page_1.Master" AutoEventWireup="true" CodeBehind="Sign_Up.aspx.cs" Inherits="Bunyaad.Sign_Up" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Master_1" runat="server">
    <section class="banner_section_homepage">
        <div>.</div>
        <div id="sign-up_homepage" style="display: block" class="text-white custom">
            <h2 class="font-weight-bold mb-sm-4">Sign Up</h2>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <asp:Label runat="server" for="Email_Address_2_Homepage">Email</asp:Label>
                    <asp:TextBox runat="server" TextMode="Email" class="form-control" ID="Email_Address_2_Homepage" MaxLength="30" placeholder="dummy123@gmail.com" required="*" />
                    <small id="enterUsername_1_Homepage" class="form-text">We'll never share your email with anyone
                            else.</small>
                    <asp:Label runat="server" Visible="false" For="Email_Address_2_Homepage" ID="Label_1_SU"></asp:Label>
                </div>
                <div class="form-group col-md-6">
                    <asp:Label runat="server" for="City_1_Homepage">City</asp:Label>
                    <asp:TextBox runat="server" type="text" class="form-control" ID="City_1_Homepage" MaxLength="25" placeholder="lahore" pattern="[A-Za-z].{0,}" required="*" />
                </div>
            </div>

            <div class="form-row">
                <div class="form-group col-md-6">
                    <asp:Label runat="server" for="Name_1_Homepage">Name</asp:Label>
                    <asp:TextBox runat="server" type="text" class="form-control" ID="Name_1_Homepage" MaxLength="15" placeholder="nabeel ahmed" pattern="[A-Za-z].{0,}" required="*" />
                </div>
                <div class="form-group col-md-6">
                    <asp:Label runat="server" for="User_Name_1_Homepage">User Name</asp:Label>
                    <asp:TextBox runat="server" type="text" class="form-control" ID="User_Name_1_Homepage" MaxLength="20" placeholder="@ahmednabeel" pattern="[A-Za-z].{0,}" title ="Alphabets are required" required ="*"/>
                    <asp:Label runat="server" Visible="false" For="Confirm_Password_2_Homepage" ID="Label1"></asp:Label>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <asp:Label runat="server" for="New_Password_2_Homepage">Password</asp:Label>
                    <asp:TextBox runat="server" TextMode="Password" class="form-control" ID="Password_2_Homepage" MaxLength="25" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and lowercase letter and uppercase letter, and at least 8 or more characters" placeholder="password" required="*" />
                </div>
                <div class="form-group col-md-6">
                    <asp:Label runat="server" for="Confirm_Password_2_Homepage">Confirm Password</asp:Label>
                    <asp:TextBox runat="server" TextMode="Password" class="form-control" ID="Confirm_Password_2_Homepage" MaxLength="25" placeholder="confirm password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and lowercase letter and uppercase letter, and at least 8 or more characters" required="*" />
                    <asp:Label runat="server" Visible="false" For="Confirm_Password_2_Homepage" ID="Label_2_SU"></asp:Label>
                </div>
               </div>
                <div class="form-row">
                    <div class="form-group col-md-10"></div>
                    <div class="form-group col-md-2">
                        <a id="v_3" style="float: right" class="mt-1" onclick="javascript:visible_SU()"><i class="fas fa-eye mt-1"></i></a>
                        <a id="v_4" class="mt-1" style="float: right; display: none" onclick="javascript: Notvisible_SU()"><i style="float: right" class="fas fa-eye-slash mt-1"></i></a>
                    </div>
                </div>
            <div class="form-row">
                <div class="form-group col-md-4">
                    <asp:Label runat="server" for="new_state">State</asp:Label>
                    <asp:DropDownList runat="server" ID="State_1_Homepage" class="form-control">
                        <asp:ListItem Selected="True" Value="Normal">Normal</asp:ListItem>
                        <asp:ListItem Value="Agent">Agent</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <asp:Button runat="server" type="button" OnClick="Sign_Up_Button" class="btn btn-danger" Text="Signup"></asp:Button>
            <div class="mt-2">
                Already have an account?
                        <a href="Sign_In.aspx" style="color:grey">Sign in!</a>
            </div>
        </div>
    </section>

</asp:Content>
