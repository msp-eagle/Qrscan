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
 
  <style type="text/css">

      .footer--bottom--logo {
          width: 100%;
          max-width: 350px;
      }
        a:link, a:visited {

            color: white;
            /*padding: 15px 25px;*/
            text-align: center;
            text-decoration: none;
            display: inline-block;
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

        }

    </style>


</head>
<body>
<form action="" id="validate" method="post">
    <jsp:include page="header.jsp" />

    <div style="background-color: #f3f3f3">

        <div class="container">

            <div class=WordSection1 style="text-align: justify;"><br>
                <div class=MsoNormal>
                    <h2 style="text-align: center">ABOUT PHILSYS &#10004;</h2>
                </div>

                <p class=MsoNormal>The PSA has developed the PhilSys &#10004; (read as check), previously known as
                    PhilSys QR Code
                    Verification System (PQRCVS), is an offline identity authentication tool, which involves a website
                    that uses public-private key cryptography. This allows relying parties to verify the authenticity of
                    PSA-issued QR Code. </p><br>

                <p class=MsoNormal>An ‘offline authentication’ refers to the process wherein the identity of an
                    individual is validated
                    against the information contained in the PhilID. This is further described in the IRR as the
                    presentation of the PhilID and the matching of the data stored in the QR code which is printed at
                    the back of the PhilID.</p>
                <br>


                <p class=MsoNormal>The use of the PhilSys &#10004; would require the presentation of PhilID, scanning of
                    the QR Code, and
                    matching of the data stored in the QR Code to validate the identity of the registered person,
                    against the data printed on the face of the PhilID. The PhilSys &#10004; is accessible online via
                    any
                    computer or smart device with a camera and internet browser (although this method is delivered
                    through the web, it qualifies as an ‘offline authentication’ under the Implementing Rules and
                    Regulations of the RA No. 11055).</p>
                <br>

                <p class=MsoNormal style="margin-bottom: 0px">Upon scanning, the embedded public key in the PhilSys
                    &#10004; website decrypts the digital signature
                    embedded in the PhilID QR code and checks if it is active or revoked. This will then yield a hash
                    of data initially generated before the printing of the QR code onto the PhilID. Thereafter, the
                    website generates a second hash of the QR code data. If the first and second hashes match, this
                    means that the QR code data is PSA-issued and is not tampered with (i.e. it is correct). The
                    website will then display the data from the QR code which can be used to match with the printed
                    PhilID data.</p><br>
                <p class=MsoNormal><b>RECOMMENDED DEVICE SPECIFICATION</b></p>
                <p class=MsoNormal>The following specifications are recommended for devices that will be used in
                    scanning the PhilID
                    QR code to ensure smooth and successful verification. Please note that using devices with lower
                    specifications may result in unsuccessful QR code scanning and verification.</p><br>
                <p class=MsoNormal><b>General Rule</b></p>
                <p class=MsoNormal>
                    - Photo quality of 720p or higher<br>
                    - No visual effects and enhancements<br>
                    - Well-lit operating environment<br>
                    - Ensure all four (4) edges of the QR code are captured<br>
                    - Optimal scanning distance is 3-5 inches</p><br>
                <p class=MsoNormal><b>Android Device</b></p>
                <p class=MsoNormal>
                    - Back camera: 13MP, 48MP and 64MP, 1080p resolution<br>
                    - Android Version: 9 (Pie), 10 (Q), and 11 (R)<br>
                    - Browser: Google Chrome (version 98)<br>
                    - Back camera should have autofocus<br>
                    - Camera exposure adjustment feature should be disabled to avoid detection lagging issues<br>
                    - Camera must be at a stable position as any movement may affect performance</p><br>
                <p class=MsoNormal><b>Laptop Camera</b></p>
                <p class=MsoNormal>
                    - Camera: integrated, HD (2.1MP), 720p resolution<br>
                    - OS: PC: Windows 11, Macbook: MacOS High Sierra<br>
                    - Browser: Google Chrome (version 98) / Mozilla Firefox (version 97)</p><br>
                <p class=MsoNormal><b>RECOMMENDED DEVICES</b></p>
                <p class=MsoNormal>The following devices were tested and were able to successfully scan the PSA-issued
                    QR code
                    through the PhilSys &#10004;.</p>
                <p class=MsoNormal>
                    1. Asus X202E Laptop Integrated Camera<br>
                    2. Lenovo ThinkPad (L14 Gen 1) Laptop Integrated Camera<br>
                    3. Macbook Air 2017<br>
                    4. Huawei Nova 3i<br>
                    5. Oppo Reno 4<br>
                    6. Redmi Note 9<br>
                    7. Xioami 10T<br>
                    8. Samsung Galaxy A50</p><br>
                <p class=MsoNormal style="margin-bottom:0px;">Disclaimer: This is based on test results using available
                    devices. As long as the recommended specifications are met, the scanning of PhilID QR code should be
                    successful.</p><br>
            </div>
        </div>
    </div>
    <!--   <div class="">-->
    <!--         <div class="space1">

            </div> -->
    
    <jsp:include page="footer.jsp"/>
    </body>
</html>
