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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jspcss/privacypolicy.css">
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


