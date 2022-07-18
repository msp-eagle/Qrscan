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

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jspcss/faq.css">

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
</head>
<body>
<div class="faq">
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
</div>
</body>
</html>
