<!DOCTYPE html>
<html lang="en">
<head>
    <title>QR VERIFY </title>
    <%-- <link rel="stylesheet" type="text/css" id="theme"
       href="css/theme-default.css" />
   <link rel="stylesheet" type="text/css" id="theme"
       href="js/plugins/sweetalert/sweetalert.css" />--%>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="img/logo10.png" type="image/x-icon"/>
    <script type="text/javascript" src="js/local/jquery.min.js"></script>
    <script type="text/javascript" src="js/local/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/local/popper.min.js"></script>
    <link rel="stylesheet" type="text/css" id="theme" href="js/local/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jspcss/qrCodeVerify.css">
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
