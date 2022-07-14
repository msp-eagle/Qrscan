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
    <link rel="stylesheet" type="text/css" id="theme" href="js/local/bootstrap.min.css"/>

    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> -->

    <!-- END PLUGINS -->
    <script type="text/javascript">
        window.onload = function () {
            var message = document.getElementById("message").value;

            if (message != null && message != "" && message != "/") {
            }
        }

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
        .background {
            background: #f7f5f5;
            hight: 100%;
            width: 100%;

        }

        .header--logo1 {
            /*// vertical-align: middle;
             cursor: pointer;*/


        }

        .header--logo {

            cursor: pointer;
            /* UX enhancement */
            /* padding-left: 4%;*/
            /*background-color: white;*/
            /* UX enhancement end */
        }


        .button-column {
            flex-direction: column;
        }

        .button--center {

            align-content: center;

        }

        .nomargin {
            margin: 0px !important;
        }

        .font-family {
            font-family: Arial;
        }
        .row {
            display: -ms-flexbox;
            display: flex;
            -ms-flex-wrap: wrap;
            flex-wrap: wrap;
            margin-right: -15px;
            margin-left: -15px;
        }

        .w-150 {
            width: 300px;
            background-color: #1f4380;
            color: white;
            text-align: center;
            font-family: Arial;
        }

        .button-p10 {
            padding: 10px;
            cursor: pointer;
            min-height: 50px;
            border: 3px solid #f1b608;
            box-shadow: 0 3px 1px -2px rgba(0, 0, 0, .2), 0 2px 2px 0 rgba(0, 0, 0, .14), 0 1px 5px 0 rgba(0, 0, 0, .12);
            border-radius: 15px;
        }

        .text-center {
            text-align: center;
        }

        .text-heading-background {
            font-size: 20px;
            font-family: Arial;
        }

        .text-background {
            font-size: 16px;
            font-family: Arial;
        }

        .text-sub-heading-background {
            font-size: 18px;
            font-family: Arial;
        }

        .font-bold {
            font-size: 1.8rem;
            font-weight: bold;

        }

        .font-bold2 {
            font-size: 1.5rem;
            font-weight: bold;
        }
        .blue-color {
            color: #1f4380;
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

        .nomargin {
            margin: 0px !important;
        }

        @media (max-width: 500px) {
            .version-txt {
                font-size: 8px;
                font-family: Arial;
                font-weight: 50;
                display: block;
                padding-bottom: -200px;

            }

            .text-center {
                text-align: center;
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
          ##Device = Tablets, Ipads (portrait)
          ##Screen = B/w 768px to 1024px
        */

        @media (min-width: 768px) and (max-width: 1024px) {

            /* CSS */
            .header-background {
                /*display: flex;*/
                box-sizing: border-box;
                padding: 0 0px;
                width: 100%;
                flex-direction: row;
                align-items: center;
                white-space: nowrap;
                height: 212px;
                background-color: #1f4380;
            }

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

            .text-center {
                text-align: center;
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
            .header-background {
                /*display: flex;*/
                box-sizing: border-box;
                padding: 0 0px;
                width: 100%;
                flex-direction: row;
                align-items: center;
                white-space: nowrap;
                height: 212px;
                background-color: #1f4380;
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

            .text-center {
                text-align: center;
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

            .text-center {
                text-align: center;
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

        .body {
            font-family: Arial;
            position: relative;
            background: var(--textColor);
            font-size: var(--fontSize);
            color: var(--textBlueColor);
            overflow-x: hidden;
            top: 0 !important;
        }

        a {
            font-family: Arial;
            color: var(--a-color) !important;
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
        .header--logo1 {
            /*// vertical-align: middle;
             cursor: pointer;*/
            height: 110px;
            width: 461px;
            margin-left: 15px;


        }

        .header--logo {
            vertical-align: middle;
            cursor: pointer;
            /* UX enhancement */
            /* padding-left: 4%;*/
            /*background-color: white;*/
            /* UX enhancement end */
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


        .text-center {
            text-align: center;
        }




        .h-140 > a > img {
            height: 100%;
            width: 100%;
            object-fit: contain;
        }

        .carousel-item img {
            height: 100%;
            width: 100%;
            object-fit: cover;
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

        .footer-logo {
            display: flex;
            justify-content: center;
            background-color: #f7f5f5;

        }

        a:link, a:visited {
            color: white;
            /*padding: 15px 25px;*/
            text-align: center;
            text-decoration: none;
            display: inline-block;
        }

        .nomargin {
            margin: 0px !important;
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
        .nomargin {
            margin: 0px !important;
        }

        .padding-5 {
            padding-bottom: 5px;
        }
        @media (max-width: 500px) {
            .version-txt {
                font-size: 8px;
                font-family: Arial;
                font-weight: 50;
                display: block;
                padding-bottom: -200px;

            }

            .header--logo1 {
                height: 90px;
                width: 90%;
                margin-left: 15px;

            }

            .text-center {
                text-align: center;
            }

            .footer-background > .container {
                padding-top: 25px;
            }

            .w-150 {
                width: 150px;
                background-color: #1f4380;
                color: white;
                border: 3px solid #1f4380;
                border-radius: 5px;
                padding: 10px;
                cursor: pointer;
                min-height: 50px;
                font-family: Arial;
            }

            button-p10 {
                padding: 10px;
                cursor: pointer;
                min-height: 50px;
                border: 3px solid #1f4380;
                box-shadow: 0 3px 1px -2px rgba(0, 0, 0, .2), 0 2px 2px 0 rgba(0, 0, 0, .14), 0 1px 5px 0 rgba(0, 0, 0, .12);
                border-radius: 5px;
            }

            .box-text {
                border-color: blue;
            }

            .page {
                hight: 60%;
                width: 100%;
            }

            .text-color {
                color: #1f4380;
                font-size: 20px;
                font-family: Arial;
            }

            .header--logo1 {
                /*// vertical-align: middle;
               cursor: pointer;*/

                height: 110px;
                width: 461px;
                margin-left: 15px;
                margin-right: 15px;
                margin-top: 12px;

            }

            .header--logo {
                vertical-align: middle;
                cursor: pointer;
                /* UX enhancement */
                /* padding-left: 4%;*/
                /*background-color: white;*/
                /* UX enhancement end */
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
        }
    </style>
</head>
<body>
<form action="" id="validate" method="post">
<jsp:include page="header.jsp" />

    <div class="background">
        <!--<div class="container-fluid">-->
        <!--<img style="
             float: right;
             width: 100%;
             height: 100px;" src="assets/img/thumbmark_logo.png" />-->

        <div class="footer--bottom">
            <div class="row nomargin">
                <div class=" col-md-1 col-sm-12 col-lg-1">

                </div>
                <div class=" col-md-4 col-sm-12 col-lg-4">
                    <div class="mx-auto">
                        <br>

                        <div class="text-heading-background blue-color padding-5 ext-font-size text-center  font-bold">
                            PhilID has been
                        </div>
                        <div class="text-heading-background blue-color  ext-font-sizepadding-5 text-center font-bold">
                            REVOKED
                        </div>
                        <div class="text-heading-background blue-color padding-5 ext-font-size text-center  font-bold">
                            or is INACTIVE
                        </div>
                        <div class=" button-column text-center button--center padding-b-t">

                            <img class="header--logo1 header--logo" src="img/error2.png"
                                 style="width: 200px; height: 200px;"/>

                        </div>
                    </div>


                </div>


                <div class=" col-md-1 col-sm-12 col-lg-1">

                </div>


                <div class=" col-md-6  col-sm-12 col-lg-6">
                    <div class="mx-auto">
                        <br>
                        <div class="text-sub-heading-background lue-color p-18  font-bold2 text-center  blue-color">
                            Sorry!
                        </div>
                        <div class="text-background blue-color">
                            <p class="boldText " style="margin-bottom: 0px;text-align: center;padding-right:54px;">
                                The PhilID has been revoked by the PhilSys and is NOT active due to the following
                                possible reason:</p></div>
                    </div>
                    <div class="row">
                        <div class="col-md-2"></div>
                        <div class="col-md-10s">
                            <ol>
                                <div class="text-background blue-color ">
                                    <p class="boldText "> <li> A new PhilID has been issued to the same person.</li></p>
                                    </div>
                                <div class="text-background blue-color ">
                                    <p class="boldText "><li> The PhilID may have been misused.</li></p>
                                 </div>
                                <div class="text-background blue-color ">
                                    <p class="boldText "> <li> The PhilID may have been reported as lost or stolen.</li></p>
                                </div>


                            </ol>

                        </div>
                        <div class="text-background blue-colors">
                            <p class="boldText blue-color" style="text-align:unset;">
                                <b> FOR RELYING PARTIES:</b> Please report this issue immediately to PSA via
                                info@philsys.gov.ph. Kindly request the client to present another identification
                                document
                                to proceed with their respective transaction/s and inform them that they can file a
                                report
                                on the matter to PSA at info@philsys.gov.ph, Hotline 1388, and<a
                                    href="https://www.facebook.com/PSAPhilSysOfficial"><u style="color: #1f4380;">https://www.facebook.com/PSAPhilSysOfficial.</u></a>
                            </p></div>
                        <div class="text-background blue-colors">
                            <p class="boldText  blue-color">
                                <b>FOR PHILID CARDHOLDERS:</b>Kindly present another identification document to
                                proceed with your transaction/s and report the issue immediately to PSA at
                                info@philsys.gov.ph, Hotline 1388, and <a
                                    href="https://www.facebook.com/PSAPhilSysOfficial"><u style="color: #1f4380;">https://www.facebook.com/PSAPhilSysOfficial.</u></a>
                            </p></div>

                    </div>
                    <div class="text-background blue-color text-center">

                        <button class="font-family w-150 button-p10 button--center " onclick="gotoScan();">
                            TRY AGAIN

                        </button>
                    </div>

                </div>
            </div>

            <br>
            <br>
        </div>

    </div>

    <input type="hidden" id="username" name="username">




        <!-- footer -->
       </form>
       <jsp:include page="footer.jsp"/>
</body>
</html>


