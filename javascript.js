
$(window).on('load', function () {
    var preloaderFadeOutTime = 10;
    function hidePreloader() {
        var preloader = $('#loading_screen');
        setTimeout(function () {
            $('#main_form').css("display", "block");
            $('#main_body').css("background-color", "white");
            preloader.fadeOut(preloaderFadeOutTime);
            //$("#main_form").style.display = "block"
        }, 60);

    }
    hidePreloader();
});
function myFunction() {
    alert("Function called");
}
function testFunction() {
    var i = 1;
    var s1 = "ContentPlaceHolder_Master_1_starU";
    var s2 = "ContentPlaceHolder_Master_1_starV";
    var radio = "ContentPlaceHolder_Master_1_butt"
    var check = radio + i;
    var temp = "";
    var curr = "";
    var ret = 0;
    while (!document.getElementById(check).checked) {
       
        temp = s2 + i;
        curr = s1 + i;
        document.getElementById(curr).style.display = "none";
        document.getElementById(temp).style.display = "block";
        check = "";
        temp = "";
        curr = "";
        i++;
        check = radio + i;
    }
    temp = s2 + i;
    curr = s1 + i;
    document.getElementById(curr).style.display = "none";
    document.getElementById(temp).style.display = "block";
    ret = i;
    i++;
    temp = "";
    curr = "";
    for (; i <= 5; i++) {
        temp = s2 + i;
        curr = s1 + i;
        document.getElementById(temp).style.display = "none";
        document.getElementById(curr).style.display = "block";
    }
    check = "";
    for (var j = 1; j <= 5; j++) {
        check = radio + j;
        document.getElementById(check).checked = false;
    }
    document.cookie = "index=" + ret;
}


/*                        Search                                      */
function clearValues_Search() {
    document.getElementById("User_name_Search").value = '';
    document.getElementById("Price_Search").value = '';
    document.getElementById("City_Search").value = '';
    document.getElementById("Sq_Feet_Search").value = '';
}
/*                        ViewProfile                                      */
function buttonColor_ViewProfile() {
    if (document.getElementById("ContentPlaceHolder_Master_1_subsButton").style.backgroundColor == "") {
        document.getElementById("ContentPlaceHolder_Master_1_subsButton").style.backgroundColor = "#700000";
    } else
        document.getElementById("ContentPlaceHolder_Master_1_subsButton").style.backgroundColor = "";
}
/*                        ProfileEditing                                      */
function enable_ProfileEdit() {
    if (document.getElementById("card_ProfileEdit").style.display == "none") {

        document.getElementById("card_ProfileEdit").style.display = "block";

    } else {
        document.getElementById("card_ProfileEdit").style.display = "none";
    }
}
function clearValues_ProfileEdit() {
    document.getElementById("ContentPlaceHolder_Master_1_State_2_ProfileEdit").value = '';
    document.getElementById("ContentPlaceHolder_Master_1_City_2_ProfileEdit").value = '';
    document.getElementById("ContentPlaceHolder_Master_1_Region_2_ProfileEdit").value = '';
    document.getElementById("ContentPlaceHolder_Master_1_Price_Limit_2_ProfileEdit").value = '';
    document.getElementById("ContentPlaceHolder_Master_1_Sq_2_ProfileEdit").value = '';
}

function displayProperties_ProfileEdit() {
    document.getElementById("ContentPlaceHolder_Master_1_Remove_Properties_ProfileEdit").style.display = "none";
    document.getElementById("ContentPlaceHolder_Master_1_Add_Properties_ProfileEdit").style.display = "none";
    document.getElementById("ContentPlaceHolder_Master_1_Notification_ProfileEdit").style.display = "none";
    document.getElementById("ContentPlaceHolder_Master_1_Subscription_ProfileEdit").style.display = "none";
    document.getElementById("ContentPlaceHolder_Master_1_User_Info_ProfileEdit").style.display = "none";
    document.getElementById("ContentPlaceHolder_Master_1_OnSaleDiv").style.display = "none";
    document.getElementById("ContentPlaceHolder_Master_1_Properties_ProfileEdit").style.display = "block";
}

function hideProperties_ProfileEdit() {
    document.getElementById("ContentPlaceHolder_Master_1_Properties_ProfileEdit").style.display = "none";
}


function displayNotification_ProfileEdit() {
    document.getElementById("ContentPlaceHolder_Master_1_Remove_Properties_ProfileEdit").style.display = "none";
    document.getElementById("ContentPlaceHolder_Master_1_Add_Properties_ProfileEdit").style.display = "none";
    document.getElementById("ContentPlaceHolder_Master_1_User_Info_ProfileEdit").style.display = "none";
    document.getElementById("ContentPlaceHolder_Master_1_Subscription_ProfileEdit").style.display = "none";
    document.getElementById("ContentPlaceHolder_Master_1_Properties_ProfileEdit").style.display = "none";
    document.getElementById("ContentPlaceHolder_Master_1_OnSaleDiv").style.display = "none";
    document.getElementById("ContentPlaceHolder_Master_1_Notification_ProfileEdit").style.display = "block";
}

function hideNotification_ProfileEdit() {
    document.getElementById("ContentPlaceHolder_Master_1_Notification_ProfileEdit").style.display = "none";
}

function displaySubscription_ProfileEdit() {
    document.getElementById("ContentPlaceHolder_Master_1_Remove_Properties_ProfileEdit").style.display = "none";
    document.getElementById("ContentPlaceHolder_Master_1_Add_Properties_ProfileEdit").style.display = "none";
    document.getElementById("ContentPlaceHolder_Master_1_User_Info_ProfileEdit").style.display = "none";
    document.getElementById("ContentPlaceHolder_Master_1_Notification_ProfileEdit").style.display = "none";
    document.getElementById("ContentPlaceHolder_Master_1_Properties_ProfileEdit").style.display = "none";
    document.getElementById("ContentPlaceHolder_Master_1_Subscription_ProfileEdit").style.display = "block";
}

function hideSubscription_ProfileEdit() {
    document.getElementById("ContentPlaceHolder_Master_1_Subscription_ProfileEdit").style.display = "none";
}


/*                          Agent                                      */
function displaySubscriptions_Agent() {
    document.getElementById("Notifications_Agent").style.display = "none";
    document.getElementById("Properties_Agent").style.display = "none";
    document.getElementById("Shortlist_Agent").style.display = "none";
    document.getElementById("Subscriptions_Agent").style.display = "block";
}
function hideSubscriptions_Agent() {
    document.getElementById("Subscriptions_Agent").style.display = "none";
}

function displayNotifications_Agent() {
    document.getElementById("Shortlist_Agent").style.display = "none";
    document.getElementById("Properties_Agent").style.display = "none";
    document.getElementById("Subscriptions_Agent").style.display = "none";
    document.getElementById("Notifications_Agent").style.display = "block";
}
function hideNotifications_Agent() {
    document.getElementById("Notifications_Agent").style.display = "none";
}
function displayShortlist_Agent() {
    document.getElementById("Notifications_Agent").style.display = "none";
    document.getElementById("Properties_Agent").style.display = "none";
    document.getElementById("Subscriptions_Agent").style.display = "none";
    document.getElementById("Shortlist_Agent").style.display = "block";

}
function hideShortlist_Agent() {
    document.getElementById("Shortlist_Agent").style.display = "none";
}
function displayProperties_Agent() {
    document.getElementById("Notifications_Agent").style.display = "none";
    document.getElementById("Shortlist_Agent").style.display = "none";
    document.getElementById("Subscriptions_Agent").style.display = "none";
    document.getElementById("Properties_Agent").style.display = "block";
}

function hideProperties_Agent() {
    document.getElementById("Properties_Agent").style.display = "none";
}

/*                                        sign in                                        */
function visible() {
    document.getElementById("v_1").style.display = "none";
    document.getElementById("v_2").style.display = "block";
    document.getElementById("ContentPlaceHolder_Master_1_Password_1_Homepage").type = "text";
}
function Notvisible() {
    document.getElementById("v_2").style.display = "none";
    document.getElementById("v_1").style.display = "block";
    document.getElementById("ContentPlaceHolder_Master_1_Password_1_Homepage").type = "password";
}

function visible_SU() {
    document.getElementById("v_3").style.display = "none";
    document.getElementById("v_4").style.display = "block";
    document.getElementById("ContentPlaceHolder_Master_1_Confirm_Password_2_Homepage").type = "text";
    document.getElementById("ContentPlaceHolder_Master_1_Password_2_Homepage").type = "text";
}
function Notvisible_SU() {
    document.getElementById("v_4").style.display = "none";
    document.getElementById("v_3").style.display = "block";
    document.getElementById("ContentPlaceHolder_Master_1_Confirm_Password_2_Homepage").type = "password";
    document.getElementById("ContentPlaceHolder_Master_1_Password_2_Homepage").type = "password";
}