<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page_2.Master" AutoEventWireup="true" CodeBehind="Complain.aspx.cs" Inherits="Bunyaad.Complain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Complain</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Master_1" runat="server">
    <section class="banner_section_complain">
        <div>.</div>
        <div class="text-white custom_form">
            <h2 class="font-weight-bold mb-sm-4">Complaint Form
            </h2>
            <div class="row">
                <div class="col-sm-12 col-md-6">
                    <label for="Respondant_username">Complainee's username</label>
                    <asp:TextBox ID="Respondant_username" TextMode="SingleLine" runat="server" class="form-control" placeholder="@ahmednabeel" required="*" />
                    <asp:Label Visible="false" runat="server" ID="label1"></asp:Label>
                </div>
                <div class="col-sm-12 col-md-6">
                    <label for="Incident_date">Incident Date</label>
                    <asp:TextBox ID="Incident_date" TextMode="Date" runat="server" class="form-control" placeholder="10/8/2000" required="*" />
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-6">
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="Checkbox_1_Complain" />
                        <label class="custom-control-label" id="button_1_Complain" for="Checkbox_1_Complain">Unprofessional</label>
                    </div>
                </div>
                <div class="col-6">
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="Checkbox_2_Complain" />
                        <label class="custom-control-label ml-1" id="button_2_Complain" for="Checkbox_2_Complain">Overvaluing</label>
                    </div>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-6">
                    <div class="custom-control custom-checkbox">
                        <input runat="server" type="checkbox" class="custom-control-input" id="Checkbox_3_Complain" />
                        <label class="custom-control-label" id="button_3_Complain" for="Checkbox_3_Complain">Late response</label>
                    </div>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-12">
                    <div class="form-group">
                        <label for="Reason_Complain">Reason</label>
                        <asp:TextBox class="form-control" runat="server" ID="Reason_Complain" aria-describedby="ReasonLimit" Rows="3" cols="90" Height="130" placeholder="State your reason" MaxLength="150" required="*" TextMode="MultiLine" CausesValidation="true"></asp:TextBox>
                        <small id="ReasonLimit" class="form-text">Maximum 150 characters allowed.</small>
                    </div>
                </div>
            </div>
            <br />
            <div>
                <asp:CheckBox runat="server" id="Check_4_Complain" /><span> Keep my identity anonymous</span></label>
            </div>
            <br />
            <div class="row">
                <div class="col-12">
                    <button type="button" class="btn btn-danger text-capitalize" data-toggle="modal" data-target="#submit_complain">
                        Submit
                    </button>
                    <div class="modal fade" id="submit_complain" data-backdrop="false" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title text-capitalize" id="exampleModalLabel" style="color: black">Confirmation</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <h5 style="color: black">
                                        <label>Are you sure you want to file this complain?</label></h5>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-danger" data-dismiss="modal">No</button>

                                    <asp:Button runat="server" OnClick="complain" type="button" class="btn btn-success" Text="Yes"></asp:Button>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <br />
            <small id="FormSubmission_Complain" class="form-text">Action will be taken if the respondant is found
                    violating the website's policy.
            </small>
        </div>
    </section>
</asp:Content>
