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
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.min.css'>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jspcss/contactus.css">
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
                    <ul class="contact-list contacted">
                        <div class="contact-list-email">
                            EMAIL US : <u>verify.support@philsys.gov.ph</u>
                        </div>
                        <br>
                        <div class="contact-list-number">
                            CALL US : +63 998 555 4266
                        </div>
                        <br>
                        <div class="">
                            <h5 style="color: #1f4380"><b>Connect With Us</b></h5>
                        </div>

                        <li class="list-item" style="list-style: none">
                            <a style="padding-right: 20px" href="https://www.philsys.gov.ph/philsys" target="_blank">
                                <img src="img/web.png" style: width="55" height="55">
                            </a><a href="https://www.philsys.gov.ph/philsys"
                                   style="color: #1f4380">psa.gov.ph/philsys</a>
                        </li>
                        <li class="list-item" style="list-style: none">
                            <a style="padding-right: 20px" href="https://www.facebook.com/PSAgovph" target="_blank">
                                <img src="img/facebook.png" style: width="50" height="50">
                            </a>
                            <a href="https://www.facebook.com/PSAgovph" style="color: #1f4380">PhilippineStatisticsAuthority</a>
                        </li>
                        <li class="list-item" style="list-style: none">
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

