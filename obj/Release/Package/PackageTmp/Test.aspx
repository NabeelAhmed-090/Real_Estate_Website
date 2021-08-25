<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="Bunyaad.Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <script src="javascript.js"></script>
    <script src="jquery-3.5.1.min.js"></script>
    <title>Bunyaad</title>
    <%--<link href="style.css" rel="stylesheet" />--%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href='https://fonts.googleapis.com/css?family=Fjalla One' rel='stylesheet' />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300&display=swap" rel="stylesheet" />
    <link rel="shortcut icon" type="image/jpg" href="logo_lightBlue.ico" />
    <link href='https://fonts.googleapis.com/css?family=Pontano Sans' rel='stylesheet' />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
    <link href='https://fonts.googleapis.com/css?family=Pontano Sans' rel='stylesheet' />
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="icons/all.min.css" />
    <link rel="shortcut icon" type="image/jpg" href="Images/logo_ico.ico" />
    <style>
        /* HIDE RADIO */
        [type=radio] {
            position: absolute;
            opacity: 0;
            width: 0;
            height: 0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <label>
            <%--<asp:TextBox runat="server" type="radioButton" ID="butt1" name="test" value="small" OnChange="javascript:testFunction()" />--%>
            <asp:RadioButton runat="server" ID="butt1" name="test" OnChange="javascript:testFunction()" />
            <span style="color: yellow">
                <i class="far fa-star" id="starU1"></i>
                <i class="fas fa-star" id="starV1" style="display: none"></i>
            </span>
        </label>
        <label>
            <%--<asp:TextBox runat="server" type="radio" ID="butt2" name="test" value="small" OnChange="javascript:testFunction()" />--%>
            <asp:RadioButton runat="server" ID="butt2" name="test" OnChange="javascript:testFunction()" />
            <span style="color: yellow">
                <i class="far fa-star" id="starU2"></i>
                <i class="fas fa-star" id="starV2" style="display: none"></i>
            </span>
        </label>
        <label>
            <%--<asp:TextBox runat="server" type="radio" ID="butt3" name="test" value="small" OnChange="javascript:testFunction()" />--%>
            <asp:RadioButton runat="server" ID="butt3" name="test" OnChange="javascript:testFunction()" />
            <span style="color: yellow">
                <i class="far fa-star" id="starU3"></i>
                <i class="fas fa-star" id="starV3" style="display: none"></i>
            </span>
        </label>
        <label>
            <%--<asp:TextBox runat="server" type="radio" ID="butt4" name="test" value="small" OnChange="javascript:testFunction()" />--%>
            <asp:RadioButton runat="server" ID="butt4" name="test" OnChange="javascript:testFunction()" />
            <span style="color: yellow">
                <i class="far fa-star" id="starU4"></i>
                <i class="fas fa-star" id="starV4" style="display: none"></i>
            </span>
        </label>
        <label>
            <%--<asp:TextBox runat="server" type="radio" ID="butt5" name="test" value="small" OnChange="javascript:testFunction()" />--%>
            <asp:RadioButton runat="server" ID="butt5" name="test" OnChange="javascript:testFunction()" />
            <span style="color: yellow">
                <i class="far fa-star" id="starU5"></i>
                <i class="fas fa-star" id="starV5" style="display: none"></i>
            </span>
        </label>
        <asp:LinkButton runat="server" ID="test" OnClick="testing">Test</asp:LinkButton>
    </form>
</body>
</html>
