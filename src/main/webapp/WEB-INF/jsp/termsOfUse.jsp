<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<head>
    <!-- META SECTION -->
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="shortcut icon" href="img/logo10.png" type="image/x-icon"/>
    <!-- END META SECTION -->

    <!-- CSS INCLUDE -->
    <%--<link rel="stylesheet" type="text/css" id="theme"
        href="css/theme-default.css" />
    <link rel="stylesheet" type="text/css" id="theme"
        href="js/plugins/sweetalert/sweetalert.css" />--%>
    <!-- EOF CSS INCLUDE -->
    <!-- START PLUGINS -->
    <!-- <script type="text/javascript" src="js/plugins/jquery/jquery.min.js"></script> -->
    <!-- <script type="text/javascript" src="js/plugins/jquery/jquery-ui.min.js"></script> -->
    <script type="text/javascript"
            src="js/plugins/sweetalert/sweetalert.min.js"></script>
    <script type='text/javascript'
            src='js/plugins/jquery-validation/jquery.validate.js'></script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <script type="text/javascript" src="js/local/jquery.min.js"></script>
    <script type="text/javascript" src="js/local/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/local/popper.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
          integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" id="theme" href="js/local/bootstrap.min.css"/>
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

    <!--
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> -->
    <!-- END PLUGINS -->
    <%--    <script type = "text/javascript">--%>
    <%--        function preventBack() {--%>
    <%--            window.history.forward(1);--%>
    <%--        }--%>
    <%--        setTimeout("preventBack()", 0);--%>
    <%--        window.onunload = function () {--%>
    <%--            null--%>
    <%--        };--%>

    <%--        document.addEventListener('contextmenu', function(e) {--%>
    <%--            e.preventDefault();--%>
    <%--        });--%>
    <%--        document.onkeypress = function (event) {--%>
    <%--            event = (event || window.event);--%>
    <%--            if (event.keyCode == 123) {--%>
    <%--                return false;--%>
    <%--            }--%>
    <%--        }--%>
    <%--        document.onmousedown = function (event) {--%>
    <%--            event = (event || window.event);--%>
    <%--            if (event.keyCode == 123) {--%>
    <%--                return false;--%>
    <%--            }--%>
    <%--        }--%>
    <%--        document.onkeydown = function (event) {--%>
    <%--            event = (event || window.event);--%>
    <%--            if (event.keyCode == 123) {--%>
    <%--                return false;--%>
    <%--            }--%>
    <%--        }--%>
    <%--    </script>--%>

    <style type="text/css">

        /* @font-face
            {font-family:Courier;
            panose-1:2 7 4 9 2 2 5 2 4 4;}
        @font-face
            {font-family:"Arial";
            panose-1:2 2 6 9 4 2 5 8 3 4;}
        @font-face
            {font-family:"Arial";
            panose-1:2 11 6 9 7 2 5 8 2 4;}
        @font-face
            {font-family:"Arial";
            panose-1:2 4 5 3 5 4 6 3 2 4;}
        @font-face
            {font-family:"Arial";
            panose-1:2 15 5 2 2 2 4 3 2 4;}
        @font-face
            {font-family:"Arial";
            panose-1:2 4 5 3 5 4 6 3 2 4;}
        @font-face
            {font-family:"\@MS Mincho";
            panose-1:2 2 6 9 4 2 5 8 3 4;}
        @font-face
            {font-family:"\@MS Gothic";
            panose-1:2 11 6 9 7 2 5 8 2 4;} */

        .row {
            display: -ms-flexbox;
            display: flex;
            -ms-flex-wrap: wrap;
            flex-wrap: wrap;
            margin-right: -15px;
            margin-left: -15px;
        }



        a:link, a:visited {

            color: white;
            /*padding: 15px 25px;*/
            text-align: center;
            text-decoration: none;
            display: inline-block;
        }




        /*.footer--container{

          !*background-image: url(https://uat.mspsandbox.com/pre-registration-ui/pre-registration/assets/img/footer.png) ;*!
         !* background-image: url(https://register.philsys.gov.ph/pre-registration-ui/pre-registration/assets/img/footer.png);*!
        background-color: #1f4380;
          background-repeat :no-repeat;

          background-size: cover;
        }*/





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


    <style type="text/css">

        :root {
            --p-color: #2670b6;
            --s-color: #15159c;
            --pbg-color: #fff;
            --sbg-color: #ff0000;
            --a-color: #fff;
            --c-color:: ffffff;


        }

        a {
            font-family: Arial;
            text-decoration: none;
            background-color: transparent;
            -webkit-text-decoration-skip: objects;
        }

        /*.mt-4,
        .my-4 {
          margin-top: 1.5rem !important;
        }*/

        :root {
            --font-size: 15px;
            --primary--color: #ffffff;
            --primary--light--color: #ffffff;
            --secondary--color: #ffffff;
            --secondary--light--color: #ffffff;
            --primary--background--color: #1f4380;
            --font-h1: calc(--font-size + 5px);
            --heading--font-size: 1.5rem;
            --white-color: white;

        }

        /*  header container css*/


        .nav-border > ul > li:first-child {
            border-left: 1px solid gray;
        }

        .nav-border > ul > li {
            border-right: 1px solid gray;
        }

        header--logo.bottom-banner {
            height: 140px;
            background: linear-gradient(to right, #226da5 0%, #2872c1 18%, #163d6a 100%);
        }

        .list-item > .mat-list-item {
            color: #fff !important;
            font-size: 20px !important;
            line-height: 1.42857143 !important;
            text-decoration: none;
            text-transform: uppercase;
        }

        .sidenav-list > .mat-list-item {
            color: black;
            text-transform: uppercase;
            font-size: 12px !important;
            line-height: 1.42857143 !important;
            letter-spacing: 2px;
        }
        @media (min-width: 670px) {
            .sidenav-button {
                display: none;
            }
        }

        @media (max-width: 670px) {
            .list-item {
                display: none;
            }
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
            .mat-toolbar {
                max-width: calc(100% - 3%);
            }

            .header--logo1 {
                width: 75%;
                margin-left: 67px;


            }

        }


        /*
          ##Device = Tablets, Ipads (landscape)
          ##Screen = B/w 768px to 1024px
        */

        @media (min-width: 768px) and (max-width: 1024px) and (orientation: landscape) {

            /* CSS */
            .header--logo1 {
                width: 74%;
                margin-left: 63px;

            }

        }

        /*
          ##Device = Low Resolution Tablets, Mobiles (Landscape)
          ##Screen = B/w 481px to 767px
        */

        @media (min-width: 481px) and (max-width: 767px) {

            /* CSS */
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
            .header--logo1 {
                height: 90px;
                width: 90%;
                margin-left: 15px;


            }

        }

        @media (max-width: 670px) {


            .header--logo1 {
                height: 90px;
                width: 90%;
                margin-left: 15px;


            }


        }

        .h-140 > a > img {
            height: 100%;
            width: 100%;
            object-fit: contain;
        }

        .header-middle-content {
            padding: 0px 10px;
        }

        .header-slider {
            background: #465ab3;
            height: 460px;
        }

        .carousel-item img {
            height: 100%;
            width: 100%;
            object-fit: cover;
        }

        .slider-padding {
            padding: 5px 5px;
        }

        .header-middle-content h6, .header-middle-content h2 {


            padding: 4px 2px;
            color: white;
            height: 10%;
            width: 100%;
        }

        .nav-item > a {
            padding-left: 10px !important;
            padding-right: 10px !important;
            font-weight: italic;
        }

        .header-middle-content > h4 {
            font-style: bold;
        }

        /* Links inside the dropdown */
        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }

        a.ex1:hover, a.
            /* Change color of dropdown links on hover */
        .dropdown-content a:hover {
            background-color: #ddd;
        }

        /* Show the dropdown menu on hover */
        .dropdown:hover .dropdown-content {
            display: block;
        }

        /* Change the background color of the dropdown button when the dropdown content is shown */
        .dropdown:hover .dropbtn {
            color: black;
        }


        .dropdown-item:focus, .dropdown-item:hover {
            color: gray !important;
            text-decoration: none;
            background-color: black !important;
        }

        @media (min-width: 992px) {
            .dropdown-menu .dropdown-toggle:after {
                border-top: .3em solid transparent;
                border-right: 0;
                border-bottom: .3em solid transparent;
                border-left: .3em solid;
                width: auto;
                height: auto;
            }

            .dropdown-menu .dropdown-menu {
                margin-left: 0;
                margin-right: 0;
            }

            .dropdown-menu li {
                position: relative;
            }

            .nav-item .submenu {
                display: none;
                position: absolute;
                left: 100%;
                top: -7px;
            }

            .nav-item .submenu-left {
                right: 100%;
                left: auto;
            }

            .dropdown-menu > li:hover {
                background-color: #f1f1f1
            }

            .dropdown-menu > li:hover > .submenu {
                display: block;
            }
        }

        /* bootstab*/


        /*end*/
        footer-logo-space.main-footer {
            display: flex;
            justify-content: center;
            font-family: Arial;
            font-size: 12px;
            padding-top: 10px;
            padding-bottom: 0px;
            position: fixed;
            bottom: -9px;
            width: 100%;
            z-index: -1;
            margin-bottom: 2px;
            background: white;
        }
        a:link, a:visited {
            color: white;
            /*padding: 15px 25px;*/
            text-align: center;
            text-decoration: none;
            display: inline-block;
        }

        .row {
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -ms-flex-wrap: wrap;
            flex-wrap: wrap;
            margin-right: 15px !important;
            margin-left: 15px !important;

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
            .version-txt[_ngcontent-c8] {
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
            .version-txt[_ngcontent-c8] {
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
        }

        /*
          ##Device = Most of the Smartphones Mobiles (Portrait)
          ##Screen = B/w 320px to 479px
        */

        @media (min-width: 320px) and (max-width: 480px) {
            /* CSS */
            .version-txt[_ngcontent-c8] {
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

        }

        .footer-background > .container {
            padding-top: 25px;
        }

        button-p10 {
            padding: 10px;
            cursor: pointer;
            min-height: 50px;
            border: 3px solid #1f4380;
            box-shadow: 0 3px 1px -2px rgba(0, 0, 0, .2), 0 2px 2px 0 rgba(0, 0, 0, .14), 0 1px 5px 0 rgba(0, 0, 0, .12);
            border-radius: 5px;
        }

        p.MsoNormal, li.MsoNormal, div.MsoNormal {
            margin-top: 0in;
            margin-right: 0in;
            margin-bottom: 10.0pt;
            margin-left: 0in;
            /*line-height:100%;*/
            font-size: 15pt;
            font-family: Arial;
            color: #294278;
        }

        h4 {
            mso-style-link: "Heading 2 Char";
            margin-top: 10.0pt;
            margin-right: 0in;
            margin-bottom: 0in;
            margin-left: 0in;
            line-height: 115%;
            page-break-after: avoid;
            font-family: Arial;
            color: #4F81BD;
        }

        p.MsoCommentText, li.MsoCommentText, div.MsoCommentText {
            mso-style-link: "Comment Text Char";
            margin-top: 0in;
            margin-right: 0in;
            margin-bottom: 10.0pt;
            margin-left: 0in;
            font-size: 15.0pt;
            font-family: Arial;
            color: #294278;
        }

        p.MsoListBullet, li.MsoListBullet, div.MsoListBullet {
            margin-top: 0in;
            margin-right: 0in;
            margin-bottom: 10.0pt;
            margin-left: .25in;
            text-indent: -.25in;
            line-height: 115%;
            font-size: 11.0pt;
            font-family: Arial;
        }

        p.MsoListBulletCxSpFirst, li.MsoListBulletCxSpFirst, div.MsoListBulletCxSpFirst {
            margin-top: 0in;
            margin-right: 0in;
            margin-bottom: 0in;
            margin-left: .25in;
            text-indent: -.25in;
            line-height: 115%;
            font-size: 11.0pt;
            font-family: Arial;
        }

        p.MsoListBulletCxSpMiddle, li.MsoListBulletCxSpMiddle, div.MsoListBulletCxSpMiddle {
            margin-top: 0in;
            margin-right: 0in;
            margin-bottom: 0in;
            margin-left: .25in;
            text-indent: -.25in;
            line-height: 115%;
            font-size: 11.0pt;
            font-family: Arial;
        }

        p.MsoListBulletCxSpLast, li.MsoListBulletCxSpLast, div.MsoListBulletCxSpLast {
            margin-top: 0in;
            margin-right: 0in;
            margin-bottom: 10.0pt;
            margin-left: .25in;
            text-indent: -.25in;
            line-height: 115%;
            font-size: 11.0pt;
            font-family: Arial;
        }

        p.MsoTitle, li.MsoTitle, div.MsoTitle {
            mso-style-link: "Title Char";
            margin-top: 0in;
            margin-right: 0in;
            margin-bottom: 0in;
            margin-left: 0in;
            border: none;
            padding: 0in;
            font-size: 26.0pt;
            font-family: Arial;
            color: #17365D;
            letter-spacing: .25pt;
        }

        p.MsoTitleCxSpFirst, li.MsoTitleCxSpFirst, div.MsoTitleCxSpFirst {
            mso-style-link: "Title Char";
            margin: 0in;
            border: none;
            padding: 0in;
            font-size: 26.0pt;
            font-family: Arial;
            color: #17365D;
            letter-spacing: .25pt;
        }

        p.MsoTitleCxSpMiddle, li.MsoTitleCxSpMiddle, div.MsoTitleCxSpMiddle {
            mso-style-link: "Title Char";
            margin: 0in;
            border: none;
            padding: 0in;
            font-size: 26.0pt;
            font-family: Arial;
            color: #17365D;
            letter-spacing: .25pt;
        }

        p.MsoTitleCxSpLast, li.MsoTitleCxSpLast, div.MsoTitleCxSpLast {
            mso-style-link: "Title Char";
            margin-top: 0in;
            margin-right: 0in;
            margin-bottom: 0in;
            margin-left: 0in;
            border: none;
            padding: 0in;
            font-size: 26.0pt;
            font-family: Arial;
            color: #17365D;
            letter-spacing: .25pt;
        }

        p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph {
            margin-top: 0in;
            margin-right: 0in;
            margin-bottom: 10.0pt;
            margin-left: .5in;
            line-height: 115%;
            font-size: 11.0pt;
            font-family: Arial;
        }

        p.MsoListParagraphCxSpFirst, li.MsoListParagraphCxSpFirst, div.MsoListParagraphCxSpFirst {
            margin-top: 0in;
            margin-right: 0in;
            margin-bottom: 0in;
            margin-left: .5in;
            line-height: 115%;
            font-size: 15.0pt;
            font-family: Arial;
            color: #294278;
        }

        p.MsoListParagraphCxSpMiddle, li.MsoListParagraphCxSpMiddle, div.MsoListParagraphCxSpMiddle {
            margin-top: 0in;
            margin-right: 0in;

            margin-left: .5in;
            line-height: 115%;
            font-size: 15.0pt;
            font-family: Arial;
            color: #294278;

        }

        p.MsoListParagraphCxSpLast, li.MsoListParagraphCxSpLast, div.MsoListParagraphCxSpLast {
            margin-top: 0in;
            margin-right: 0in;
            margin-bottom: 10.0pt;
            margin-left: .5in;
            line-height: 115%;
            font-size: 15.0pt;
            font-family: Arial;
            color: #294278;
        }

        span.Heading2Char {
            mso-style-name: "Heading 2 Char";
            mso-style-link: "Heading 2";
            font-family: Arial;
            color: #4F81BD;
            font-weight: bold;
        }

        span.TitleChar {
            mso-style-name: "Title Char";
            mso-style-link: Title;
            font-family: Arial;
            color: #17365D;
            letter-spacing: .25pt;
        }

        span.1 {
            mso-style-name: ? ? ? ? ? ? ? ? ? ? ? 1 ;
            color: blue ;
            text-decoration: underline;
        }
        span.CommentTextChar {
            mso-style-name: "Comment Text Char";
            mso-style-link: "Comment Text";
        }

        .MsoChpDefault {
            font-family: Arial;
        }

        .MsoPapDefault {
            margin-bottom: 10.0pt;
            line-height: 115%;
        }

        @page WordSection1 {
            size: 8.5in 11.0in;
            margin: 1.0in 1.25in 1.0in 1.25in;
        }

        div.WordSection1 {
            page: WordSection1;
        }

        /* List Definitions */
        ol {
            margin-bottom: 0in;
        }

        ul {
            margin-bottom: 0in;
        }

        .head {
            color: #1f4380;
            font-size: 30px;
            text-align: center;
            margin-bottom: 30px;
            font-family: Arial;
        }

    </style>
</head>
<body>
<form action="" id="validate" method="post">
    <jsp:include page="header.jsp" />    
    
    <div style="background-color: #f3f3f3;">
        <div class="container" style="text-align: justify;background-color: #f3f3f3;font-family: 'Arial Black'"><br>

            <h2 class="head"><b>PhilSys &#10004; Terms of Use</b></h2><br>

            <h5 style="color: #1f4380;">Chapter 1. ACCEPTANCE OF TERMS</h5><br>

            <p class=MsoNormal>By accessing and using the website, the User ("Relying Party", "Use/') agrees and
                consents to comply with the following terms of use of the website ("Service") of the
                PhilSys Registry Office ("PRO", "the organization", "site" , "we").</p><br>

            <h5 style="color: #1f4380;"><b>Chapter 2. DESCRIPTION OF SERVICES</b></h5><br>

            <p class=MsoNormal>The PhilSys &#10004; (read as check) is a website that uses rndustry standard algorithms
                for
                relying parties (public and private establishments) to reliably verifo that the information
                contained in the QR Code found in the cardholder's Philippine ldentification (PhillD) has
                not been tampered with. </p><br>

            <h5 style="color: #1f4380;"><b>Chapter 3. RESPONSIBILITY OF PSA</b></h5><br>

            <p class=MsoNormal>The Philippine Statistics Authority (PSA) is the primary implementing agency to carry
                out the provisions of the Republic Act No. 11055 (RA 11055) or the Philippine
                ldentification System Act. As part of its mandate, the PSA shall issue rules in
                implementation and enhancement of the PhilSys, including, but not limited to
                registration, authentication, and data governance.</p>

            <p class=MsoNormal>The PSA with the technical assistance of the Department of lnformation and
                Communications Technology (DICT) shall implement reasonable and appropriate
                organization and technical security measures in all services of the PhilSys.</p>

            <p class=MsoNormal>The PSA further adheres to the provisions of RA 11073 otherwise known as the Data
                Privacy Act of 2012, and all issuances and advisory opinions issued by the National
                Privacy Commission related to privacy and security.</p><br>

            <h5 style="color: #1f4380;"><b>Chapter 4. PERSONAL LIMITATION</b></h5><br>

            <p class=MsoNormal><b>Information Automatically Collected</b></p>

            <p class=MsoNormal>When you access or use&nbsp;<a href="https://verify.philsys.gov.ph/"
                                                              style="color: #01a0e4">https://verify.philsys.gov.ph</a>,
                we store log information, including
                date and time of visit to the site, the first name of the registered person being
                authenticated, and the result of the authenticalion. We also collect contact details when
                you use our Contact Us and Feedback forms.</p><br>

            <h5 style="color: #1f4380;"><b>Chapter 5. LIMITED AND PERMITTED USE </b></h5><br>

            <p class=MsoNormal>By using the website, you are granted a non-exclusive, non-transferable, revocable
                license (a) to access and use the website skictly with this agreement; and (b) to use this
                site solely for online verification of the PhillD owner's identity.</p><br>

            <h5 style="color: #1f4380;"><b>Chapter 6. RESERVATION OF RIGHTS</b></h5><br>

            <p class=MsoNormal>The PSA shall not be held liable to any fault, problem, or grievances led by usage of
                another third-party app.</p>

            <p class=MsoNormal>The PRO reserves its rights such as, but not limited to, change of features of the
                Service, blockage of lP addresses or browsers, immediate termination or suspension of
                your access, without furlher warnings.</p><br>

            <h5 style="color: #1f4380;"><b>Chapter 7. PENAL PROVISIONS</b></h5><br>

            <p class=MsoNormal>Any person who utilizes the PhillD or PSN in an unlawful manner or use the same to
                commit any fraudulent act or for other unlawful purpose/s shall be punished with
                imprisonment of not less than six months but more than two years or a fine of not less
                than Fifty Thousand Philippine Pesos (&#8369; 50,000.00) but not more than Five Hundred
                Thousand Philippine Pesos (&#8369; 500,000.00), or both, at the discretion of the court.
                Exclusive of penal provisions from RA 10173 or the Data Privacy Act of 2012.</p>

            <p class=MsoNormal>Any information obtained as a result of unlaMul use of the PhilSys &#10004; shall be
                inadmissible in any judicial, quasi-judicial or administrative proceeding.</p><br>

            <h5 style="color: #1f4380;"><b>Chapter 8. PRIVACY AND PROTECTION OF PERSONAL INFORMATION</b></h5><br>

            <p class=MsoNormal><a href="PrivacyPolicy" style="color: #01a0e4">Please click here for the Privacy
                Notice. </a>. &nbsp;</p><br>

            <h3 style="color: #1f4380;font-size: 20px">CONTACT INFORMATION</h3><br>

            <h5 style="color: #1f4380">Contact information provided is strictly for each concern provided. </h5><br>

            <h5 style="color: #1f4380">For technical issues with the PhilSys &#10004;, you may directly contact:</h5>
            <br>
            <h4 style="font-size: 20px"><strong>TECHNICAL SUPPORT</strong></h4>
            <p class=MsoNormal><a href="mailto:verify.support@philsys.gov.ph" style="color: #01a0e4;">verify.support@philsys.gov.ph</a>
            </p><br>

            <p class=MsoNormal><strong>For non-acceptance of PhilID concern:</strong></p>
            <p class=MsoNormal><strong>OLIVER CHANCOCO</strong></p>
            <p class=MsoNormal>Project Development Officer IV</p>
            <p class=MsoNormal>PhilID Advocacy Unit</p>
            <p class=MsoNormal>Use Case Development and Management Service</p>
            <p class=MsoNormal>PhilSys Registry Office</p>
            <p class=MsoNormal><a href="mailto:o.chancoco@psa.gov.ph" style="color: #01a0e4">o.chancoco@psa.gov.ph </a>
            </p><br>


            <p class=MsoNormal><strong>For data privacy concerns, please contact:</strong></p>
            <p class=MsoNormal><strong>ELIEZER P. AMBATALI</strong></p>
            <p class=MsoNormal>Interim Data Privacy Officer</p>
            <p class=MsoNormal>Director III </p>
            <p class=MsoNormal>Legal Service</p>
            <p class=MsoNormal><a href="mailto:legal.staff@psa.gov.ph" style="color: #01a0e4">legal.staff@psa.gov.ph</a>
            </p><br>

            <p class=MsoNormal><strong>For fraud related concerns, please contact:</strong></p>

            <p class=MsoNormal><strong>ATTY. HENEDINE P. PALABRAS</strong></p>
            <p class=MsoNormal>Registration Officer V</p>
            <p class=MsoNormal>Fraud Management Division</p>
            <p class=MsoNormal>PhilSys Registry Office</p>
            <p class=MsoNormal style="margin-bottom: 0px"><a href="mailto:fmd.staff@psa.gov.ph" style="color: #01a0e4;">fmd.staff@psa.gov.ph </a>&nbsp;
            </p><br>
            <div class="row">
                <div class="col-lg-5">
                    <p class="MsoNormal" style="color: black"><b>Attachment:</b></p>
                    <p><i class="fas fa-file-pdf fa-1.5px" style="color:#be1b1b"></i>
                        <a href="img/Terms%20of%20Use.pdf" download="Terms_Of_Use" target="_blank" class=MsoNormal
                           style="color: #01a0e4;"><u>Terms Of Use</u></a></p>
                </div>
            </div>
            <br>
        </div>

    </div>



    <!-- footer -->
    </div>

    
</form>

 <jsp:include page="footer.jsp"/>
 
 
</body>
</html>


