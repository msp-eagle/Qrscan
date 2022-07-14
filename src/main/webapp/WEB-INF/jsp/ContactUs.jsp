<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="shortcut icon" href="img/logo10.png" type="image/x-icon"/>
    <script type="text/javascript" src="js/plugins/sweetalert/sweetalert.min.js"></script>
    <script type='text/javascript' src='js/plugins/jquery-validation/jquery.validate.js'></script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <script type="text/javascript" src="js/local/jquery.min.js"></script>
    <script type="text/javascript" src="js/local/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/local/popper.min.js"></script>
    <link rel="stylesheet" type="text/css" id="theme" href="js/local/bootstrap.min.css"/>
    <link rel="stylesheet" href="js/plugins/sweetalert2/sweetalert2.css"/>
    <script type="text/javascript" src="js/plugins/sweetalert2/sweetalert2.js"></script>
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.min.css'></link>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>
</head>
<script type="text/javascript">
    function sendmsg() {
        document.getElementById("validate").action = "<%=request.getContextPath()%>/mailcontact";
        document.getElementById("validate").submit();
    }
</script>
<c:if test="${successMessage != null}">
    .
    <script>
        Swal.fire({
            title: 'success!',
            text: '${successMessage}',
            type: 'success'
        });
    </script>

</c:if>
<c:if test="${errorMessage != null}">
    <script>
        swal({
            title: 'Sorry!',
            text: '${errorMessage}',
            type: 'error'
        });
    </script>
</c:if>
<%--
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
</script>--%>

<style type="text/css">

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

    .space1 {
        padding-bottom: 35px;
        background-color: #f7f5f5;

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


    .header-middle-content h6, .header-middle-content h2 {


        padding: 4px 2px;
        color: white;
        height: 10%;
        width: 100%;
    }

    a:link, a:visited {
        color: white;
        /*padding: 15px 25px;*/
        text-align: center;
        text-decoration: none;
        display: inline-block;
    }


    @media (max-width: 500px) {
        .version-txt {
            font-size: 8px;
            font-family: Arial;
            font-weight: 50;
            display: block;
            padding-bottom: -200px;

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

    body {
        margin: 0;
        padding: 0;

    }


    .contact-wrapper {
        /*display: flex;*/
        flex-direction: row;
        justify-content: space-between;
        margin: 0 auto;
        padding: 20px;
        position: relative;
        max-width: 840px;
    }


    .send-button {
        margin-top: 15px;
        /*height: 34px;*/
        Width: 100%;
        overflow: hidden;
        /*transition: all .2s ease-in-out;*/
    }


    .list-item {
        line-height: 4;
        color: #1f4380;
    }


    .contact-text a {
        color: #1f4380;
        text-decoration: none;
        transition-duration: 0.2s;
    }

    .contact-text a:hover {
        color: #1f4380;
        text-decoration: none;
    }


    .social-media-list li a {
        color: #fff;
    }

    .social-media-list li {
        position: relative;
        display: inline-block;
        height: 60px;
        width: 60px;
        margin: 10px 3px;
        line-height: 60px;
        border-radius: 50%;
        color: #fff;
        background-color: rgb(27, 27, 27);
        cursor: pointer;
        transition: all .2s ease-in-out;
    }

    .social-media-list li:after {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        width: 60px;
        height: 60px;
        line-height: 60px;
        border-radius: 50%;
        opacity: 0;
        box-shadow: 0 0 0 1px #fff;
        transition: all .2s ease-in-out;
    }

    .social-media-list li:hover {
        background-color: #1f4380;
    }

    .social-media-list li:hover:after {
        opacity: 1;
        transform: scale(1.12);
        transition-timing-function: cubic-bezier(0.37, 0.74, 0.15, 1.65);
    }

    .social-media-list li:hover a {
        color: #1f4380;
    }

    hr {
        border-color: #1f4380;
    }

    /* Begin Media Queries*/
    @media screen and (max-width: 850px) {
        .contact-wrapper {
            display: flex;
            flex-direction: column;
        }


        .social-media-list li {
            height: 60px;
            width: 60px;
            line-height: 60px;
        }

        .social-media-list li:after {
            width: 60px;
            height: 60px;
            line-height: 60px;
        }
    }

    @media screen and (max-width: 569px) {

        .social-media-list li {
            height: 55px;
            width: 55px;
            line-height: 55px;
            font-size: 2rem;
        }

        .social-media-list li:after {
            width: 55px;
            height: 55px;
            line-height: 55px;
        }

    }

    @media screen and (max-width: 410px) {
        .send-button {
            width: 99%;
        }
    }

</style>

<body>

<jsp:include page="header.jsp" />

<div style="background-color: #f3f3f3">

    <div class="container" style="  font-family: Arial;"><br>

        <div class="row contact-wrapper">
            <div class="col-sm-6">

                <form:form class="form-horizontal" method="post" id="validate">
                    <div class="form-group"><br><br>
                        <div class="col-sm-12" style="padding: 0px">
                            <input type="text" class="form-control" id="Name" placeholder="NAME" name="Name" value=""
                                   required>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-12" style="padding: 0px">
                            <input type="email" class="form-control" id="Email" placeholder="EMAIL" name="Email"
                                   value="" required>
                        </div>
                    </div>

                    <textarea class="form-control" rows="10" placeholder="MESSAGE" name="Message" id="Message"
                              required></textarea>


                    <button class="btn btn-primary send-button" onclick="sendmsg()">SEND MESSAGE</button>

                </form:form>

            </div>

            <div class="col-sm-6">
                <form><br><br>
                    <ul class="contact-list">
                        <div class=""
                             style="list-style-type:none;font-family: Arial;color: #1f4380;fontsize:16px;font-weight: bold;padding-left: 0px;width:400px">
                            EMAIL US : <u>verify.support@philsys.gov.ph</u>
                        </div>
                        <br>
                        <div class=""
                             style="list-style-type:none;font-family: Arial;color: #1f4380;fontsize:16px;font-weight: bold;padding-left: 0px;width:400px">
                            CALL US : +63 998 555 4266
                        </div>
                        <br>
                        <div class="">
                            <h5 style="color: #1f4380"><b>Connect With Us</b></h5>
                        </div>

                        <li class="list-item">
                            <a style="padding-right: 20px" href="https://www.philsys.gov.ph/philsys" target="_blank">
                                <img src="img/web.png" style: width="55" height="55">
                            </a><a href="https://www.philsys.gov.ph/philsys"
                                   style="color: #1f4380">psa.gov.ph/philsys</a>
                        </li>
                        <li class="list-item">
                            <a style="padding-right: 20px" href="https://www.facebook.com/PSAgovph" target="_blank">
                                <img src="img/facebook.png" style: width="50" height="50">
                            </a>
                            <a href="https://www.facebook.com/PSAgovph" style="color: #1f4380">PhilippineStatisticsAuthority</a>
                        </li>
                        <li class="list-item">
                            <a style="padding-right: 20px" href=" https://www.facebook.com/PSAPhilSysOfficial"
                               target="_blank">
                                <img src="img/facebook.png" style: width="50" height="50">
                            </a><a href=" https://www.facebook.com/PSAPhilSysOfficial" style="color: #1f4380">PSAPhilSysOfficial</a>
                        </li>
                        <%--                    <hr>--%>
                </form>
            </div>

        </div>

    </div>

</div>
</div>
<div class="space1">
</div>

<jsp:include page="footer.jsp"/>

</body>
</html>

