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
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
          integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
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
    <link rel="stylesheet" type="text/css" id="theme" href="js/local/bootstrap.min.css"/>

    <!--
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> -->
    <!-- END PLUGINS -->

<!--     <script type="text/javascript">
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
    </script> -->
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
            color: ;
            text-decoration: none;
            background-color: transparent;
            -webkit-text-decoration-skip: objects;
        }


        .space1 {
            padding-bottom: 35px;
            background-color: #f7f5f5;

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

            .imageOfbanner {
                width: 500px;
                margin-top: 50px;
                margin-bottom: 50px;
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

            .imageOfbanner {
                width: 500px;
                margin-top: 50px;
                margin-bottom: 50px;
            }

        }

        @media (max-width: 670px) {

            .imageOfbanner {
                width: 500px;
                margin-top: 50px;
                margin-bottom: 50px;
            }

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

        .img-100 {
            height: 10%;
            width: 10%;
            object-fit: cover;
        }

        .main-content {
            padding: 80px 0px;
        }

        .jumbotron {
            padding: 1rem 1rem !important;
        }

        .content-title {
            color: var(--s-color);
        }

        .top-search {
            border-radius: 0px !important;
        }

        .nav-item > a {
            padding-left: 10px !important;
            padding-right: 10px !important;
            font-weight: italic;
        }

        .top-input-form {
            padding: 0px 0px 0px 10px;
        }

        .top-search-input {
            height: 30px !important;
        }

        .header-middle-content > h4 {
            font-style: bold;
        }

        .top-hr {
            margin-top: 2px !important;
            margin-bottom: 2px !important;
            border-top: 2px solid white;
        }


        /* The container <div> - needed to position the dropdown content */
        .dropdown {
            position: relative;
            display: inline-block;
        }

        /* Dropdown Content (Hidden by Default) */

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

            .imageOfbanner {
                width: 500px;
                margin-top: 50px;
                margin-bottom: 50px;
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

            .imageOfbanner {
                width: 500px;
                margin-top: 50px;
                margin-bottom: 50px;
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

        .font-bold2 {
            font-size: 1.5rem;
            font-weight: bold;
        }

        .footer-background {
            background: #e9e9eb;
            text-align: center;
            color: white;
        }

        .textcenter {
            font-family: Arial;
            text-align: center;
            color: white;
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


        p.MsoNormal, li.MsoNormal, div.MsoNormal {
            margin-top: 0in;
            margin-right: 0in;
            margin-bottom: 10.0pt;
            margin-left: 0in;
            line-height: 115%;
            font-size: 15pt;
            font-family: Arial;
            color: #294278;
        }

        h2 {
            mso-style-link: "Heading 2 Char";
            margin-top: 10.0pt;
            margin-right: 0in;
            margin-bottom: 0in;
            margin-left: 0in;
            line-height: 115%;
            page-break-after: avoid;
            font-size: 23.0pt;
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

        span

        .1
        {
            mso-style-name: ? ? ? ? ? ? ? ? ? ? ? 1
        ;
            color: blue
        ;
            text-decoration: underline
        ;
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

        .acolor {

            color: black;

        }

        .imageOfbanner {
            width: 1000px;
            margin-top: 50px;
            margin-bottom: 50px;
        }

        .dataprivacy {
            margin-top: 0in;
            margin-right: 0in;
            margin-bottom: 10.0pt;
            margin-left: 0in;
            line-height: 115%;
            font-size: 15pt;
            font-family: Arial;
            color: #294278;
        }

        .heading {
            color: #294278;
            font-size: 35px;
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
    <div style="background-color: #f3f3f3">

        <div class="container">
            <div class=WordSection1 style="text-align: justify;"><br>

                <h2 class="head" style="margin-top:0px;"><b>PhilSys &#10004; Privacy Policy</b></h2>


                <p class=MsoNormal><b>Last updated: April 18, 2022</b><br><br>PhilSys Registry Office (PRO) respects the
                    privacy of its data subjects and
                    recognizes the need for appropriate measures to protect the data collected
                    in accordance with Republic Act No. 10173, or otherwise known as the
                    Data Privacy Act (DPA) of 2012, and other issuances of the National
                    Privacy Commission. </p>

                <p class=MsoNormal>This policy is to inform our clients on how the data are handled when they
                    visit the PhilSys &#10004; (read as check) website. This policy is subject to
                    change at any time and its revision shall be posted on this site.
                </p><br>

                <p class=MsoNormal><b>USE</b></p><br>

                <p class=MsoNormal>ln general, we are using the personal data you entrusted us for the
                    following purposes:
                </p>

                <p class=MsoListParagraphCxSpMiddle>1.For the convenience of the registered person to review his or her
                    authentication transactions using PhilSys &#10004;;</p>
                <p class=MsoListParagraphCxSpMiddle>2.To know your feedback on your experience using the PhilSys
                    &#10004; for our
                    assessment; and
                </p>
                <p class=MsoListParagraphCxSpMiddle>3.To gather your information for analysis and statistical purposes
                    regarding your experience in the authentication process using the
                    PhilSys &#10004;.
                </p>
                <p class=MsoListParagraphCxSpMiddle>lnformation sent through the "Contact Us" and feedback forms shall
                    be
                    used only to contact us or provide feedback. ln responding to requests, the
                    information provided may be viewed by various people within the PRO.</p> <br>

                <p class=MsoNormal><b>COLLECTION AND PROCESSING</b></p> <br>

                <p class=MsoNormal>The Philippine Statistics Authority (PSA) web server makes a record of the
                    following data when the PhilSys &#10004; is used by a relying party to
                    authenticate a registered person and through the Contact us and Feedback
                    forms:
                </p>

                <p class=MsoListParagraphCxSpMiddle> 1.The date and time of visit;</p>
                <p class=MsoListParagraphCxSpMiddle> 2.The first name of the registered person (when being
                    authenticated);</p>
                <p class=MsoListParagraphCxSpMiddle> 3.The result of the authentication; and</p>
                <p class=MsoListParagraphCxSpMiddle> 4.Contact details (collected via Contact Us and Feedback
                    forms).</p>

                <p class=MsoNormal>Our website uses session cookies by default but are deleted when you
                    leave our website.</p> <br>
                <p class=MsoNormal><b> DATA PROTECTION, SHARING, AND RETENTION</b></p> <br>

                <p class=MsoNormal> This website uses a SSL certificate to encrypt connections between the
                    user's browser and our server. Only authorized personnel of PSA shall be
                    allowed to have access to your data. The data collected shall not be
                    disclosed outside PSA without the user's consent, except when authorized
                    or required by law. We shall retain your personal data only as may be
                    necessary for the fulfillment of the purpose/s for which the personal data
                    were collected which shall not exceed two (2) years from the date of
                    collection, after which it shall be disposed of in a secure manner to avoid
                    further processing and risks of unauthorized disclosure.</p> <br>

                <p class=MsoNormal><b>DATA PRIVACY RIGHTS AND FEEDBACK</b></p> <br>

                <p class=MsoNormal>

                    Should you wish to <a href="" style="color: #01a0e4;word-wrap: break-word;">
                    exercise your rights</a> as a data subject enumerated
                    under Section 34 of the IRR of DPA ol 2012 or should you have any
                    inquiries and feedback on this Privacy Policy, you may reach us through
                    our "Contact Us" menu in our website at
                    <a href="ContactUs" style="color: #01a0e4;word-wrap: break-word;">
                        https://verify.philsys.gov.ph/contact-us</a>,
                    through a written letter, or through
                    an email to our Data Privacy Officer (DPO).</p>

                <p class="MsoNormal">You may also reach below personnel for your concerns or inquiries. </p>
                <br>

                <div class="row">
                    <div class="col-lg-8"><p class="dataprivacy"><b>ELIEZER P. AMBATALI</b></p>
                        <p class="dataprivacy"><b>Interim Data Privacy Officer<br>
                            Director III<br>
                            Legal Service<br>
                            PSA Complex, East Avenue, Diliman, Quezon City 1101<br>
                            Office: PhilSys Registry Office via hotline number 1388<br>
                            Email address:<a href="mailto:legal.staff@psa.gov.ph" style="color: #01a0e4">legal.staff@psa.gov.ph</a><br>
                        <p class="MsoNormal" style="color: black"><b>Attachment:</b></p>
                        <p><i class="fas fa-file-pdf fa-1.5px" style="color:#be1b1b"></i>
                            <a href="img/Privacy%20Policy.pdf" download="Privacy_Policy" target="_blank" class=MsoNormal
                               style="color: #01a0e4;"> Privacy Policy </a></p>

                    </div>
                    <br>
                </div>

            </div>


        </div>
    </div>  
    <input type="hidden" id="username" name="username">


    <div class="space1">
    </div>


  
</form>
  <!-- footer -->
  
  <jsp:include page="footer.jsp"/>
</body>
</html>


