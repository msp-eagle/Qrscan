<!DOCTYPE html>
<html lang="en">
<head>
    <title>QR VERIFY </title>
    <%-- <link rel="stylesheet" type="text/css" id="theme"
       href="css/" />
   <link rel="stylesheet" type="text/css" id="theme"
       href="js/plugins/sweetalert/sweetalert.css" />--%>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="img/logo10.png" type="image/x-icon"/>
    <script type="text/javascript" src="js/local/jquery.min.js"></script>
    <script type="text/javascript" src="js/local/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/local/popper.min.js"></script>
    <link rel="stylesheet" type="text/css" id="theme" href="js/local/bootstrap.min.css"/>

    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> -->

    <script type="text/javascript">

        function gotoScan() {
            /* document.location.href='/QrScan'; */
            document.getElementById("validate").action = "<%=request.getContextPath()%>/scanpage";
            document.getElementById("validate").submit();
        }
    </script>
    <script type="text/javascript">
        history.pushState(null, null, location.href);
        history.back();
        history.forward();
        window.history.forward()
        window.onpopstate = function () {
            history.go(6);
        };

        document.addEventListener('contextmenu', function (e) {
            e.preventDefault();
        });
        document.onkeypress = function (event) {
            event = (event || window.event);
            if (event.keyCode == 123) {
                return false;
            }
        }
        document.onmousedown = function (event) {
            event = (event || window.event);
            if (event.keyCode == 123) {
                return false;
            }
        }
        document.onkeydown = function (event) {
            event = (event || window.event);
            if (event.keyCode == 123) {
                return false;
            }
        }
    </script>
    <style type="text/css">


        .w-150 {
            margin-top: 10px;
            width: 260px;
            background-color: #1f4380;
            color: white;
            border: 3px solid #1f4380;
            border-radius: 5px;
            padding: 10px;
            cursor: pointer;
            min-height: 50px;
        }

        .button-p10 {
            padding: 10px;
            cursor: pointer;
            min-height: 50px;

            box-shadow: 0 3px 1px -2px rgba(0, 0, 0, .2), 0 2px 2px 0 rgba(0, 0, 0, .14), 0 1px 5px 0 rgba(0, 0, 0, .12);
            border-radius: 15px;
        }


        a:link, a:visited {

            color: white;
            /*padding: 15px 25px;*/
            text-align: center;
            text-decoration: none;
            display: inline-block;
        }



        .header--logo1 {

            height: 110px;
            width: 461px;
            margin-left: 15px;


        }



        .background {
            background: #f7f5f5;
            hight: 100%;
            width: 100%;

        }

        .text-center {
            text-align: center;
        }


        .blue-color {
            color: #1f4380;
        }
        .text-heading-background {
            font-size: 20px;
            font-family: Arial;
        }

        .text-background {
            font-size: 16px;
            font-family: Arial;
        }

        .font-bold {

            font-weight: bold;
        }

        .nomargin {
            margin: 0px !important;
        }

        .button--container {
            text-align: center;
            display: flex;
            display: -webkit-box; /* OLD - iOS 6-, Safari 3.1-6, BB7 */
            display: -ms-flexbox; /* TWEENER - IE 10 */
            display: -webkit-flex; /* NEW - Safari 6.1+. iOS 7.1+, BB10 */
        }

        .button-column {
            flex-direction: column;
        }

        .button--center {

            align-content: center;

        }

        @media (max-width: 500px) {
            .version-txt {
                font-size: 8px;
                font-family: Arial;
                font-weight: 50;
                display: block;
                padding-bottom: -200px;

            }

            .col-xs-1, .col-sm-1, .col-md-1, .col-lg-1, .col-xs-2, .col-sm-2,
            .col-md-2, .col-lg-2, .col-xs-3, .col-sm-3, .col-md-3, .col-lg-3,
            .col-xs-4, .col-sm-4, .col-md-4, .col-lg-4, .col-xs-5, .col-sm-5,
            .col-md-5, .col-lg-5, .col-xs-6, .col-sm-6, .col-md-6, .col-lg-6,
            .col-xs-7, .col-sm-7, .col-md-7, .col-lg-7, .col-xs-8, .col-sm-8,
            .col-md-8, .col-lg-8, .col-xs-9, .col-sm-9, .col-md-9, .col-lg-9,
            .col-xs-10, .col-sm-10, .col-md-10, .col-lg-10, .col-xs-11, .col-sm-11,
            .col-md-11, .col-lg-11, .col-xs-12, .col-sm-12, .col-md-12, .col-lg-12 {
                position: relative;
                min-height: 1px;
                width: 100%;
                padding-right: 15px;
                padding-left: 15px
            }

            .video--center {
                transform: scaleX(-1);
                display: inline-block;
                padding-right: 1px;
                width: 100%;
            }

            .header--logo1 {
                height: 90px;
                width: 90%;
                margin-left: 15px;


            }

            .button--container {
                text-align: center;
                /* display: flex; */
                /* display: -webkit-box; */

            }
        }


        /*
          ##Device = Desktops
          ##Screen = 1281px to higher resolution desktops
        */

        @media (min-width: 1281px) {

            /* CSS */
            .video--center {
                transform: scaleX(-1);
                display: inline-block;
                padding-right: 1px;
                width: 100%;
            }

            .button--container {
                text-align: center;
                /* display: flex; */
                /* display: -webkit-box; */

            }
        }

        /*
          ##Device = Laptops, Desktops
          ##Screen = B/w 1025px to 1280px
        */

        @media (min-width: 1025px) and (max-width: 1280px) {

            /* CSS */
            .button--container {
                text-align: center;
                /* display: flex; */
                /* display: -webkit-box; */

            }

            .video--center {
                transform: scaleX(-1);
                display: inline-block;
                padding-right: 1px;
                width: 100%;
            }


        }

        /*
          ##Device = Tablets, Ipads (portrait)
          ##Screen = B/w 768px to 1024px
        */

        @media (min-width: 768px) and (max-width: 1024px) {

            /* CSS */
            .button--container {
                text-align: center;
                /* display: flex; */
                /* display: -webkit-box; */

            }

            .header--logo1 {
                height: 90px;
                width: 90%;
                margin-left: 15px;


            }

            .version-txt {
                font-size: 13px;
                font-weight: 200;
                display: block;
                padding-bottom: 20px;
                padding-top: 20px;
                color: white;
            }

            .footer-logo_flex {
                max-width: 150px;
            }

            .col-xs-1, .col-sm-1, .col-md-1, .col-lg-1, .col-xs-2, .col-sm-2,
            .col-md-2, .col-lg-2, .col-xs-3, .col-sm-3, .col-md-3, .col-lg-3,
            .col-xs-4, .col-sm-4, .col-md-4, .col-lg-4, .col-xs-5, .col-sm-5,
            .col-md-5, .col-lg-5, .col-xs-6, .col-sm-6, .col-md-6, .col-lg-6,
            .col-xs-7, .col-sm-7, .col-md-7, .col-lg-7, .col-xs-8, .col-sm-8,
            .col-md-8, .col-lg-8, .col-xs-9, .col-sm-9, .col-md-9, .col-lg-9,
            .col-xs-10, .col-sm-10, .col-md-10, .col-lg-10, .col-xs-11, .col-sm-11,
            .col-md-11, .col-lg-11, .col-xs-12, .col-sm-12, .col-md-12, .col-lg-12 {
                position: relative;
                min-height: 1px;
                width: 100%;
                padding-right: 15px;
                padding-left: 15px
            }

            .video--center {
                transform: scaleX(-1);
                display: inline-block;
                padding-right: 1px;
                width: 100%;
            }
        }

        /*
          ##Device = Tablets, Ipads (landscape)
          ##Screen = B/w 768px to 1024px
        */

        @media (min-width: 768px) and (max-width: 1024px) and (orientation: landscape) {

            /* CSS */
            .col-xs-1, .col-sm-1, .col-md-1, .col-lg-1, .col-xs-2, .col-sm-2,
            .col-md-2, .col-lg-2, .col-xs-3, .col-sm-3, .col-md-3, .col-lg-3,
            .col-xs-4, .col-sm-4, .col-md-4, .col-lg-4, .col-xs-5, .col-sm-5,
            .col-md-5, .col-lg-5, .col-xs-6, .col-sm-6, .col-md-6, .col-lg-6,
            .col-xs-7, .col-sm-7, .col-md-7, .col-lg-7, .col-xs-8, .col-sm-8,
            .col-md-8, .col-lg-8, .col-xs-9, .col-sm-9, .col-md-9, .col-lg-9,
            .col-xs-10, .col-sm-10, .col-md-10, .col-lg-10, .col-xs-11, .col-sm-11,
            .col-md-11, .col-lg-11, .col-xs-12, .col-sm-12, .col-md-12, .col-lg-12 {
                position: relative;
                min-height: 1px;
                width: 100%;
                padding-right: 15px;
                padding-left: 15px
            }

            .video--center {
                transform: scaleX(-1);
                display: inline-block;
                padding-right: 1px;
                width: 100%;
            }

            .header--logo1 {
                height: 90px;
                width: 90%;
                margin-left: 15px;


            }

            .button--container {
                text-align: center;
                /* display: flex; */
                /* display: -webkit-box; */

            }
        }

        /*
          ##Device = Low Resolution Tablets, Mobiles (Landscape)
          ##Screen = B/w 481px to 767px
        */

        @media (min-width: 481px) and (max-width: 767px) {

            /* CSS */
            .button--container {
                text-align: center;
                /* display: flex; */
                /* display: -webkit-box; */

            }

            .nomargin {
                margin: 0px !important;
            }

            .version-txt {
                font-size: 8px;
                font-weight: 50;
                display: block;
                text-align: center;
                padding-bottom: 6px;
                padding-top: 6px;
            }

            .col-xs-1, .col-sm-1, .col-md-1, .col-lg-1, .col-xs-2, .col-sm-2,
            .col-md-2, .col-lg-2, .col-xs-3, .col-sm-3, .col-md-3, .col-lg-3,
            .col-xs-4, .col-sm-4, .col-md-4, .col-lg-4, .col-xs-5, .col-sm-5,
            .col-md-5, .col-lg-5, .col-xs-6, .col-sm-6, .col-md-6, .col-lg-6,
            .col-xs-7, .col-sm-7, .col-md-7, .col-lg-7, .col-xs-8, .col-sm-8,
            .col-md-8, .col-lg-8, .col-xs-9, .col-sm-9, .col-md-9, .col-lg-9,
            .col-xs-10, .col-sm-10, .col-md-10, .col-lg-10, .col-xs-11, .col-sm-11,
            .col-md-11, .col-lg-11, .col-xs-12, .col-sm-12, .col-md-12, .col-lg-12 {
                position: relative;
                min-height: 1px;
                width: 100%;
                padding-right: 15px;
                padding-left: 15px
            }

            .video--center {
                transform: scaleX(-1);
                display: inline-block;
                padding-right: 1px;
                width: 100%;
            }

            .header--logo1 {
                height: 90px;
                width: 90%;
                margin-left: 15px;


            }
        }

        /*
          ##Device = Most of the Smartphones Mobiles (Portrait)
          ##Screen = B/w 320px to 479px
        */

        @media (min-width: 320px) and (max-width: 480px) {

            /* CSS */
            .col-xs-1, .col-sm-1, .col-md-1, .col-lg-1, .col-xs-2, .col-sm-2,
            .col-md-2, .col-lg-2, .col-xs-3, .col-sm-3, .col-md-3, .col-lg-3,
            .col-xs-4, .col-sm-4, .col-md-4, .col-lg-4, .col-xs-5, .col-sm-5,
            .col-md-5, .col-lg-5, .col-xs-6, .col-sm-6, .col-md-6, .col-lg-6,
            .col-xs-7, .col-sm-7, .col-md-7, .col-lg-7, .col-xs-8, .col-sm-8,
            .col-md-8, .col-lg-8, .col-xs-9, .col-sm-9, .col-md-9, .col-lg-9,
            .col-xs-10, .col-sm-10, .col-md-10, .col-lg-10, .col-xs-11, .col-sm-11,
            .col-md-11, .col-lg-11, .col-xs-12, .col-sm-12, .col-md-12, .col-lg-12 {
                position: relative;
                min-height: 1px;
                width: 100%;
                padding-right: 15px;
                padding-left: 15px
            }

            .version-txt {
                font-size: 8px;
                font-weight: 50;
                display: block;
                text-align: center;
                padding-bottom: 6px;
                padding-top: 6px;
            }

            .header--logo1 {
                height: 90px;
                width: 90%;
                margin-left: 15px;


            }

        }

        .font-size {
            font-size: 1.8rem;
        }
        /*
          ##Device = Desktops
          ##Screen = 1281px to higher resolution desktops
        */

        @media (min-width: 1281px) {

            /* CSS */

        }

        /*
          ##Device = Laptops, Desktops
          ##Screen = B/w 1025px to 1280px
        */

        @media (min-width: 1025px) and (max-width: 1280px) {

            /* CSS */

        }

        /*
          ##Device = Tablets, Ipads (portrait)
          ##Screen = B/w 768px to 1024px
        */

        @media (min-width: 768px) and (max-width: 1024px) {

            /* CSS */
            /* .mat-toolbar{
             max-width: calc(100% - 3%);
            } */


        }


        /*
          ##Device = Tablets, Ipads (landscape)
          ##Screen = B/w 768px to 1024px
        */

        @media (min-width: 768px) and (max-width: 1024px) and (orientation: landscape) {

            /* CSS */

        }

        /*
          ##Device = Low Resolution Tablets, Mobiles (Landscape)
          ##Screen = B/w 481px to 767px
        */

        @media (min-width: 481px) and (max-width: 767px) {

            /* CSS */

        }

        /*
          ##Device = Most of the Smartphones Mobiles (Portrait)
          ##Screen = B/w 320px to 479px
        */

        @media (min-width: 320px) and (max-width: 480px) {

            /* CSS */

        }

        @media (max-width: 670px) {
            .header--logo {
                padding-top: 5px;
                padding-bottom: 5px;
                width: 170px;
                height: 50px;
                margin-top: 0px;
                margin-left: 10px;
                margin-right: 10px;
            }

            .mat-container--header {
                background-color: #1f4380;
                height: 50px;
            }
        }
    </style>
</head>
<body>
<form action="" id="validate" method="post">
    <input type="hidden" id="username" name="username">

<jsp:include page="header.jsp" />
    <div class="background">


        <div class="row nomargin">
            <div class=" col-md-1 col-sm-12 col-lg-1">
                <div class="mx-auto"></div>
                <!--<hr class="clearfix w-100 d-md-none">-->
            </div>

            <div class=" col-md-4 col-sm-12 col-lg-4">
                <div class="mx-auto">
                    <br>
                    <div
                            class="text-heading-background blue-color  text-center font-size"
                            style="font-weight: bold;">PhilID
                        QR Code
                    </div>
                    <div
                            class="text-heading-background blue-color text-center font-size" style="font-weight: bold;">
                        SUCCESSFULLY
                    </div>
                    <div
                            class="text-heading-background blue-color text-center font-size" style="font-weight: bold;">
                        VERIFIED
                    </div>

                    <!-- <hr class="clearfix w-100 d-md-none">-->

                    <div
                            class=" button-column text-center button--center padding-b-t">

                        <img class="header--logo1 header--logo" src="img/success2.png"
                             style="width: 100px; height: 100px;"/>

                    </div>
                </div>
                <!--  <hr class="clearfix w-100 d-md-none">-->
            </div>


            <div
                    class=" col-md-1 col-sm-12 col-lg-1">
                <div class="mx-auto"></div>
                <!--<hr class="clearfix w-100 d-md-none">-->
            </div>


            <div class=" col-md-6 col-sm-12 col-lg-6" style="word-wrap: break-word;">
                <div class="mx-auto">
                    <br>

                    <div class="text-background blue-color  bold-text font-bold">Last
                        Name: ${qrJson.subject.lName}</div>
                    <div class="text-background blue-color bold-text font-bold">
                        First Name: ${qrJson.subject.fName}</div>
                    <div class="text-background blue-color bold-text font-bold">Middle
                        Name: ${qrJson.subject.mName}</div>
                    <div class="text-background blue-color  bold-text font-bold">Suffix:${qrJson.subject.suffix}</div>
                    <div class="text-background blue-color   font-bold font-bold">Sex: ${qrJson.subject.sex}</div>
                    <div class="text-background blue-color font-bold font-bold">Date
                        of Birth: ${qrJson.subject.dOB}</div>
                    <div class="text-background blue-color   font-bold font-bold">Place
                        of Birth: ${qrJson.subject.pOB}</div>
                    <div class="text-background blue-color  font-bold font-bold">PhilSys
                        Card Number (PCN): ${qrJson.subject.pCN}</div>
                    <div class="text-background blue-color  font-bold font-bold">
                        Date of Issuance: ${qrJson.dateIssued}</div>

                </div>

                <div class="button--container button-column  button--center ">
                    <button class="w-150 button-p10" onclick="gotoScan();">
                        VERIFY ANOTHER QR Code
                    </button>
                </div>
                </br>


            </div>

        </div>

    </div>
</form>
  <jsp:include page="footer.jsp"/>
</body>
</html>
