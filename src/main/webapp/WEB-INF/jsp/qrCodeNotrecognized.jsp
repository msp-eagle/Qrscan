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
    <script type="text/javascript" src="js/local/jquery.min.js"></script>
    <script type="text/javascript" src="js/local/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/local/popper.min.js"></script>
    <link rel="stylesheet" type="text/css" id="theme" href="js/local/bootstrap.min.css"/>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> -->
    <!-- END PLUGINS -->

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

        function use() {
            /* document.location.href='/QrScan'; */
            document.getElementById("validate").action = "<%=request.getContextPath()%>/termsOfUse";

            document.getElementById("validate").submit();
        }

    </script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jspcss/qrCodeNotRecognized.css">
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
                    <div class="mx-auto">

                    </div>
                    <!--<hr class="clearfix w-100 d-md-none">-->
                </div>
                <div class=" col-md-3 col-sm-12 col-lg-3">
                    <div class="mx-auto">
                        <br>

                        <div class="text-sub-heading-background blue-color text-center font-bold">PhilID QR Code</div>
                        <div class="text-sub-heading-background blue-color text-center font-bold">NOT</div>
                        <div class="text-sub-heading-background blue-color  text-center font-bold">RECOGNIZED</div>
                        <div class=" button-column text-center button--center padding-b-t">

                            <img class="body--logo1 header--logo" src="img/error2.png"
                                 style="width: 200px; height: 200px;"/>

                        </div>
                    </div>


                </div>


                <div class=" col-md-1 col-sm-12 col-lg-1">
                    <div class="mx-auto">

                    </div>
                    <!--<hr class="clearfix w-100 d-md-none">-->
                </div>


                <div class=" col-md-6 col-sm-12 col-lg-6">
                    <div class="mx-auto">
                        <br>
                        <div class="text-sub-heading-background blue-color p-18  font-bold2 text-center">Sorry!</div>
                        <br>
                        <div class="text-background blue-color">
                            <p class="boldText text-center">
                                The PhilID QR Code is either damaged or the information has been tampered with.</p>
                        </div>
                        <div class="text-background blue-colors">
                            <p class="boldText text-center blue-color">
                                <b>FOR RELYING PARTIES:</b> Please report this issue immediately to PSA via
                                info@philsys.gov.ph.
                                Kindly request the client to present another identification document to proceed with
                                their respective
                                transaction/s and inform them that they can file a report on the matter to PSA at
                                info@philsys.gov.ph,
                                Hotline 1388, and<a href="https://www.facebook.com/PSAPhilSysOfficial"><u
                                    style="color: #1f4380;">https://www.facebook.com/PSAPhilSysOfficial.</u></a></p>
                        </div>
                        <div class="text-background blue-colors">
                            <p class="boldText text-center blue-color">
                                <b> FOR PHILID CARDHOLDERS:</b> Kindly present another identification document to
                                proceed with your
                                transaction/s and report the issue immediately to PSA at info@philsys.gov.ph, Hotline
                                1388, and
                                <a href="https://www.facebook.com/PSAPhilSysOfficial"><u style="color: #1f4380;">https://www.facebook.com/PSAPhilSysOfficial.</u></a>
                            </p></div>
                        <div class="button--container button-column  button--center ">

                            <button class="w-150 button-p10 button--center" onclick="gotoScan();">
                                TRY AGAIN

                            </button>
                        </div>

                    </div>
                </div>


            </div>

        </div>
    </div>

    <input type="hidden" id="username" name="username">


    <div class="space1">
    </div>


    <div class="">
        <div class="space1">

        </div>


        <!-- footer -->
       
</form>

<jsp:include page="footer.jsp"/>
</body>
</html>


