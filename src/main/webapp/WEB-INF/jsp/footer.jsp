<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style>
  
  .footer--container {
    font-weight : normal !important;
  }
  .padding-5 {
    padding:15px; 
  }
  .footer--bottom--logo {
      width: 100%;
      max-width: 350px;
  }


</style>
  
  
  
  
  
  
  
    <style type="text/css">



        .footer--bottom--logo {
            width: 100%;
            max-width: 350px;
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
        @media (max-width: 500px) {
            .version-txt {
                font-size: 18px !important;
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

            .spacer {
                flex: 1 1 auto;
            }

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

        @media (min-width: 768px) and (max-width: 1024px) {

            /* CSS */
            .header--logo1 {
                height: 90px;
                width: 90%;
                margin-left: 15px;
            }

            .spacer {
                flex: 1 1 auto;
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

            header--logo1 {
                height: 115px;
                width: 100%;
            }

            .footer-logo_flex {
                max-width: 150px;
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
            box-sizing: border-box;
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

        @media (min-width: 768px) {
            .col-md-1 {
                flex: 0 0 auto;
                width: 8.3333333333%;
            }
        }

        @media (min-width: 768px) {
            .col-md-3 {
             /*   -ms-flex: 0 0 25%;*/
                flex: 0 0 auto !important;

            }
        }


        @media (min-width: 576px) {
            .col-sm-12 {
                flex: 0 0 auto !important;

            }

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
        @media (min-width: 992px) {


            .col-lg-2 {
                flex: 2 0 auto;
                width: 16.6666666667%;
            }
        }

        @media (min-width: 768px) {
            .col-md-1 {
                flex: 0 0 auto;
                width: 8.3333333333%;
            }
        }
        @media (min-width: 576px) {
            .col-sm-12 {
                flex: 0 0 auto;

            }
        }
            @media (min-width: 481px) and (max-width: 767px) {

            /* CSS */
            .header--logo1 {
                height: 90px;
                width: 90%;
                margin-left: 15px;


            }

            .spacer {
                flex: 1 1 auto;
            }

        }

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
                max-width: 100%;
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
                width: 74%;
                margin-left: 63px;

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


    </style>  
</style>
<body>
    
        <%--    <div class="footer-logo">--%>

        <%--        <img class="footer-logo-space" src="img/idnatin.png"--%>
        <%--        >--%>

        <%--    </div>--%>

        <!-- footer -->
        <div class="footer--container padding-5">
            <div class="row" style="justify-content: center;text-align: center;">
                <%--                <div class=" col-md-2 col-sm-12 col-lg-2">--%>
                <%--                    <div class="mx-auto">--%>
                <%--                        <div class="version-txt">--%>
                <%--                            <a href="offlineEnrolmentPage">HOME</a></div>--%>
                <%--                    </div>--%>
                <%--                    <!--<hr class="clearfix w-100 d-md-none">-->--%>
                <%--                </div>--%>
                <div class=" col-md-3 col-sm-12 col-lg-2">
                    <div class="mx-auto">
                        <div class="version-txt">
                            <a href="offlineEnrolmentPage">HOME</a></div>
                    </div>
                    <!--<hr class="clearfix w-100 d-md-none">-->
                </div>
                <div class=" col-md-3 col-sm-12 col-lg-2">
                    <div class="mx-auto">
                        <div class="version-txt">
                            <a href="abtpqrcvs">ABOUT PHILSYS &#10004;</a></div>
                    </div>
                    <!--<hr class="clearfix w-100 d-md-none">-->
                </div>

                <div class=" col-md-3 col-sm-12 col-lg-2">
                    <div class="mx-auto">
                        <div class="version-txt"><a href="FAQs">FAQS</a></div>

                    </div>
                    <!--  <hr class="clearfix w-100 d-md-none">-->
                </div>


                <div class=" col-md-2 col-sm-12 col-lg-2">
                    <div class="mx-auto">
                        <div class="version-txt"><a href="termsOfUse" >TERMS OF USE</a></div>
                    </div>
                    <!-- <hr class="clearfix w-100 d-md-none">-->
                </div>


                <div class=" col-md-3 col-sm-12 col-lg-2">
                    <div class="mx-auto">
                        <div class="version-txt"><a href="PrivacyPolicy">PRIVACY POLICY</a></div>
                    </div>
                    <!-- <hr class="clearfix w-100 d-md-none">-->
                </div>


                <div class=" col-md-3 col-sm-12 col-lg-2">
                    <div class="mx-auto">
                        <div class="version-txt"><a href="ContactUs">CONTACT US</a></div>
                    </div>
                    <!-- <hr class="clearfix w-100 d-md-none">-->
                </div>


            </div>

            <div><img src="img/bg1.png" style="width: 100%;height: 3px"></div>


            <div class="row nomargin">
                <div class="col-md-3 col-sm-12 col-lg-3">
                    <div class="mx-auto">
                        <h5 class="font-family font-weight-bold text-uppercase mt-3 mb-4 padding-top"
                            style="color: white">
                            REPUBLIC OF THE PHILIPPINES
                        </h5>
                        <li class="font-family" style="color: white;list-style: none;">
                            All content is in the public domain unless otherwise stated.
                        </li>

                        <h5 class="font-weight-bold text-uppercase mt-3 mb-4 padding-top"
                            style="color: white;   font-family: Arial; padding-top: 50px">
                            <div style="margin-top: 20px;justify-content: center">
                                <%--                <a href="https://www.facebook.com/PSAPhilSysOfficial/" target="_blank" style="padding-right: 13px">--%>
                                <%--                    <i class="fab fa-facebook-f" aria-hidden="true"></i>--%>
                                <%--                </a>--%>
                                <a style="padding-right: 20px" href="https://www.facebook.com/PSAPhilSysOfficial/"
                                   target="_blank">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="white"
                                         class="bi bi-facebook" viewBox="0 0 16 16">
                                        <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z"/>
                                    </svg>
                                </a>


                                <a href="https://www.philsys.gov.ph/" target="_blank">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor"
                                         class="bi bi-globe2" viewBox="0 0 16 16">
                                        <path d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm7.5-6.923c-.67.204-1.335.82-1.887 1.855-.143.268-.276.56-.395.872.705.157 1.472.257 2.282.287V1.077zM4.249 3.539c.142-.384.304-.744.481-1.078a6.7 6.7 0 0 1 .597-.933A7.01 7.01 0 0 0 3.051 3.05c.362.184.763.349 1.198.49zM3.509 7.5c.036-1.07.188-2.087.436-3.008a9.124 9.124 0 0 1-1.565-.667A6.964 6.964 0 0 0 1.018 7.5h2.49zm1.4-2.741a12.344 12.344 0 0 0-.4 2.741H7.5V5.091c-.91-.03-1.783-.145-2.591-.332zM8.5 5.09V7.5h2.99a12.342 12.342 0 0 0-.399-2.741c-.808.187-1.681.301-2.591.332zM4.51 8.5c.035.987.176 1.914.399 2.741A13.612 13.612 0 0 1 7.5 10.91V8.5H4.51zm3.99 0v2.409c.91.03 1.783.145 2.591.332.223-.827.364-1.754.4-2.741H8.5zm-3.282 3.696c.12.312.252.604.395.872.552 1.035 1.218 1.65 1.887 1.855V11.91c-.81.03-1.577.13-2.282.287zm.11 2.276a6.696 6.696 0 0 1-.598-.933 8.853 8.853 0 0 1-.481-1.079 8.38 8.38 0 0 0-1.198.49 7.01 7.01 0 0 0 2.276 1.522zm-1.383-2.964A13.36 13.36 0 0 1 3.508 8.5h-2.49a6.963 6.963 0 0 0 1.362 3.675c.47-.258.995-.482 1.565-.667zm6.728 2.964a7.009 7.009 0 0 0 2.275-1.521 8.376 8.376 0 0 0-1.197-.49 8.853 8.853 0 0 1-.481 1.078 6.688 6.688 0 0 1-.597.933zM8.5 11.909v3.014c.67-.204 1.335-.82 1.887-1.855.143-.268.276-.56.395-.872A12.63 12.63 0 0 0 8.5 11.91zm3.555-.401c.57.185 1.095.409 1.565.667A6.963 6.963 0 0 0 14.982 8.5h-2.49a13.36 13.36 0 0 1-.437 3.008zM14.982 7.5a6.963 6.963 0 0 0-1.362-3.675c-.47.258-.995.482-1.565.667.248.92.4 1.938.437 3.008h2.49zM11.27 2.461c.177.334.339.694.482 1.078a8.368 8.368 0 0 0 1.196-.49 7.01 7.01 0 0 0-2.275-1.52c.218.283.418.597.597.932zm-.488 1.343a7.765 7.765 0 0 0-.395-.872C9.835 1.897 9.17 1.282 8.5 1.077V4.09c.81-.03 1.577-.13 2.282-.287z"/>
                                    </svg>
                                </a>
                            </div>
                        </h5>
                        <%--                    <a href="mailto:verify.support@philsys.gov.ph" target="_blank">--%>
                        <%--                    <li class="font-family" style="color: white;list-style: none;">verify.support@philsys.gov.ph</li></a>--%>
                        <%--                    <li class="font-family" style="color: white;list-style: none;">--%>
                        <%--                        <a href="termsOfUse"  target="_blank" id="termsOfUse" style="font-family: Arial;"> Terms Of Use </a>--%>
                        <%--                    </li>--%>

                    </div>
                    <!--  <hr class="clearfix w-100 d-md-none">-->
                    <%--                <i class="fab fa-facebook-f" aria-hidden="true" style="color: white"></i>--%>


                </div>


                <div class=" col-md-3 col-sm-12 col-lg-3">
                    <div class="mx-auto">
                        <h5 class="font-family font-weight-bold text-uppercase mt-3 mb-4 padding-top"
                            style="color: white">
                            ABOUT GOV PH
                        </h5>
                        <!--                <ul style="color: white;list-style: none">-->
                        <li class="font-family" style="list-style: none;color: white;">
                            Learn more about the Philippine government,its structure,
                            how government works and the people behind it.
                        </li>

                        <!--                </ul>-->

                        <h5 class="font-family font-weight-bold text-uppercase mt-3 mb-4 padding-top"
                            style="color: white">
                            <!-- GOV PH-->
                            <a class="font-family" href="http://www.gov.ph/">GOV.PH</a>
                        </h5>
                        <!--                <ul style="color: white;list-style: none">-->
                        <!--<li style="list-style: none;color: white;">Open Data portal</li>-->


                        <li class="font-family" style="list-style: none;color: white;"><a href="https://data.gov.ph/">Open
                            Data Portal</a></li>
                        <li class="font-family" style="list-style: none;color: white;"><a
                                href="http://www.officialgazette.gov.ph">Official Gazette</a></li>
                        <!--                </ul>-->
                    </div>

                </div>

                <div class=" col-md-3 col-sm-12 col-lg-3">
                    <div class="mx-auto">
                        <h5 class="font-family font-weight-bold text-uppercase mt-3 mb-4 padding-top"
                            style="color: white">
                            GOVERNMENT LINKS
                        </h5>

                        <li class="font-family" style="list-style: none;color: white;">

                            <a href="https://op-proper.gov.ph/">Office of the President</a></li>
                        <li class="font-family" style="list-style: none;color: white;">
                            <a href="http://ovp.gov.ph/">Office of the Vice President</a></li>
                        <li class="font-family" style="list-style: none;color: white;">
                            <a href="http://www.senate.gov.ph/">Senate of the Philippines</a></li>
                        <li class="font-family" style="list-style: none;color: white;">
                            <a href="http://www.congress.gov.ph/">House of Representatives</a></li>
                        <li class="font-family" style="list-style: none;color: white;">
                            <a href="http://sc.judiciary.gov.ph/">Supreme Court</a></li>
                        <li class="font-family" style="list-style: none;color: white;">
                            <a href="http://ca.judiciary.gov.ph/">Court of Appeals</a></li>
                        <li class="font-family" style="list-style: none;color: white;">
                            <a href="http://sb.judiciary.gov.ph/">Sandiganbayan</a></li>

                    </div>

                    <!-- <hr class="clearfix w-100 d-md-none">-->
                </div>

                <div class=" col-md-3 col-sm-12 col-lg-3 footer-logo-center">


                    <div class="mx-auto">
                        <a>
                            <img src="img/footer-headr.png" class="footer--bottom--logo" />
                        </a>

                        <%--                    <p class="font-family" style="text-align: center;color: white;padding-top: 10px;"></p>--%>

                    </div>


                </div>
            </div>


        </div>


    
</body>
</html>