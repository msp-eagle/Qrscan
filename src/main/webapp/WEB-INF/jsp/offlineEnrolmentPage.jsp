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
<%--    <script type="text/javascript" src="https://rawgit.com/schmich/instascan-builds/master/instascan.min.js"></script>--%>
            <script type="text/javascript" src="js/instascan.min.js"></script>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/jspcss/style.css">
</head>

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


