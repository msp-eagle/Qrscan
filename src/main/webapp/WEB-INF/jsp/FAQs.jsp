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
    <script type="text/javascript"
            src="js/plugins/sweetalert/sweetalert.min.js"></script>
    <script type='text/javascript'
            src='js/plugins/jquery-validation/jquery.validate.js'></script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <%--    <script type="text/javascript" src="js/local/jquery.min.js"></script>--%>
    <%--    <script type="text/javascript" src="js/local/bootstrap.min.js"></script>--%>
    <%--    <script type="text/javascript" src="js/local/popper.min.js"></script>--%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <%--    <link rel="stylesheet" type="text/css" id="theme" href="js/local/bootstrap.min.css" />--%>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://use.fontawesome.com/releases/v5.7.2/css/all.css"></script>
    <!--     <script type = "text/javascript">
        history.pushState(null, document.title, location.href);
        history.back();
        history.forward();
        window.onpopstate = function () {
            history.go(1);
        };
        </script> -->

    <!-- <script type="text/javascript">
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
 -->
    <script>
        function myFunction() {
            var input, filter, table, tr, td, i, txtValue;
            input = document.getElementById("myInput");
            filter = input.value.toUpperCase();
            table = document.getElementById("myAccordion");
            tr = table.getElementsByTagName("h2");
            hr = table.getElementsByTagName("hr");
            for (i = 0; i < tr.length; i++) {
                td = tr[i].getElementsByTagName("button")[0];
                if (td) {
                    txtValue = td.textContent || td.innerText;
                    if (txtValue.toUpperCase().indexOf(filter) > -1) {
                        tr[i].style.display = "";
                        hr[i].style.display = "none";
                    } else {
                        tr[i].style.display = "none";
                    }
                }
            }
        }
    </script>


    <style type="text/css">

        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial;

        }

        body {
            background-image: linear-gradient(to right top);
            min-height: 100vh
        }

        .wrapper {
            max-width: 760px;
            margin: 50px auto;
            padding: 40px 20px
        }

        .wrapper .search {
            border: 1px solid #c8c8c8;
            overflow: hidden;
            border-radius: 25px;
            padding: 0 10px;
            margin: 15px 0 20px;
            transition: all 0.3s
        }

        .wrapper .search:hover,
        .wrapper .search:focus-within {
            border: 1px solid transparent;
            box-shadow: 2px 5px 8px #1f1f1f10, 0px -4px 5px #1f1f1f10
        }

        .wrapper .search .form-control {
            box-shadow: none;
            outline: none;
            border: none
        }

        .wrapper .search .form-control:focus::placeholder {
            opacity: 0
        }

        .wrapper .accordion-button {
            font-size: 0.9rem;
            font-weight: 500
        }

        .wrapper .accordion-button:hover {
            background-color: #f8f8f8
        }

        .wrapper .accordion-button:focus {
            box-shadow: none
        }

        .wrapper .accordion-button::after {
            background-size: 1rem;
            display: flex;
            align-items: center;
            justify-content: center;
            border: 1px solid #c8c8c8;
            background-position: center center;
            border-radius: 50%
        }

        .wrapper .accordion-button:not(.collapsed) {
            color: #000;
            /*background-color: #f7f7f7;*/
            font-weight: 600;
            border-bottom: 1px solid #ddd !important
        }

        .accordion-button:not(.collapsed)::after {
            border-color: #1E88E5
        }

        .wrapper .accordion-button.collapsed {
            border-bottom: 1px solid #ddd !important
        }

        .wrapper .accordion-collapse.show {
            border-bottom: 1px solid #ddd !important
        }

        .wrapper .accordion-collapse {
            /*background-color: #eaf3fa*/
        }

        .wrapper .accordion-collapse ul li {
            line-height: 2rem;
            width: 100%;
            padding: 0.5rem 1.3rem
        }

        .wrapper .accordion-collapse ul li:hover {
            /*background-color: #c9e7ff*/
        }

        .wrapper .accordion-collapse ul li a {
            text-decoration: none;
            color: #333;
            font-size: 0.85rem;
            font-weight: 400;
            display: block
        }

        .wrapper .accordion-collapse ul li:hover a {
            color: #222
        }

        .mat-container--header {
            display: flex;
            flex-direction: row;
            justify-content: space-between;
            height: 130px;
            background-color: #1f4380;
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

        .main {
            position: relative;
            margin-top: 68px;
            min-height: 5rem;
            overflow: hidden;
        }

        .header--logo {
            vertical-align: middle;
            cursor: pointer;
            /* UX enhancement */
            /* padding-left: 4%;*/
            /*background-color: white;*/
            /* UX enhancement end */
        }

        .mat-headr {
            display: flex;
            box-sizing: border-box;
            padding: 0;
            width: 100%;
            flex-direction: row;
            align-items: center;
            white-space: nowrap;
            height: 140px;
        }


        /*
          ##Device = Desktops
          ##Screen = 1281px to higher resolution desktops
        */
        @media  (max-width: 765px) {
           .align {
                 width:300px !important;
            }
            .alignment {
                margin-left:300px !important;
                padding-top:9px !important;

            }


        }

        @media  (max-width: 360px) {
            .align {
                width:100px !important;
            }
            .alignment {
                margin-left:170px !important;
                padding-top:9px !important;

            }


        }
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


        :root {
            --p-color: #2670b6;
            --s-color: #15159c;
            --pbg-color: #fff;
            --sbg-color: #ff0000;
            --a-color: #fff;


        }


        a {


            text-decoration: none;
            /*background-color: transparent;*/
            -webkit-text-decoration-skip: objects;
        }

        .footer--bottom--logo {
            width: 100%;
            max-width: 350px;
        }

        .space1 {
            padding-bottom: 35px;
            background-color: #f7f5f5;

        }


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

        .font-family {
            font-family: Arial;
        }


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

        .mat-container--header {
            display: flex;
            flex-direction: row;
            justify-content: space-between;
        }


        .mat-container--header {
            display: flex;
            flex-direction: row;
            justify-content: space-between;
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


        .header-background {
            /*display: flex;*/
            /*box-sizing: border-box;*/
            padding: 0 0px;
            width: 100%;
            flex-direction: row;
            align-items: center;
            white-space: nowrap;
            height: 140px;
            background-color: #1f4380;
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
            /*.dropdown-content a:hover {background-color: #ddd;}*/
            /* Show the dropdown menu on hover */
        .dropdown:hover .dropdown-content {
            display: block;
        }

        /* Change the background color of the dropdown button when the dropdown content is shown */
        .dropdown:hover .dropbtn {
            color: black;
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


        .version-txt {
            font-size: 20px;
            font-family: Arial;
            font-weight: 100;
            display: block;
            padding-bottom: 10px;
            padding-top: 10px;
            color: white;
            font-family: Arial;
        }

        .footer--container {
            background-color: #1f4380;
            background-repeat: no-repeat;
            background-size: cover;
        }

        .nomargin {
            margin: 0px !important;
        }

        .padding-top {
            padding-top: 20px;
        }

        .footer-logo-center {
            display: flex;
            flex-direction: column;
            justify-content: center;
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

        p.MsoNormal, li.MsoNormal, div.MsoNormal {
            margin-top: 0in;
            margin-right: 0in;
            margin-bottom: 10.0pt;
            margin-left: 0in;
            line-height: 115%;
            font-size: 20.0pt;
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


        .isPasted {
            text-align: center;
            padding-top: 35px;
            color: #1f4380;
            margin-bottom: 50px;
        }

        strong {
            color: #1f4380;
        }

        .faq {
            font-family: Arial;
            color: #1f4380;
        }

        .bt {
            padding: 0px;
            color: #1f4380;
            font-family: Arial;
            font-weight: bold;

        }

        .margin {
            margin: 15px;
            color: #1f4380;
            font-family: Arial;
            line-height: 30px;
        }

        .margin1 {
            margin: 23px;
            color: #1f4380;
            font-family: Arial;
            line-height: 30px;
        }

        .margin2 {
            margin-bottom: 20px;
            padding-left: 24px;
        }

        .input-icons i {
            position: absolute;

        }

        .input-icons {
            width: 50%;
            margin-bottom: 10px;
        }

        .icon {
            padding: 10px;
            color: green;
            min-width: 50px;

        }

        .input-field {
            width: 100%;
            padding: 10px;

        }
    </style>

</head>
<body>
<form action="" id="validate" method="post">
         <jsp:include page="header.jsp" /> 
         <div style="background-color: #f3f3f3;">
        <div class="accordion accordion-flush " id="myAccordion" class="faq"><br>
            <div class="container">
            <div class="input-icons" style="border:#1f4380;">
                <i class="fa fa-search icon alignment" id="searchbar-icon"
                   style="margin-left: 588px; background-color: #1f4380;color: white;padding-top:8px;"></i>
                <input type="text" id="myInput" class="align"
                       placeholder="   Ask a question" onkeyup="myFunction()"
                       style="height:35px;width:640px;border-color:#1f4380;padding-right:200px"/>
            </div>
            <br>
            <div class="container" style="text-align: justify;background-color: #fffffc;  font-family: Arial;margin-bottom:25px">

                <div class="accordion accordion-flush " id="myAccordion" class="faq">
                    <table></table>

                    <div class="accordion-item">

                        <h2 class="accordion-header" id="flush-headingOne">
                            <button class="accordion-button collapsed border-0 bt" style="padding-top: 20px"
                                    type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse1"
                                    aria-expanded="false" aria-controls="flush-collapse1">
                                1 Q: What is the PhilSys &#10004;?
                            </button>
                        </h2>

                        <div id="flush-collapse1" class="accordion-collapse collapse border-0"
                             aria-labelledby="flush-headingOne"
                             data-bs-parent="#myAccordion">
                            <div class="accordion-body p-0">
                                <ul class="list-unstyled m-0">
                                    <li><p class="margin">A: The PhilSys &#10004; (read as check) is an authentication
                                        tool which involves a website that uses public-private key cryptography which
                                        allows the relying parties to verify the authenticity of PSA-issued QR Code. Any
                                        computer or smart device with a camera and internet browser with internet access
                                        can use the PhilSys &#10004; website.</p></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <hr>


                    <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-headingOne">
                            <button class="accordion-button collapsed border-0 bt " type="button"
                                    data-bs-toggle="collapse" data-bs-target="#flush-collapse2" aria-expanded="false"
                                    aria-controls="flush-collapse2">
                                2 Q: Is everyone allowed to use the website?
                            </button>
                        </h2>

                        <div id="flush-collapse2" class="accordion-collapse collapse border-0"
                             aria-labelledby="flush-headingOne"
                             data-bs-parent="#myAccordion">
                            <div class="accordion-body p-0">
                                <ul class="list-unstyled m-0">
                                    <li class="margin"><p>A: Yes. The PhilSys &#10004; is available to the general
                                        public.</p></li>

                                </ul>
                            </div>
                        </div>
                    </div>

                    <hr>

                    <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-headingOne">
                            <button class="accordion-button collapsed border-0 bt" type="button"
                                    data-bs-toggle="collapse" data-bs-target="#flush-collapse3" aria-expanded="false"
                                    aria-controls="flush-collapse3">
                                3 Q: Do we need a webcam in order to use the website?
                            </button>
                        </h2>

                        <div id="flush-collapse3" class="accordion-collapse collapse border-0"
                             aria-labelledby="flush-headingOne"
                             data-bs-parent="#myAccordion">
                            <div class="accordion-body p-0">
                                <ul class="list-unstyled m-0">
                                    <li class="margin"><p>A: Yes. An integrated camera for a laptop or a mobile phone
                                        with (back) camera is needed in order to scan the QR code of a PhilID.</p></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <hr>


                    <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-headingOne">
                            <button class="accordion-button collapsed border-0 bt" type="button"
                                    data-bs-toggle="collapse" data-bs-target="#flush-collapse4" aria-expanded="false"
                                    aria-controls="flush-collapse4">
                                4 Q: How can we use the website?
                            </button>
                        </h2>

                        <div id="flush-collapse4" class="accordion-collapse collapse border-0"
                             aria-labelledby="flush-headingOne"
                             data-bs-parent="#myAccordion">
                            <div class="accordion-body p-0">
                                <ul class="list-unstyled m-0">
                                    <li class="margin"><p>A: Visit <em><u><a href="https://verify.philsys.gov.ph/"
                                                                             style="color: #01a0e4">https://verify.philsys.gov.ph/</a></u></em>,click
                                        the "Scan QR Code" button, and scan the QR code printed at the back of your
                                        PhilID.</p></li>

                                </ul>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-headingOne">
                            <button class="accordion-button collapsed border-0 bt" type="button"
                                    data-bs-toggle="collapse" data-bs-target="#flush-collapse5" aria-expanded="false"
                                    aria-controls="flush-collapse5">
                                5 Q: Do we need to contact the Philippine Statistics Authority (PSA) in order to use the
                                website?
                            </button>
                        </h2>

                        <div id="flush-collapse5" class="accordion-collapse collapse border-0"
                             aria-labelledby="flush-headingOne"
                             data-bs-parent="#myAccordion">
                            <div class="accordion-body p-0">
                                <ul class="list-unstyled m-0">
                                    <li class="margin "><p>A: No. The PhilSys &#10004; can be accessed by anyone without
                                        the need to contact the PSA.</p></li>

                                </ul>
                            </div>
                        </div>
                    </div>

                    <hr>


                    <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-headingOne">
                            <button class="accordion-button collapsed border-0 bt" type="button"
                                    data-bs-toggle="collapse" data-bs-target="#flush-collapse6" aria-expanded="false"
                                    aria-controls="flush-collapse6">
                                6 Q: Is it available on smartphones?
                            </button>
                        </h2>

                        <div id="flush-collapse6" class="accordion-collapse collapse border-0"
                             aria-labelledby="flush-headingOne"
                             data-bs-parent="#myAccordion">
                            <div class="accordion-body p-0">
                                <ul class="list-unstyled m-0">
                                    <li><p class="margin">A: Yes. As of the moment, it is only available for Android
                                        mobile devices with camera and internet connection.</p></li>

                                </ul>
                            </div>
                        </div>
                    </div>
                    <hr>

                    <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-headingOne">
                            <button class="accordion-button collapsed border-0 bt" type="button"
                                    data-bs-toggle="collapse" data-bs-target="#flush-collapse7" aria-expanded="false"
                                    aria-controls="flush-collapse7">
                                7 Q: Is there a recommended specification?
                            </button>
                        </h2>

                        <div id="flush-collapse7" class="accordion-collapse collapse border-0"
                             aria-labelledby="flush-headingOne"
                             data-bs-parent="#myAccordion">
                            <div class="accordion-body p-0">
                                <ul class="list-unstyled m-0">
                                    <li class="margin"><p>A:The following specifications are recommended for devices
                                        that will be used in scanning the PhilID QR code to ensure smooth and successful
                                        verification. Please note that using devices with lower specifications may
                                        result in unsuccessful QR code scanning and verification.</p>
                                    </li>
                                    <div class="margin">
                                        <li>General Rule</li>
                                        <div style="padding-left: 20px">
                                            <li>- Photo quality of 720p or higher</li>
                                            <li>- No visual effects and enhancements</li>
                                            <li> - Well-lit operating environment</li>
                                            <li> - Ensure all four (4) edges of the QR code are captured</li>
                                            <li> - Optimal scanning distance is 3-5 inches</li>
                                        </div>

                                        <li>Smartphone</li>
                                        <div style="padding-left: 20px">
                                            <li>- Back camera: 13MP, 48MP and 64MP, 1080p resolution</li>
                                            <li> - Android Version: 9 (Pie), 10 (Q), and 11 (R)</li>
                                            <li>- Browser: Google Chrome (version 98)</li>
                                            <li> - Back camera should have autofocus</li>
                                            <li> - Camera exposure adjustment feature should be disabled to avoid
                                                detection lagging issues
                                            </li>
                                            <li> - Camera must be at a stable position as any movement may affect
                                                performance
                                            </li>

                                        </div>
                                        <li>Laptop Camera</li>
                                        <div style="padding-left: 20px">

                                            <li>- Camera: integrated, HD (2.1MP), 720p resolution</li>
                                            <li>- OS: PC: Windows 11, Macbook: MacOS High Sierra</li>
                                            <li> - Browser: Google Chrome (version 98) / Mozilla Firefox (version 97)
                                            </li>
                                        </div>

                                    </div>

                                </ul>

                            </div>
                        </div>
                    </div>

                    <hr>


                    <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-headingOne">
                            <button class="accordion-button collapsed border-0 bt" type="button"
                                    data-bs-toggle="collapse" data-bs-target="#flush-collapse8" aria-expanded="false"
                                    aria-controls="flush-collapse8">
                                8 Q: Is there a recommended device?
                            </button>
                        </h2>

                        <div id="flush-collapse8" class="accordion-collapse collapse border-0"
                             aria-labelledby="flush-headingOne"
                             data-bs-parent="#myAccordion">
                            <div class="accordion-body p-0">
                                <ul class="list-unstyled m-0 margin">
                                    <div class="margin">
                                        <li><p>A:The following devices were tested and were able to successfully scan
                                            the PSA-issued QR code through the PhilSys &#10004;.</p>

                                        <li> 1. Asus X202E Laptop Integrated Camera</li>
                                        <li> 2. Lenovo ThinkPad (L14 Gen 1) Laptop Integrated Camera</li>
                                        <li> 3. Macbook Air 2017</li>
                                        <li> 4. Huawei Nova 3i</li>
                                        <li> 5. Oppo Reno 4</li>
                                        <li> 6. Redmi Note 9</li>
                                        <li> 7. Xioami 10T</li>
                                        <li> 8. Samsung Galaxy A50</li>
                                    </div>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <hr>

                    <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-headingOne">
                            <button class="accordion-button collapsed border-0 bt" type="button"
                                    data-bs-toggle="collapse" data-bs-target="#flush-collapse9" aria-expanded="false"
                                    aria-controls="flush-collapse9">
                                9 Q: Do we see the photo of the card holder when it is successfully verified?
                            </button>
                        </h2>

                        <div id="flush-collapse9" class="accordion-collapse collapse border-0"
                             aria-labelledby="flush-headingOne"
                             data-bs-parent="#myAccordion">
                            <div class="accordion-body p-0">
                                <ul class="list-unstyled m-0">
                                    <li class="margin"><p>A: No. The system would provide the demographic information of
                                        the individual embedded in the QR code of the PhilID.</p>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <hr>


                    <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-headingOne">
                            <button class="accordion-button collapsed border-0 bt" type="button"
                                    data-bs-toggle="collapse" data-bs-target="#flush-collapse10" aria-expanded="false"
                                    aria-controls="flush-collapse10">
                                10 Q: What data do we get when a PhilID is successfully verified?
                            </button>
                        </h2>

                        <div id="flush-collapse10" class="accordion-collapse collapse border-0"
                             aria-labelledby="flush-headingOne"
                             data-bs-parent="#myAccordion">
                            <div class="accordion-body p-0">
                                <ul class="list-unstyled m-0">
                                    <div class="margin1">
                                        <li><p>A: A successful PhilID QR Code scanning will generate a message: "PhilID
                                            QR Code SUCCESSFULLY VERIFIED". The following demographic information of the
                                            cardholder shall also be shown:</p></li>

                                        <li>Last Name</li>
                                        <li>First Name</li>
                                        <li>Middle Name</li>
                                        <li>Suffix</li>
                                        <li>Sex</li>
                                        <li>Date of Birth</li>
                                        <li>Place of Birth</li>
                                        <li>Philsys Card Number (PCN)</li>
                                        <li>Date of Issuance</li>
                                    </div>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <hr>

                    <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-headingOne">
                            <button class="accordion-button collapsed border-0 bt" type="button"
                                    data-bs-toggle="collapse" data-bs-target="#flush-collapse11" aria-expanded="false"
                                    aria-controls="flush-collapse11">
                                11 Q: What does it mean when the PhilID has been REVOKED or is INACTIVE?
                            </button>
                        </h2>

                        <div id="flush-collapse11" class="accordion-collapse collapse border-0"
                             aria-labelledby="flush-headingOne"
                             data-bs-parent="#myAccordion">
                            <div class="accordion-body p-0">
                                <ul class="list-unstyled m-0">
                                    <div class="margin1">
                                        <li><p>A: The PhilID has been revoked by the PhilSys and is NOT active due to
                                            the following possible reasons:</p></li>

                                        <li>1. A new PhilID has been issued to the same person;</li>
                                        <li>2. The PhilID may have been misused; or</li>
                                        <li>3. The PhilID may have been reported lost or stolen.</li>

                                        <li>To report this issue, you may bring the PhilID card to the nearest PhilSys
                                            Registration Center or send an email at info@philsys.gov.ph.
                                        </li>
                                    </div>
                                </ul>
                            </div>
                        </div>
                    </div>


                    <hr>

                    <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-headingOne">
                            <button class="accordion-button collapsed border-0 bt" type="button"
                                    data-bs-toggle="collapse" data-bs-target="#flush-collapse12" aria-expanded="false"
                                    aria-controls="flush-collapse12">
                                12 Q: What does it mean when the PhilID QR code is NOT RECOGNIZED?
                            </button>
                        </h2>

                        <div id="flush-collapse12" class="accordion-collapse collapse border-0"
                             aria-labelledby="flush-headingOne"
                             data-bs-parent="#myAccordion">
                            <div class="accordion-body p-0">
                                <ul class="list-unstyled m-0">
                                    <li><p class="margin1">A: The QR Code is either damaged or the information encoded
                                        has been tampered with.</p></li>
                                    <li><p class="margin1">To report this issue, you may bring the PhilID card to the
                                        nearest PhilSys Registration Center or send an email at info@philsys.gov.ph.</p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-headingOne">
                            <button class="accordion-button collapsed border-0 bt" type="button"
                                    data-bs-toggle="collapse" data-bs-target="#flush-collapse13" aria-expanded="false"
                                    aria-controls="flush-collapse13">
                                13 Q: What should we do if the verification results show that the PhilSys QR code is NOT
                                RECOGNIZED?
                            </button>
                        </h2>

                        <div id="flush-collapse13" class="accordion-collapse collapse border-0"
                             aria-labelledby="flush-headingOne"
                             data-bs-parent="#myAccordion">
                            <div class="accordion-body p-0">
                                <ul class="list-unstyled m-0">
                                    <li><p class="margin1">A:We encourage the PhilID cardholder to bring their PhilID
                                        card to the nearest PhilSys Registration Center or email
                                        info@philsys.gov.ph.</p></li>

                                </ul>
                            </div>
                        </div>
                    </div>

                    <hr>


                    <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-headingOne">
                            <button class="accordion-button collapsed border-0 bt" type="button"
                                    data-bs-toggle="collapse" data-bs-target="#flush-collapse14" aria-expanded="false"
                                    aria-controls="flush-collapse14">
                                14 Q: Do you have a manual for the PhilSys &#10004;?
                            </button>
                        </h2>

                        <div id="flush-collapse14" class="accordion-collapse collapse border-0"
                             aria-labelledby="flush-headingOne"
                             data-bs-parent="#myAccordion">
                            <div class="accordion-body p-0">
                                <ul class="list-unstyled m-0">
                                    <li class="margin1">A: Yes.<a href="img/Handbook - PhilSys ✓ Handbook_v2.0.pdf"
                                                                  style="color: #01a0e4" download>Click this link to
                                        download the PhilSys &#10004; Handbook.</a></li>

                                </ul>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-headingOne">
                            <button class="accordion-button collapsed border-0 bt" style="padding-bottom:20px "
                                    type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse15"
                                    aria-expanded="false" aria-controls="flush-collapse15">
                                15 Q: Is there a video that shows how to use the PhilSys &#10004;?
                            </button>
                        </h2>

                        <div id="flush-collapse15" class="accordion-collapse collapse border-0"
                             aria-labelledby="flush-headingOne"
                             data-bs-parent="#myAccordion">
                            <div class="accordion-body p-0">
                                <ul class="list-unstyled m-0">
                                    <li class="margin2" style="margin-bottom: 20px">A: Yes.<a
                                            href="img/PhilID_Demo_video.mp4" style="color: #01a0e4"> Click this link to
                                        watch the PhilSys &#10004; Demo Video.</a></li>
                                    <br>
                                </ul>
                            </div>
                        </div>
                    </div>

                </div>


            </div>
            </div>
           <!--  <div class="space1">
            </div> -->


            <!-- footer -->
        </form>
         <jsp:include page="footer.jsp"/>
</body>
</html>
