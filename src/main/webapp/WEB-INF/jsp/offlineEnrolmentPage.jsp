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
        href="css />
    <link rel="stylesheet" type="text/css" id="theme"
        href="js/plugins/sweetalert/sweetalert.css" />--%>
    <!-- EOF CSS INCLUDE -->
    <!-- START PLUGINS -->
    <!-- <script type="text/javascript" src="js/plugins/jquery/jquery.min.js"></script> -->
    <!-- <script type="text/javascript" src="js/plugins/jquery/jquery-ui.min.js"></script> -->

    <%--<script type="text/javascript" src="js/instascan.min.js"></script>--%>
    <%--<script type="text/javascript" src="js/local/adapter.min.js"></script>--%>
    <script type="text/javascript" src="js/local/jquery.min.js"></script>
    <script type="text/javascript" src="js/local/vue.min.js"></script>
    <%-- <script type="text/javascript" src="js/local/bootstrap.min.js"></script>--%>
    <%--<script type="text/javascript" src="js/local/popper.min.js"></script>--%>

    <link rel="stylesheet" type="text/css" id="theme"
          href="js/local/bootstrap.min.css"/>

    <script type="text/javascript" src="js/plugins/sweetalert/sweetalert.min.js"></script>

    <!-- <script type='text/javascript'
        src='js/plugins/jquery-validation/jquery.validate.js'></script> -->
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css">
    <script type="text/javascript"
            src="https://cdnjs.cloudflare.com/ajax/libs/webrtc-adapter/3.3.3/adapter.min.js"></script>

    <!--  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.1.10/vue.min.js"></script>  -->
    <script type="text/javascript" src="https://rawgit.com/schmich/instascan-builds/master/instascan.min.js"></script>
<%--        <script type="text/javascript" src="js/plugins/instascan.min.js"></script>--%>
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
</head>
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
        if (event.keyCode == 123) {dasd
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
--%>



<!-- END PLUGINS -->
<script type="text/javascript">
    window.document.onkeydown = function (e) {
        if (!e) {
            e = event;
        }
        if (e.keyCode == 27) {
            lightbox_close();
        }
    }

    function lightbox_open() {
        var lightBoxVideo = document.getElementById("VisaChipCardVideo");
        window.scrollTo(0, 0);
        document.getElementById('light').style.display = 'block';
        document.getElementById('fade').style.display = 'block';
        lightBoxVideo.play();
    }

    function lightbox_close() {
        var lightBoxVideo = document.getElementById("VisaChipCardVideo");
        document.getElementById('light').style.display = 'none';
        document.getElementById('fade').style.display = 'none';
        lightBoxVideo.pause();
    }

    var scanner;
    var isMobile = /iPhone|iPad|iPod|Android/i.test(navigator.userAgent);

    function startWebcam() {

        scanner = new Instascan.Scanner(
            {
                video: document.getElementById('preview'),


            }
        );

        $('#preview').show();
        $('#scanimage').hide();


        scanner.addListener('scan', function (content) {

            if(!isMobile){
                CamScan(content);
            }

        });

        if (navigator.userAgent.indexOf("Android") != -1) {
            Instascan.Camera.getCameras().then(cameras => {/*
		          if(cameras.length >= 1){
		        	  getCamListForMob(cameras.length);
		              scanner.start(cameras[1]);
		          } else if(cameras.length >= 0){
		        	  getCamListForMob(cameras.length);
		        	  scanner.start(cameras[0]);

		          } else {
		        	  console.error("Camera not found!");
		          } */


                if (cameras.length > 0) {
                    getCamList(cameras);
                    var cam = document.getElementById("startbtn").value;
                    scanner.start(cameras[cam]);
                } else {
                    console.error("Camera not found!");
                }
            });
        } else {

            Instascan.Camera.getCameras().then(cameras => {
                if (cameras.length > 0) {
                    getCamList(cameras);
                    var cam = document.getElementById("startbtn").value;

                    scanner.start(cameras[cam]);
                } else {
                    console.error("Camera not found!");
                }

            });
        }
        setTimeout(function () {
            scanner.stop();
            $('#stopbtn').hide();
            $('#startbtn').hide();
            $('#scanimage').show();
            $('#preview').hide();
        }, 100000);

        setTimeout(function () {
            $('#stopbtn').show();
            $('#startbtn').show();
        }, 4000);


    }


    function CamScan(result) {

        var markers = [{"qrdata": result}];
        stopWebcam();
        $.ajax({
            type: "POST",
            processData: false,
            contentType: "application/json; charset=utf-8",
            url: "scan",
            data: JSON.stringify({qrdata: markers}),
            success: function (data) {
                if( data.includes("errorpagenew")){
                    document.getElementById("validate").action = "<%=request.getContextPath()%>/notRegerrorpage";
                    document.getElementById("validate").submit();
                } else if(data != null && data != "" && data != "errorpage" && data.includes("new")) {
                    document.getElementById("username").value = data;
                    document.getElementById("validate").action = "<%=request.getContextPath()%>/newsucesspage";
                    document.getElementById("validate").submit();
                } else if (data != null && data != "" && data != "errorpage") {

                    document.getElementById("username").value = data;
                    document.getElementById("validate").action = "<%=request.getContextPath()%>/sucesspage";
                    document.getElementById("validate").submit();
                } else if (data == "errorpage") {
                    document.getElementById("validate").action = "<%=request.getContextPath()%>/errorpage";
                    document.getElementById("validate").submit();
                } else {
                    document.getElementById("validate").action = "<%=request.getContextPath()%>/notRegerrorpage";
                    document.getElementById("validate").submit();
                }

            }
        });
    }


    function stopWebcam() {

        scanner.stop();

        $('#stopbtn').hide();
        $('#startbtn').hide();
        $('#preview').hide();
        $('#scanimage').show();
    }
    function changeWebcam() {
        var cam = document.getElementById("startbtn").value;

        $('#preview').show();

        scanner.addListener('scan', function (content) {

            CamScan(content);

        });
        Instascan.Camera.getCameras().then(cameras => {

            scanner.start(cameras[cam]);

        });

    }

    function getCamList(camaras) {

        var camopt = document.getElementById("startbtn");


        var camlen = camopt.options.length;


        if (isMobile) {
            camopt.options[camopt.options.length - camlen] = new Option("Front Camera", 0);
        } else {

            camopt.options[camopt.options.length - camlen] = new Option(camaras[0].name, 0);
        }

        if (camaras.length > camlen) {

            var isBack = true;
            for (var i = camlen; i < camaras.length; i++) {
                if (isMobile) {
                    let cname = camaras[i].name;
                    if (isBack) {

                        if (cname.includes("back")) {

                            camopt.options[camopt.options.length] = new Option("Back Camera", i);
                            isBack = false;

                        }

                    }
                } else {
                    camopt.options[camopt.options.length] = new Option(camaras[i].name, i);
                }


            }
        }
    }

    window.onload = function () {

        var reloadval = sessionStorage.getItem("camv");
        var reloaded = sessionStorage.getItem("reload");
        if (reloaded) {
            if (reloadval == 0) {

                sessionStorage.removeItem("camv");
                sessionStorage.removeItem("reload");
                startWebcam();
            }
        }
    }


    function reloadP() {

        if (isMobile) {

            var camv = document.getElementById("startbtn").value;

            if (camv == 0) {
                sessionStorage.setItem("camv", camv);
                sessionStorage.setItem("reload", true);
                document.location.reload();
            } else {

                changeWebcam();
            }

        } else {
            changeWebcam();
        }
    }

</script>
<style type="text/css">
    .background {
        background: #f7f5f5;
        hight: 100%;
        width: 100%;

    }


    .button-column {
        flex-direction: column;
    }

    .button--center {

        align-content: center;
        margin-bottom:30px ;

    }

    /* Safari */
    @-webkit-keyframes spin {
        0% {
            -webkit-transform: rotate(0deg);
        }
        100% {
            -webkit-transform: rotate(360deg);
        }
    }

    @keyframes spin {
        0% {
            transform: rotate(0deg);
        }
        100% {
            transform: rotate(360deg);
        }
    }

    .video--center {
        transform: scaleX(-1);
        display: inline-block;
        padding-right: 47px;
    }

    .spacer {
        padding: 10px;
    }

    .w-150 {
        width: 300px;
        background-color: #1f4380;
        color: white;
        text-align: center;
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

    .text-background {
        font-size: 16px;
        font-family: Arial;
    }

    .text-sub-heading-background {
        font-size: 18px;
        font-family: Arial;
        /*font-family: gothem;*/
    }

    .font-bold {
        font-size: 1.5rem;
        font-weight: bold;

    }

    .bold {
        font-weight: 900;
    }

    .font-bold1 {

        font-weight: bold;
    }

    .heading {
        font-size: 16px;
        text-align: center;
        /*  font-weight: 500; */
        color: #1f4380;
    }


    .blue-color {
        color: #1f4380;
    }

    .p-10 {
        padding: 10px;
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

        .spacer {
            flex: 1 1 auto;
        }

    }


    /*
      ##Device = Desktops
      ##Screen = 1281px to higher resolution desktops
    */

    @media (min-width: 1281px) {

        /* CSS */
        .spacer {
            flex: 1 1 auto;
        }

        .video--center {
            transform: scaleX(-1);
            display: inline-block;
            padding-right: 1px;
            width: 100%;
        }
    }

    /*
      ##Device = Laptops, Desktops
      ##Screen = B/w 1025px to 1280px
    */

    @media (min-width: 1025px) and (max-width: 1280px) {

        /* CSS */
        .spacer {
            flex: 1 1 auto;
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

    @media (min-width: 1024px) and (max-width: 1366px) {

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

        .spacer {
            flex: 1 1 auto;
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
            width: 74%;
            margin-left: 63px;

        }
    }

    .spacer {
        flex: 1 1 auto;
    }

    /*
      ##Device = Low Resolution Tablets, Mobiles (Landscape)
      ##Screen = B/w 481px to 767px
    */

    @media (min-width: 481px) and (max-width: 767px) {

        /* CSS */
        .spacer {
            flex: 1 1 auto;
        }


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
    }

    /*
      ##Device = Most of the Smartphones Mobiles (Portrait)
      ##Screen = B/w 320px to 479px
    */

    @media (min-width: 320px) and (max-width: 480px) {

        /* CSS */
        .spacer {
            flex: 1 1 auto;
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

        .version-txt[_ngcontent-c8] {
            font-size: 8px;
            font-weight: 50;
            display: block;
            text-align: center;
            padding-bottom: 6px;
            padding-top: 6px;
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
        color: var(--a-color) !important;
        text-decoration: none;
        background-color: transparent;
        -webkit-text-decoration-skip: objects;
    }

    /*  body container css*/
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
    .spacer {
        flex: 1 1 auto;
    }




    .nav-border > ul > li:first-child {
        border-left: 1px solid gray;
    }

    .nav-border > ul > li {
        border-right: 1px solid gray;
    }

    .middle-header {
        background: white;
    }

    header--logo.bottom-banner {
        height: 140px;
        background: linear-gradient(to right, #226da5 0%, #2872c1 18%, #163d6a 100%);
    }


    /* .spacer {
      flex: 1 1 auto;
    } */
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

        .spacer {
            flex: 1 1 auto;
        }

    }


    @media (max-width: 670px) {


        .header--logo1 {
            height: 90px;
            width: 90%;
            margin-left: 15px;


        }

        .spacer {
            flex: 1 1 auto;
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



    /* The container <div> - needed to position the dropdown content */

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


    #stopbtn, #startbtn, #preview {
        display: none;
    }


    .text-font-size-welcome {
        font-size: 28px;
        font-weight: bold;
        line-height: 1.0;
    }

    #fade {
        display: none;
        position: fixed;
        top: 0%;
        left: 0%;
        width: 100%;
        height: 100%;
        background-color: black;
        z-index: 1001;
        -moz-opacity: 0.8;
        opacity: .80;
        filter: alpha(opacity=80);
    }

    #light {
        display: none;
        position: fixed;
        top: 50%;
        left: 50%;
        max-width: 1000px;
        max-height: 37px;
        margin-left: -500px;
        margin-top: -270px;
        /*border: 2px solid #FFF;*/
        background: #FFF;
        z-index: 1002;
        overflow: visible;
    }

    #boxclose {
        float: right;
        cursor: pointer;
        color: #fff;
        border: 1px solid #AEAEAE;
        border-radius: 3px;
        background: #222222;
        font-size: 31px;
        font-weight: bold;
        display: inline-block;
        line-height: 0px;
        padding: 11px 3px;
        position: absolute;
        right: 2px;
        top: 2px;
        z-index: 1002;
        opacity: 0.9;
    }

    .boxclose:before {
        content: "×";
    }

    #fade:hover ~ #boxclose {
        display: none;
    }

    .test:hover ~ .test2 {
        display: none;
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

    .btn video {
        padding-left: 15px;
        padding-right: 15px;
        padding-top: 10px;

    }
</style>


<body>
<form action="" id="validate" method="post">
    <input type="hidden" id="username" name="username">
</form>
<jsp:include page="header.jsp" />
<div class="background">
    <!--<div class="container-fluid">-->
    <!--<img style="
         float: right;
         width: 100%;
         height: 100px;" src="assets/img/thumbmark_logo.png" />-->


    <div class="row nomargin">

        <div class=" col-md-6 col-sm-12 col-lg-6">
            <div class="mx-auto">
                <br>
                <div class="text-sub-heading-background blue-color  text-center text-font-size-welcome font-bold"
                     style="text-shadow: 1px 0 #1f4380;">Welcome to the
                </div>
                <p style="text-align:center;"><img src="img/PhilSys_Logo-removebg-preview.png" style="width: 300px;">
                </p>
                <p style="text-align:center;"><img src="img/Click QR Code Logo.png" style="width: 200px;"
                                                   onclick="startWebcam()"></p>
            </div>
            <div id="scanimage">
                <div class=" button-column text-center button--center ">
                    <%--                <button class="w-150 button-p10" style=" font-family: Arial;" onclick="startWebcam();">--%>
                    <%--                    SCAN QR CODE--%>
                    <%--                </button>--%>
                </div>
                <div class="text-background blue-color p-10" style="text-align: center">
                    The PHILSYS &#10004; is developed for PhilSys Relying Parties or the public to authenticate a PhilID
                    cardholder's identification easier and faster.
                </div>
                <div class="text-background blue-color p-10" style="text-align: center">
                    Through this site, visitors can verify information contained in the QR code found at the back of a
                    PhilID card.
                </div>
                <div class="text-background blue-color p-10" style="text-align: center">

                    <div id="light">
                        <a class="boxclose" id="boxclose" onclick="lightbox_close();"></a>
                        <video id="VisaChipCardVideo" width="1000" controls>
                            <source src="img/PhilID_Demo_video_.mp4" type="video/mp4">
                        </video>
                    </div>
                    <div id="fade" onClick="lightbox_close();"></div>

                    <div>
                        <button class="btn video" onclick="lightbox_open()"><p
                                style="color: white;background-color:#1f4380;border-radius: 5px"><b
                                style="padding-left:15px;padding-right:15px;">WATCH HOW THE PHILSYS &#10004; WORKS</b>
                        </p></button>
                    </div>

                </div>


            </div>


            <div class=" padding-5">
                <video class="video--center" id="preview"></video>
            </div>

            <div class=" button-column text-center button--center ">
                <button class="w-150 button-p10" onclick="stopWebcam();" id="stopbtn">

                    STOP CAM
                </button>

                <span class="spacer"></span>


                <select class="w-150 button-p10" name="startbtn" id="startbtn" onchange="reloadP()">
                    <option class="button-p10" value="0">CAM 1</option>
                </select>
            </div>


        </div>


        <div class=" col-md-6 col-sm-12 col-lg-6">
            <div class="mx-auto">
                <br>
                <div style="font-size:18px;text-shadow: 1px 0 #1f4380;"
                     class="text-sub-heading-background blue-color text-center p-10  bold"> STEPS FOR VERIFICATION
                </div>
                <div class="text-background blue-color p-10"><b>1.</b> Click on <span
                        style="color:#1f4380 ;font-weight: bold;"
                        class="heading blue-color font-bold1"> "SCAN QR CODE". </span></div>
                <div class="text-background blue-color p-10"><b>2.</b> A message will prompt to ask your permission to
                    <span style="color:#1f4380 ;font-weight: bold;" class="heading font-bold1">allow access to your device's camera.</span>
                </div>
                <div class="text-background blue-color p-10"><b>3.</b>
                    <span style="color:#1f4380 ;font-weight: bold;" class="heading font-bold1"><b>Point</b></span> the
                    camera to the QR code and
                    <span style="color:#1f4380; font-weight: bold;" class="heading font-bold1">scan.</span></div>
                <div class="text-background blue-color p-10"><b>4.</b> If
                    <span style="color:#1f4380 ;font-weight: bold;" class="heading font-bold1">verification is successful,</span>
                    the following information will be shown:
                </div>
                <li style="list-style-type:none;   font-family: Arial; color: #1f4380; font-weight: bold;padding-left: 50px;">
                    Message "PhilID QR code SUCCESSFULLY VERIFIED"
                </li>
                <li style="list-style-type:none;   font-family: Arial; color: #1f4380;fontsize:16px;font-weight: bold;padding-left: 50px;">
                    Last Name:
                </li>
                <li style="list-style-type:none;   font-family: Arial;color: #1f4380;fontsize:16px;font-weight: bold;padding-left: 50px;">
                    First Name:
                </li>
                <li style="list-style-type:none;   font-family: Arial; color: #1f4380;fontsize:16px;font-weight: bold;padding-left: 50px;">
                    Middle Name:
                </li>
                <li style="list-style-type:none;   font-family: Arial; color: #1f4380;fontsize:16px;font-weight: bold;padding-left: 50px;">
                    Suffix:
                </li>
                <li style="list-style-type:none;   font-family: Arial; color: #1f4380;fontsize:16px;font-weight: bold;padding-left: 50px;">
                    Sex:
                </li>
                <li style="list-style-type:none;   font-family: Arial;color: #1f4380;fontsize:16px;font-weight: bold;padding-left: 50px;">
                    Date of Birth:
                </li>
                <li style="list-style-type:none;   font-family: Arial; color: #1f4380;fontsize:16px;font-weight: bold;padding-left: 50px;">
                    Place of Birth:
                </li>
                <li style="list-style-type:none;   font-family: Arial; color: #1f4380;fontsize:16px;font-weight: bold;padding-left: 50px;">
                    PhilSys Card Number(PCN):
                </li>
                <li style="list-style-type:none;   font-family: Arial; color: #1f4380;fontsize:16px;font-weight: bold;padding-left: 50px;">
                    Date of Issuance:
                </li>
                <%--                <div class="p-10 text-background blue-color ">5. If the PhilID QR is <span  style="color:#1f4380 ;"><b>revoked</b>--%>
                <%--                    or <b> inactive</b></span> or the QR code is<span style="color:#1f4380 ;font-weight: bold;" class="heading"> unrecognizable,</span>--%>
                <%--                    the message<span style="color:#1f4380 ;font-weight: bold;" class="heading"> "PhilSys QR code SUCCESSFULLY VERIFIED</span>--%>
                <%--                    or <span style="color:#1f4380 ;font-weight: bold;" class="heading font-bold1">PhilID QR code  NOT RECOGNIZED"</span> will be shown.</div>--%>
                <%--            </div>--%>

                <div class="p-10 text-background blue-color ">
                    <b>5.</b>If the PhilID QR code is<span style="color:#1f4380 ;"><b> revoked</b>
                or <b>inactive</b></span>, or the QR code is<span style="color:#1f4380 ;font-weight: bold;"
                                                                  class="heading"> unrecognizable,</span>
                    the message <span style="color:#1f4380 ;font-weight: bold;" class="heading"> "PhilID QR code has been REVOKED or is INACTIVE"</span>
                    or <span style="color:#1f4380 ;font-weight: bold;"
                             class="heading">PhilID QR Code  NOT RECOGNIZED" </span>will be shown.
                    </span>
                </div>


            </div>
        </div>


    </div>
    
    
   <jsp:include page="footer.jsp"/>
    
    
    
    
    
    
    
    <%--<div class="space1">--%>
    <%--</div>--%>

    <%-- </form> --%>
</body>
</html>


