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
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <script type="text/javascript" src="js/local/jquery.min.js"></script>
    <script type="text/javascript" src="js/local/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/local/popper.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
          integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" id="theme" href="js/local/bootstrap.min.css"/>
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

    <!--
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> -->
    <!-- END PLUGINS -->
        <script type = "text/javascript">
            function preventBack() {
                window.history.forward(1);
            }
            setTimeout("preventBack()", 0);
            window.onunload = function () {
                null
            };

            document.addEventListener('contextmenu', function(e) {
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

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jspcss/termOfUse.css">
</head>

<jsp:include page="header.jsp" />
<div class="">
<form action="" id="validate" method="post">

    
    <div style="background-color: #f3f3f3;">
        <div class="container" style="text-align: justify;background-color: #f3f3f3;font-family: 'Arial Black'"><br>

            <h2 class="head"><b>PhilSys &#10004; Terms of Use</b></h2><br>

            <h5 style="color: #1f4380;">Chapter 1. ACCEPTANCE OF TERMS</h5><br>

            <p class=MsoNormal>By accessing and using the website, the User ("Relying Party", "User") agrees and
                consents to comply with the following terms of use of the website ("Service") of the
                PhilSys Registry Office ("PRO", "the organization", "site" , "we").</p><br>

            <h5 style="color: #1f4380;"><b>Chapter 2. DESCRIPTION OF SERVICES</b></h5><br>

            <p class=MsoNormal>The PhilSys &#10004; (read as check) is a website that uses industry standard algorithms
                for relying parties (public and private establishments) to reliably verify that the information
                contained in the QR Code found in the cardholder's Philippine identification (PhillD) has
                not been tampered with. </p><br>

            <h5 style="color: #1f4380;"><b>Chapter 3. RESPONSIBILITY OF PSA</b></h5><br>

            <p class=MsoNormal>The Philippine Statistics Authority (PSA) is the primary implementing agency to carry
                out the provisions of the Republic Act No. 11055 (RA 11055) or the Philippine
                Identification System Act. As part of its mandate, the PSA shall issue rules in
                implementation and enhancement of the PhilSys, including, but not limited to
                registration, authentication, and data governance.</p>

            <p class=MsoNormal>The PSA with the technical assistance of the Department of Information and
                Communications Technology (DICT) shall implement reasonable and appropriate
                organization and technical security measures in all services of the PhilSys.</p>

            <p class=MsoNormal>The PSA further adheres to the provisions of RA 11073 otherwise known as the Data
                Privacy Act of 2012, and all issuances and advisory opinions issued by the National
                Privacy Commission related to privacy and security.</p><br>

            <h5 style="color: #1f4380;"><b>Chapter 4. PERSONAL LIMITATION</b></h5><br>

            <p class=MsoNormal><b>Information Automatically Collected</b></p>

            <p class=MsoNormal>When you access or use&nbsp;<a href="https://verify.philsys.gov.ph/"
                                                              style="color: #01a0e4">https://verify.philsys.gov.ph</a>,
                we store log information, including
                date and time of visit to the site, the first name of the registered person being
                authenticated, and the result of the authentication. We also collect contact details when
                you use our Contact Us and Feedback forms.</p><br>

            <h5 style="color: #1f4380;"><b>Chapter 5. LIMITED AND PERMITTED USE </b></h5><br>

            <p class=MsoNormal>By using the website, you are granted a non-exclusive, non-transferable, revocable
                license (a) to access and use the website strictly with this agreement; and (b) to use this
                site solely for online verification of the PhillD owner's identity.</p><br>

            <h5 style="color: #1f4380;"><b>Chapter 6. RESERVATION OF RIGHTS</b></h5><br>

            <p class=MsoNormal>The PSA shall not be held liable to any fault, problem, or grievances led by usage of
                another third-party app.</p>

            <p class=MsoNormal>The PRO reserves its rights such as, but not limited to, change of features of the
                Service, blockage of lP addresses or browsers, immediate termination or suspension of
                your access, without further warnings.</p><br>

            <h5 style="color: #1f4380;"><b>Chapter 7. PENAL PROVISIONS</b></h5><br>

            <p class=MsoNormal>Any person who utilizes the PhillD or PSN in an unlawful manner or use the same to
                commit any fraudulent act or for other unlawful purpose/s shall be punished with
                imprisonment of not less than six months but more than two years or a fine of not less
                than Fifty Thousand Philippine Pesos (&#8369; 50,000.00) but not more than Five Hundred
                Thousand Philippine Pesos (&#8369; 500,000.00), or both, at the discretion of the court.
                Exclusive of penal provisions from RA 10173 or the Data Privacy Act of 2012.</p>

            <p class=MsoNormal>Any information obtained as a result of unlawful use of the PhilSys &#10004; shall be
                inadmissible in any judicial, quasi-judicial or administrative proceeding.</p><br>

            <h5 style="color: #1f4380;"><b>Chapter 8. PRIVACY AND PROTECTION OF PERSONAL INFORMATION</b></h5><br>

            <p class=MsoNormal><a href="PrivacyPolicy" style="color: #01a0e4">Please click here for the Privacy
                Notice. </a>. &nbsp;</p><br>

            <h3 style="color: #1f4380;font-size: 20px">CONTACT INFORMATION</h3><br>

            <h5 style="color: #1f4380">Contact information provided is strictly for each concern provided. </h5><br>

            <h5 style="color: #1f4380">For technical issues with the PhilSys &#10004;, you may directly contact:</h5>
            <br>
            <h4 style="font-size: 20px"><strong>TECHNICAL SUPPORT</strong></h4>
            <p class=MsoNormal><a href="mailto:verify.support@philsys.gov.ph" style="color: #01a0e4;">verify.support@philsys.gov.ph</a>
            </p><br>

            <p class=MsoNormal><strong>For non-acceptance of PhilID concern:</strong></p>
            <p class=MsoNormal><strong>OLIVER CHANCOCO</strong></p>
            <p class=MsoNormal>Project Development Officer IV</p>
            <p class=MsoNormal>PhilID Advocacy Unit</p>
            <p class=MsoNormal>Use Case Development and Management Service</p>
            <p class=MsoNormal>PhilSys Registry Office</p>
            <p class=MsoNormal><a href="mailto:o.chancoco@psa.gov.ph" style="color: #01a0e4">o.chancoco@psa.gov.ph </a>
            </p><br>


            <p class=MsoNormal><strong>For data privacy concerns, please contact:</strong></p>
            <p class=MsoNormal><strong>ELIEZER P. AMBATALI</strong></p>
            <p class=MsoNormal>Interim Data Privacy Officer</p>
            <p class=MsoNormal>Director III </p>
            <p class=MsoNormal>Legal Service</p>
            <p class=MsoNormal><a href="mailto:legal.staff@psa.gov.ph" style="color: #01a0e4">legal.staff@psa.gov.ph</a>
            </p><br>

            <p class=MsoNormal><strong>For fraud related concerns, please contact:</strong></p>

            <p class=MsoNormal><strong>ATTY. HENEDINE P. PALABRAS</strong></p>
            <p class=MsoNormal>Registration Officer V</p>
            <p class=MsoNormal>Fraud Management Division</p>
            <p class=MsoNormal>PhilSys Registry Office</p>
            <p class=MsoNormal style="margin-bottom: 0px"><a href="mailto:fmd.staff@psa.gov.ph" style="color: #01a0e4;">fmd.staff@psa.gov.ph </a>&nbsp;
            </p><br>
            <div class="row">
                <div class="col-lg-5">
                    <p class="MsoNormal" style="color: black"><b>Attachment:</b></p>
                    <p><i class="fas fa-file-pdf fa-1.5px" style="color:#be1b1b"></i>
                        <a href="img/Terms%20of%20Use.pdf" download="Terms_Of_Use" target="_blank" class=MsoNormal
                           style="color: #01a0e4;"><u>Terms Of Use</u></a></p>
                </div>
            </div>
            <br>
        </div>

    </div>
</form>
</div>
<jsp:include page="footer.jsp"/>
 
 
</body>
</html>


