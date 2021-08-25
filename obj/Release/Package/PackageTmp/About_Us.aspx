<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About_Us.aspx.cs" Inherits="Bunyaad.About_Us" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <link rel="shortcut icon" type="image/jpg" href="logo_lightBlue.ico" />
    <link href='https://fonts.googleapis.com/css?family=Pontano Sans' rel='stylesheet'>
    <script src="jquery-3.5.1.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link href='https://fonts.googleapis.com/css?family=Pontano Sans' rel='stylesheet'>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="icons/all.min.css">
    <title>Profile</title>

    <link rel="stylesheet" href="style.css">
    <link rel="shortcut icon" type="image/jpg" href="Images/logo_ico.ico" />

</head>

<body>
    <div class="jumbotron mt-3 ml-3 mr-3" style="background-color: #e1e5ea !important;">
        <h1 class="display-4 text-center">Bunyaad</h1>
        <p class="lead text-center">A place where you find the properties of your dreams</p>
        <hr class="my-4">
        <p class="font-weight-light mb-sm-4">
            At Bunyaad we aim at helping real estate agents expand their business as well as helping customers buy and sell property by providing them an easy-to-use online platform. Our main goal is to help customers find the property of their dreams. Ranging from
            one story houses to office space, we offer a wide range of properties to choose from. Our easy-to-use website offers two modes real estate agent and client mode. Once you have signed up there are a number of features on the website including
            filtering based on price, area etcetera, rating other users, subscribing to a real estate agent and much more. Sign up today to find the property that best suits your needs. <b>Bunyaad was
                founded in 2021.</b>
        </p>
    </div>
    <div class="container" style="background-color: #e1e5ea;">
        <h1 class="display-4 text-center">Our Team</h1>
        <br>
        <div class="row text-center mt-5">
            <div class="col">
                <div class="media" style="background-color: #e9edf6">
                    <img class="mr-3 image-container_1" src='<%=ResolveUrl("~/Images/avatar_m.png") %>' alt="Generic placeholder image">
                    <div class="media-body row">
                        <div class="col-12" id="Content">
                            <h5 class="mt-0 font-weight-bold text-center">Nabeel Ahmed</h5>
                            <h6 class="font-weight-light text-center mt-3">
                                <p>Student at FAST-NUCES Lahore</p>
                            </h6>
                            <h6 class="font-weight-light text-center">
                                <p>nabeelahmedamir@gmail.com</p>
                            </h6>
                            <h6 class="font-weight-light text-center">
                                <p>Batch 2019</p>
                            </h6>
                        </div>
                    </div>
                </div>
            </div>
            <br>
            <div class="col">
                <div class="media" style="background-color: #e9edf6">
                    <img class="mr-3 image-container_1" src='<%=ResolveUrl("Images/avatar_m.png")%>' alt="Generic placeholder image">
                    <div class="media-body">
                        <h5 class="mt-0 font-weight-bold">Hassan Naeem</h5>
                        <h6 class="font-weight-light text-center mt-3">
                            <p>Student at FAST-NUCES Lahore</p>
                        </h6>
                        <h6 class="font-weight-light text-center">
                            <p>hassannaeem53@gmail.com</p>
                        </h6>
                        <h6 class="font-weight-light text-center">
                            <p>Batch 2019</p>
                        </h6>
                    </div>
                </div>
            </div>
            <div class="w-100 mt-5"></div>
            <div class="col mb-4">
                <div class="media" style="background-color: #e9edf6">
                    <img class="mr-3 image-container_1" src='<%=ResolveUrl("Images/avatar_m.png")%>' alt="Generic placeholder image">
                    <div class="media-body">
                        <h5 class="mt-0 font-weight-bold">Hanzallah Rizwan</h5>
                        <h6 class="font-weight-light text-center mt-3">
                            <p>Student at FAST-NUCES Lahore</p>
                        </h6>
                        <h6 class="font-weight-light text-center">
                            <p>hanzallahrizwan_khan@gmail.com</p>
                        </h6>
                        <h6 class="font-weight-light text-center">
                            <p>Batch 2019</p>
                        </h6>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="media" style="background-color: #e9edf6">
                    <img class="mr-3 image-container_1" src='<%=ResolveUrl("Images/avatar_f.png")%>' alt="Generic placeholder image">
                    <div class="media-body">
                        <h5 class="mt-0 font-weight-bold">Khadeejah Rizvi</h5>
                        <h6 class="font-weight-light text-center mt-3">
                            <p>Student at FAST-NUCES Lahore</p>
                        </h6>
                        <h6 class="font-weight-light text-center">
                            <p>syeda_khadeejarizvi@gmail.com</p>
                        </h6>
                        <h6 class="font-weight-light text-center">
                            <p>Batch 2019</p>
                        </h6>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container mt-5" style="background-color: #e1e5ea;">
        <div class="row">
            <div class="col-12">
                <h1 class="display-4 text-center">FAQ</h1>
            </div>
        </div>
        <div>
            <h5 class="font-weight-bold mb-sm-4 mt-5 text-center">What is Bunyaad?
            </h5>
            <p class="font-weight-light mb-sm-4 text-center">
                Bunyaad is an online platform that allows real estate agents to list available properties and customers to buy and sell properties.
            </p>
        </div>
        <div>
            <h5 class="font-weight-bold mb-sm-4 text-center">Which areas dose Bunyaad currently operates in?

            </h5>
            <p class="font-weight-light mb-sm-4 text-center">
                Bunyaad is currently operational in Punjab.

            </p>
        </div>
        <div>
            <h5 class="font-weight-bold mb-sm-4 text-center">What is Bunyaad?
            </h5>
            <p class="font-weight-light mb-sm-4 text-center">
                Bunyaad is an online platform that allows real estate agents to list available properties and customers to buy and sell properties.
            </p>
        </div>
        <div>
            <h5 class="font-weight-bold mb-sm-4 text-center">How long has Bunyaad been around?

            </h5>
            <p class="font-weight-light mb-sm-4  text-center">
                Bunyaad was founded in 2021.

            </p>
        </div>
        <div>
            <h5 class="font-weight-bold mb-sm-4 text-center">Can I sell my home on Bunyaad?

            </h5>
            <p class="font-weight-light mb-sm-4 text-center">
                Yes. Bunyaad allows users to sell their properties by listing them on the website. Moreover, the real estate agent on the website can help guide you through the process of selling your home.

            </p>
        </div>

        <div>
            <h5 class="font-weight-bold mb-sm-4 text-center">Can I buy a home on Bunyaad?

            </h5>
            <p class="font-weight-light mb-sm-4 text-center">
                Yes. Our website has numerous listings of properties to choose from at a fair price. We also have real estate agents to guide you through the process.
            </p>
        </div>

        <div>
            <h5 class="font-weight-bold mb-sm-4 text-center">How much does Bunyaad charge its customers?
            </h5>
            <p class="font-weight-light mb-sm-4 text-center">
                We charge 1.5% (which is less than the typical commission of 2.5%-3%).
            </p>
        </div>

        <div>
            <h5 class="font-weight-bold mb-sm-4 text-center">Why would a real estate agent work at Bunyaad?
            </h5>
            <p class="font-weight-light mb-sm-4 text-center">
                Bunyaad aims to help real estate agents expand their business by providing real estate agents with the opportunity to find clients easily. Moreover, Bunyaad provides an easy-to-use platform for communication between the real estate agent and customer.
            </p>
        </div>
    </div>
</body>

</html>
