function check(input) {

    if (input.value == '1') {
        var photo1 = document.getElementById("photoHidden").value;
        if (photo1 == "" || photo1 == null) {
            if (input.checked == true) {
                input.checked = false;
            }
            swal("Please Capture Photo1");
        } else {
            makeCheck(input);
            var previewPhoto = document.getElementById("previewPhoto");
            previewPhoto.setAttribute('src', photo1);
            var previewPhoto1 = document.getElementById("previewPhoto1");
            previewPhoto1.setAttribute('src', photo1);
        }
    } else if (input.value == '2') {
        var photo2 = document.getElementById("photoHidden1").value;
        if (photo2 == "" || photo2 == null) {
            if (input.checked == true) {
                input.checked = false;
            }
            swal("Please Capture Photo2");
        } else {
            makeCheck(input);
            var previewPhoto = document.getElementById("previewPhoto");
            previewPhoto.setAttribute('src', photo2);
            var previewPhoto1 = document.getElementById("previewPhoto1");
            previewPhoto1.setAttribute('src', photo2);
        }
    } else {
        var photo3 = document.getElementById("photoHidden2").value;
        if (photo3 == "" || photo3 == null) {
            if (input.checked == true) {
                input.checked = false;
            }
            swal("Please Capture Photo3");
        } else {
            makeCheck(input);
            var previewPhoto = document.getElementById("previewPhoto");
            previewPhoto.setAttribute('src', photo3);
            var previewPhoto1 = document.getElementById("previewPhoto1");
            previewPhoto1.setAttribute('src', photo3);
        }
    }
}

function makeCheck(input) {
    var checkboxes = document.getElementsByClassName("radioCheck");

    for (var i = 0; i < checkboxes.length; i++) {
        //uncheck all
        if (checkboxes[i].checked == true) {
            checkboxes[i].checked = false;
        }

    }

    //set checked of clicked object
    if (input.checked == true) {
        input.checked = false;
    } else {
        input.checked = true;
    }
    document.getElementById("checkedImage").value = input.value;
}

function saveReg() {

    if ($("#validate").valid()) {

        if (document.getElementById("foreigner").unchecked) {
            document.getElementById("passcountry").value = "";
            document.getElementById("foreignerNid").value = "";
            document.getElementById("passno").value = "";
            document.getElementById("foreignDlNo").value = "";
            var passcountry = document.getElementById("passcountry").value;
        }
        if (document.getElementById("bangladesh").checked) {
            var city = document.getElementById('bangladesh').value;
        } else {
            var city = document.getElementById('foreigner').value;
        }
        var statusid = document.getElementById("maritalstatus").value;
        if (statusid != "1") {
            document.getElementById("spousename").value = "";
        }
        var occpid = document.getElementById("occpatid").value;
        if (occpid != "20") {
            document.getElementById("occupation").value = "";
        }
        var dlLang = document.getElementById('dlLang').value;
        if (dlLang == "") {
            $('#inCompleteDiv').show();
            $('#CompleteDiv').hide();
            swal("Please Select License Language");
            return false;
        } else {
            $('#inCompleteDiv').hide();
            $('#CompleteDiv').show();
            //document.getElementById("dlLanglabel").style.display = 'none';
        }
        var cardtype = document.getElementById('cardid').value;
        if (cardtype == "") {
            $('#inCompleteDiv').show();
            $('#CompleteDiv').hide();
            swal("Please Select Card Type");
            return false;
        } else {
            $('#inCompleteDiv').hide();
            $('#CompleteDiv').show();
        }
        var licensetype = document.getElementById('licensetype').value;
        if (licensetype == "1") {
            var dob = document.getElementById('dateOfBirth').value;
            if (dob == "") {
                $('#inCompleteDiv').show();
                $('#CompleteDiv').hide();
                swal("Please Select Date of Birth");
                return false;
            } else {
                $('#inCompleteDiv').hide();
                $('#CompleteDiv').show();
            }
        } else {
            var dob1 = document.getElementById('dateOfBirth1').value;
            if (dob1 == "") {
                $('#inCompleteDiv').show();
                $('#CompleteDiv').hide();
                swal("Please Select Date of Birth");
                return false;
            } else {
                $('#inCompleteDiv').hide();
                $('#CompleteDiv').show();
            }
        }
        var gender = document.getElementById('genderid').value;
        if (gender == "") {
            $('#inCompleteDiv').show();
            $('#CompleteDiv').hide();
            swal("Please Select Gender");
            return false;
        } else {
            $('#inCompleteDiv').hide();
            $('#CompleteDiv').show();
        }
        var blood = document.getElementById('bloodid').value;
        if (blood == "") {
            $('#inCompleteDiv').show();
            $('#CompleteDiv').hide();
            swal("Please Select Blood Group");
            return false;
        } else {
            $('#inCompleteDiv').hide();
            $('#CompleteDiv').show();
        }
        var mstatus = document.getElementById('maritalstatus').value;

        if (mstatus == "") {
            $('#inCompleteDiv').show();
            $('#CompleteDiv').hide();
            swal("Please Select Marital Status");
            return false;
        } else {
            $('#inCompleteDiv').hide();
            $('#CompleteDiv').show();
        }
        var occplist = document.getElementById('occpatid').value;

        if (occplist == "") {
            $('#inCompleteDiv').show();
            $('#CompleteDiv').hide();
            swal("Please Select Occupation");
            return false;
        } else {
            $('#inCompleteDiv').hide();
            $('#CompleteDiv').show();
        }
        var relId = document.getElementById('relId').value;
        if (relId == "") {
            $('#inCompleteDiv').show();
            $('#CompleteDiv').hide();
            swal("Please Select Relationship");
            return false;
        } else {
            $('#inCompleteDiv').hide();
            $('#CompleteDiv').show();
        }
        if (city == 'F') {
            var passport = document.getElementById('passcountry').value;
            if (passport == "") {
                $('#inCompleteDiv').show();
                $('#CompleteDiv').hide();
                swal("Please Select Country");
                return false;
            } else {
                $('#inCompleteDiv').hide();
                $('#CompleteDiv').show();
            }
        }
        if (city == 'B') {
            var preDivi = document.getElementById('preDivi').value;
            if (preDivi == "") {
                $('#inCompleteDiv').show();
                $('#CompleteDiv').hide();
                swal("Please Select Present Division");
                return false;
            } else {
                $('#inCompleteDiv').hide();
                $('#CompleteDiv').show();
            }
            var preDist = document.getElementById('preDist').value;
            if (preDist == "" || preDist == "") {
                $('#inCompleteDiv').show();
                $('#CompleteDiv').hide();
                swal("Please Select Present District");
                return false;
            } else {
                $('#inCompleteDiv').hide();
                $('#CompleteDiv').show();
            }
            var preVillage = document.getElementById('preVillage').value;
            if (preVillage == "") {
                $('#inCompleteDiv').show();
                $('#CompleteDiv').hide();
                swal("Please Select Present Police Station");
                return false;
            } else {
                $('#inCompleteDiv').hide();
                $('#CompleteDiv').show();
            }
            var preCode = document.getElementById('preCode').value;
            if (preCode == "") {
                $('#inCompleteDiv').show();
                $('#CompleteDiv').hide();
                swal("Please Select Present Postal Code");
                return false;
            } else {
                $('#inCompleteDiv').hide();
                $('#CompleteDiv').show();
            }
            var preother = document.getElementById("preCode");
            var preval = preother.options[preother.selectedIndex].innerHTML;
            if (preval == "Others") {
                var preotherCode = document.getElementById('preOtherCode').value;
                if (preotherCode == "") {
                    swal("Please Enter Present Postal Code");
                    return false;
                }
            }
            var perDivi = document.getElementById('perDivi').value;
            if (perDivi == "") {
                $('#inCompleteDiv').show();
                $('#CompleteDiv').hide();
                swal("Please Select Permanent Division");
                return false;
            } else {
                $('#inCompleteDiv').hide();
                $('#CompleteDiv').show();
            }
            var perDist = document.getElementById('perDist').value;
            if (perDist == "") {
                $('#inCompleteDiv').show();
                $('#CompleteDiv').hide();
                swal("Please Select Permanent District");
                return false;
            } else {
                $('#inCompleteDiv').hide();
                $('#CompleteDiv').show();
            }
            var perVillage = document.getElementById('perVillage').value;
            if (perVillage == "") {
                $('#inCompleteDiv').show();
                $('#CompleteDiv').hide();
                swal("Please Select Permanent Police Station");
                return false;
            } else {
                $('#inCompleteDiv').hide();
                $('#CompleteDiv').show();
            }
            var perCode = document.getElementById('perCode').value;
            if (perCode == "") {
                $('#inCompleteDiv').show();
                $('#CompleteDiv').hide();
                swal("Please Select Permanent Postal Code");
                return false;
            } else {
                $('#inCompleteDiv').hide();
                $('#CompleteDiv').show();
            }
            var perother = document.getElementById("perCode");
            var perval = perother.options[perother.selectedIndex].innerHTML;
            if (perval == "Others") {
                var perotherCode = document.getElementById('perOtherCode').value;
                if (perotherCode == "") {
                    swal("Please Enter Permanent Postal Code");
                    return false;
                }
            }
        }
        var statusid = document.getElementById("maritalstatus").value;
        if (statusid == "1") {
            var sp = document.getElementById("spousename").value;
            if (sp === "") {
                $('#inCompleteDiv').show();
                $('#CompleteDiv').hide();
                swal("Please Fill All Required fields.");
                return false;
            } else {
                $('#inCompleteDiv').hide();
                $('#CompleteDiv').show();
            }
        }

        if (city == 'F') {
            var dlno = document.getElementById('foreignDlNo').value;
            var passno = document.getElementById('passno').value;
            var fnid = document.getElementById('foreignerNid').value;
            var preDoor = document.getElementById('FpreDoor').value;
            var preCode = document.getElementById('FpreCode').value;
            var state = document.getElementById('state').value;
            var preLocal = document.getElementById('FpreLocal').value;
            if (dlno === "" || passno === "" || fnid === "" || preDoor === "" || preCode === "" || state === ""
                || preLocal === "") {
                $('#inCompleteDiv').show();
                $('#CompleteDiv').hide();
                swal("Please Fill All Required fields.");
                return false;
            } else {
                $('#inCompleteDiv').hide();
                $('#CompleteDiv').show();
            }

            var $this = $('#FpreCode');
            var mob = $this.val();
            if (mob.length < 4) {
                $('#inCompleteDiv').show();
                $('#CompleteDiv').hide();
                swal("Postal Code length should be 4");
                return false;
            } else {
                $('#inCompleteDiv').hide();
                $('#CompleteDiv').show();
            }
        }
        if (city == 'B') {
            var preDoor = document.getElementById('preDoor').value;
            var preLocal = document.getElementById('preLocal').value;
            var perDoor = document.getElementById('perDoor').value;
            var perLocal = document.getElementById('perLocal').value;
            if (preDoor === "" || preLocal === "" || perDoor === "" || perLocal === "") {
                $('#inCompleteDiv').show();
                $('#CompleteDiv').hide();
                swal("Please Fill All Required fields.");
                return false;
            } else {
                $('#inCompleteDiv').hide();
                $('#CompleteDiv').show();
            }

        }
        var nin = document.getElementById('citizenshipnumber').value;
        var faname = document.getElementById('fathername').value;
        var mob = document.getElementById('mobilenumber').value;
        var email = document.getElementById('email').value;
        var fname = document.getElementById('firstname').value;
        var maname = document.getElementById('mothername').value;
        var occ = document.getElementById('occupation').value;
        var trno = document.getElementById('transactionNo').value;
        var wname = document.getElementById('witnessfirstname').value;
        var cmob = document.getElementById('contactnumber').value;
        var cemail = document.getElementById('contactemail').value;
        var refDate = document.getElementById('refDate').value;
        if (nin === "" || mob === "" || faname === "" || email === "" || fname === "" || maname === ""
            || trno === "" || wname === "" || cmob === "" || cemail === "" || refDate === "") {
            $('#inCompleteDiv').show();
            $('#CompleteDiv').hide();
            swal("Please Fill All Required fields.");
            return false;
        } else {
            $('#inCompleteDiv').hide();
            $('#CompleteDiv').show();
        }
        if (occpid == "20") {
            if (occ === "") {
                $('#inCompleteDiv').show();
                $('#CompleteDiv').hide();
                swal("Please Fill All Required fields.");
                return false;
            } else {
                $('#inCompleteDiv').hide();
                $('#CompleteDiv').show();
            }
        }
        var $this = $('#citizenshipnumber');
        var cityno = $this.val();
        if (cardtype == "1") {
            if (cityno.length < 10) {
                $('#inCompleteDiv').show();
                $('#CompleteDiv').hide();
                swal("National id length should be 10");
                return false;
            } else {
                $('#inCompleteDiv').hide();
                $('#CompleteDiv').show();
            }
        }
        if (cardtype == "2") {
            if (cityno.length < 17) {
                $('#inCompleteDiv').show();
                $('#CompleteDiv').hide();
                swal("National id length should be 17");
                return false;
            } else {
                $('#inCompleteDiv').hide();
                $('#CompleteDiv').show();
            }
        }

        var $this = $('#mobilenumber');
        var mob = $this.val();
        if (mob.length < 11) {
            $('#inCompleteDiv').show();
            $('#CompleteDiv').hide();
            swal("Mobile number length should be 11");
            return false;
        } else {
            $('#inCompleteDiv').hide();
            $('#CompleteDiv').show();
        }
        var $this = $('#contactnumber');
        var mob = $this.val();
        if (mob.length < 11) {
            $('#inCompleteDiv').show();
            $('#CompleteDiv').hide();
            swal("Contact number length should be 11");
            return false;
        } else {
            $('#inCompleteDiv').hide();
            $('#CompleteDiv').show();
        }

        document.getElementById('otpTest').value = "";
        var firstname = document.getElementById("firstname").value;
        var emailid = document.getElementById("email").value;
        var mobilenumber = document.getElementById("mobilenumber").value;
        var str = $("#validate").serialize();
        timer(150);
        if (emailid !== "") {
            var verify;
            var generatedOTP;
            $.ajax({
                type: "POST",
                datatype: "json",
                url: "sendingOtpByEmailIdOffline/" + emailid + "/" + firstname + "/" + mobilenumber,
                success: function (res) {
                    generatedOTP = res;
                    if (generatedOTP !== " " && generatedOTP !== "") {
                        document.getElementById("generatedOTP").value = generatedOTP;
                        $('.hover_bkgr_fricc').show();
                        return false;
                    } else {
                        swal("ERROR WHILE SENDING OTP.PLEASE CONTACT ADMINISTRATOR");
                        $('.hover_bkgr_fricc').hide();
                        return false;
                    }
                },
                error: function () {
                    alert("Something went wrong! Please try later");
                }
            });
        }

        return false;

    }
}

let timerOn = true;

function timer(remaining) {
    var m = Math.floor(remaining / 60);
    var s = remaining % 60;

    m = m < 10 ? '0' + m : m;
    s = s < 10 ? '0' + s : s;
    document.getElementById('timer').innerHTML = m + ':' + s;
    remaining -= 1;

    if (remaining >= 0 && timerOn) {
        setTimeout(function () {
            timer(remaining);
        }, 1000);
        return;
    }

    if (!timerOn) {
        return;
    }

    $('.hover_bkgr_fricc').hide();
    swal('Timeout for OTP');
}

function calculateAge() {
    var dob = document.getElementById('dateOfBirth').value;
    var dob1 = document.getElementById('dateOfBirth1').value;
    var licetype = document.getElementById('licensetype').value;
    if (dob != "" && licetype == "1") {
        var date1 = new Date();
        var parts = dob.match(/(\d+)/g);
        var dobparts = new Date(parts[2], parts[1] - 1, parts[0]); // months are 0-based
        var diff = date1.getTime() - dobparts.getTime();
        var age = Math.floor(diff / (1000 * 60 * 60 * 24 * 365.25));
        document.getElementById("ageId").value = age;
        document.getElementById("ageId").focus();
        return true;
    } else if (dob1 != "" && licetype == "2") {
        var date1 = new Date();
        var parts = dob1.match(/(\d+)/g);
        var dobparts = new Date(parts[2], parts[1] - 1, parts[0]); // months are 0-based
        var diff = date1.getTime() - dobparts.getTime();
        var age = Math.floor(diff / (1000 * 60 * 60 * 24 * 365.25));
        document.getElementById("ageId").value = age;
        document.getElementById("ageId").focus();
        return true;
    } else {
        document.getElementById("ageId").value = "";
        document.getElementById("ageId").focus();
    }
}

function getPreDist() {
    var doc = document.getElementById("preDivi");
    var val = doc.options[doc.selectedIndex].value;
    $.ajax({
        type: "GET",
        datatype: "json",

        url: "register/" + val,
        success: function (result) {
            $('#preDist').html('');
            var options = '';
            options += '<option value="">Select Option</option>';
            for (var i = 0; i < result.length; i++) {

                var t = result[i].split(',');
                options += '<option value="' + t[1] + '">' + t[0]
                    + '</option>';
            }
            $('#preDist').append(options);

        }
    });
    return true;
}

function getPerDist() {
    var doc = document.getElementById("perDivi");
    var val = doc.options[doc.selectedIndex].value;
    $.ajax({
        type: "GET",
        datatype: "json",

        url: "register/" + val,
        success: function (result) {
            $('#perDist').html('');
            var options = '';
            options += '<option value="">Select Option</option>';
            for (var i = 0; i < result.length; i++) {

                var t = result[i].split(',');
                options += '<option value="' + t[1] + '">' + t[0]
                    + '</option>';
            }
            $('#perDist').append(options);

        }
    });
    return true;
}

function getPrePoliceStation() {
    var doc = document.getElementById("preDist");
    var val = doc.options[doc.selectedIndex].value;
    $.ajax({
        type: "GET",
        datatype: "json",

        url: "getPoliceStation/" + val,
        success: function (result) {
            $('#preVillage').html('');
            var options = '';
            options += '<option value="">Select Option</option>';
            for (var i = 0; i < result.length; i++) {

                var t = result[i].split(',');
                options += '<option value="' + t[1] + '">' + t[0]
                    + '</option>';
            }
            $('#preVillage').append(options);

        }
    });
    return true;
}

function getPerPoliceStation() {
    var doc = document.getElementById("perDist");
    var val = doc.options[doc.selectedIndex].value;
    $.ajax({
        type: "GET",
        datatype: "json",

        url: "getPoliceStation/" + val,
        success: function (result) {
            $('#perVillage').html('');
            var options = '';
            options += '<option value="">Select Option</option>';
            for (var i = 0; i < result.length; i++) {

                var t = result[i].split(',');
                options += '<option value="' + t[1] + '">' + t[0]
                    + '</option>';
            }
            $('#perVillage').append(options);

        }
    });
    return true;
}

function getPreCode() {
    var doc = document.getElementById("preVillage");
    var val = doc.options[doc.selectedIndex].value;
    $.ajax({
        type: "GET",
        datatype: "json",

        url: "getPostalCode/" + val,
        success: function (result) {
            $('#preCode').html('');
            var options = '';
            options += '<option value="">Select Option</option>';
            for (var i = 0; i < result.length; i++) {

                var t = result[i].split(',');
                options += '<option value="' + t[1] + '">' + t[0]
                    + '</option>';
            }
            $('#preCode').append(options);

        }
    });
    return true;
}

function getPerCode() {
    var doc = document.getElementById("perVillage");
    var val = doc.options[doc.selectedIndex].value;
    $.ajax({
        type: "GET",
        datatype: "json",

        url: "getPostalCode/" + val,
        success: function (result) {
            $('#perCode').html('');
            var options = '';
            options += '<option value="">Select Option</option>';
            for (var i = 0; i < result.length; i++) {

                var t = result[i].split(',');
                options += '<option value="' + t[1] + '">' + t[0]
                    + '</option>';
            }
            $('#perCode').append(options);

        }
    });
    return true;
}

function addressFunction() {

    if (document.getElementById("same").checked) {

        var divi = document.getElementById("preDivi").value;
        var addr = document.getElementById("preAddr").value;
        var dist = document.getElementById("preDist").value;
        var door = document.getElementById("preDoor").value;
        var local = document.getElementById("preLocal").value;
        var village = document.getElementById("preVillage").value;
        var pCode = document.getElementById("preCode").value;
        $('#perDivi').val(divi);
        $('#perVillage').val(village);
        $('#perDist').val(dist);
        $('#perCode').val(pCode);
        $.ajax({
            type: "GET",
            datatype: "json",

            url: "register/" + divi,
            success: function (result) {
                $('#perDist').html('');
                var options = '';
                options += '<option value="">Select Option</option>';
                for (var i = 0; i < result.length; i++) {

                    var t = result[i].split(',');
                    if (t[1] == dist) {
                        options += '<option value="' + t[1] + '" selected>'
                            + t[0] + '</option>';
                    } else {
                        options += '<option value="' + t[1] + '">' + t[0]
                            + '</option>';
                    }
                }

                $('#perDist').append(options);

            }
        });
        $.ajax({
            type: "GET",
            datatype: "json",

            url: "getPoliceStation/" + dist,
            success: function (result) {
                $('#perVillage').html('');
                var options = '';
                options += '<option value="">Select Option</option>';
                for (var i = 0; i < result.length; i++) {

                    var t = result[i].split(',');
                    if (t[1] == village) {
                        options += '<option value="' + t[1] + '" selected>'
                            + t[0] + '</option>';
                    } else {
                        options += '<option value="' + t[1] + '">' + t[0]
                            + '</option>';
                    }
                }
                $('#perVillage').append(options);

            }
        });

        $.ajax({
            type: "GET",
            datatype: "json",

            url: "getPostalCode/" + village,
            success: function (result) {
                $('#perCode').html('');
                var options = '';
                options += '<option value="">Select Option</option>';
                for (var i = 0; i < result.length; i++) {

                    var t = result[i].split(',');
                    if (t[1] == pCode) {
                        options += '<option value="' + t[1] + '" selected>'
                            + t[0] + '</option>';
                    } else {
                        options += '<option value="' + t[1] + '">' + t[0]
                            + '</option>';
                    }
                }
                $('#perCode').append(options);

            }
        });

        $('#perDoor').val(door);
        $('#perLocal').val(local);
        $('#perAddr').val(addr);
        var doc = document.getElementById("preCode");
        var vals = doc.options[doc.selectedIndex].innerHTML;
        if (vals == "Others") {
            $("#othersPerCodeDiv").show();
            var vals1 = document.getElementById("preOtherCode").value;
            $('#perOtherCode').val(vals1);
        } else {
            $("#othersPerCodeDiv").hide();
        }

    } else {

        document.getElementById("perDivi").value = "";
        document.getElementById("perAddr").value = "";
        document.getElementById("perDoor").value = "";
        document.getElementById("perLocal").value = "";
        document.getElementById("perDist").value = "";
        document.getElementById("perVillage").value = "";
        document.getElementById("perCode").value = "";
        document.getElementById("perOtherCode").value = "";
        $("#othersPerCodeDiv").hide();
    }
}

function showPassDiv(element) {

    if (document.getElementById("bangladesh").checked) {
        $('#citizenship_div').hide();
        $('#divnational').show();
        $('#BanglaAddr').show();
        $('#frgnAddr').hide();
    } else {
        $('#citizenship_div').show();
        $('#divnational').hide();
        $('#BanglaAddr').hide();
        $('#frgnAddr').show();
        $('#passno').attr('required', 'true');
        $('#passcountry').addClass("required");
    }
}

function isNumber(evt) {
    var iKeyCode = (evt.which) ? evt.which : evt.keyCode
    if (iKeyCode != 46 && iKeyCode > 31 && (iKeyCode < 48 || iKeyCode > 57))
        return false;

    return true;
}

function phoneValidate() {
    var phone = document.getElementById("mobilenumber").value;
    $.ajax({
        type: "GET",
        datatype: "json",
        url: "mobilenum/" + phone,
        success: function (result) {
            if (result == phone) {
                swal("Mobile number already exist");
                document.getElementById("mobilenumber").value = "";
                return false;
            }
        }
    })
}

function onlyAlphabets(e) {
    try {
        if (window.event) {
            var charCode = window.event.keyCode;
        } else if (e) {
            var charCode = e.which;
        } else {
            return true;
        }

        if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123) || (e.keyCode == 8) || (e.keyCode == 9) || (charCode == 32)) {
            return true;
        } else {
            return false;
        }
    } catch (err) {
        alert(err.Description);
    }
}

function autoCaps(input) {
    var $th = $(input);
    $th.val($th.val().toLowerCase().replace(/\b[a-z]/g, function (letter) {
        return letter.toUpperCase();
    }))
}

function AllowSingleSpaceNotInFirstAndLast(input) {
    var $th = $(input);
    $th.val($th.val().replace(/(\s{2,})|[^a-zA-Z']/g, ' '));
    $th.val($th.val().replace(/^\s*/, ''));

}

function spaceNotAllowed(input) {
    var $th = $(input);
    $th.val($th.val().replace(/^\s*/, ''));
}

function numeralsonlyUpper(event, input) {

    if (event.charCode == 0) {
        return true;
    }
    var regex = new RegExp("^[A-Za-z0-9/\]+$");
    var key = String.fromCharCode(event.charCode ? event.which : event.charCode);
    if (!regex.test(key)) {
        event.preventDefault();

        return false;
    }
    input.onkeyup = function () {
        this.value = this.value.toUpperCase();
    }
}

function numerAlphOnly(event) {

    if (event.charCode == 0) {
        return true;
    }
    var regex = new RegExp("^[A-Za-z0-9/\]+$");
    var key = String.fromCharCode(event.charCode ? event.which : event.charCode);
    if (!regex.test(key)) {
        event.preventDefault();

        return false;
    }
}

function onlyNum(id) {
    if (id == 'citizenshipnumber') {
        var $this = $('#citizenshipnumber');
        // $this.val($this.val().replace(/\D/g, ''));
        var cityno = $this.val();
        var ex = /\D/g;
        if (!cityno.match(ex)) {
            document.getElementById("citizenshipnumber").value = cityno;
        } else {
            document.getElementById("citizenshipnumber").value = "";
        }
    } else if (id == 'otpTest') {
        var $this = $('#otpTest');
        // $this.val($this.val().replace(/\D/g, ''));
        var otpno = $this.val();
        var ex = /\D/g;
        if (!otpno.match(ex)) {
            document.getElementById("otpTest").value = otpno;
        } else {
            document.getElementById("otpTest").value = "";
        }
    } else if (id == 'foreignerNid') {
        var $this = $('#foreignerNid');
        var nid = $this.val();
        var ex = /\D/g;
        if (!nid.match(ex)) {
            document.getElementById("foreignerNid").value = nid;
        } else {
            document.getElementById("foreignerNid").value = "";
        }
    } else if (id == 'transactionNo') {
        var $this = $('#transactionNo');
        var trans = $this.val();
        var ex = /\D/g;
        if (!trans.match(ex)) {
            document.getElementById("transactionNo").value = trans;
        } else {
            document.getElementById("transactionNo").value = "";
        }
    } else if (id == 'dctbNo') {
        var $this = $('#dctbNo');
        var trans = $this.val();
        var ex = /\D/g;
        if (!trans.match(ex)) {
            document.getElementById("dctbNo").value = trans;
        } else {
            document.getElementById("dctbNo").value = "";
        }
    } else if (id == 'FpreCode') {
        var $this = $('#FpreCode');
        var prepostal = $this.val();
        var ex = /\D/g;
        if (!prepostal.match(ex)) {
            document.getElementById("FpreCode").value = prepostal;
        } else {
            document.getElementById("FpreCode").value = "";
        }
    } else if (id == 'passno') {
        var $this = $('#passno');
        var passno = $this.val();
        var Exp = /((^[0-9]+[a-z]+)|(^[a-z]+[0-9]+))+[0-9a-z]+$/i;
        if (!passno.match(Exp)) {
            document.getElementById("passno").value = "";
        } else {
            document.getElementById("passno").value = passno.toUpperCase();
        }
    } else if (id == 'foreignDlNo') {
        var $this = $('#foreignDlNo');
        var passno = $this.val();
        var Exp = /((^[0-9]+[a-z]+)|(^[a-z]+[0-9]+))+[0-9a-z]+$/i;
        if (!passno.match(Exp)) {
            document.getElementById("foreignDlNo").value = "";
        } else {
            document.getElementById("foreignDlNo").value = passno.toUpperCase();
        }
    } else if (id == 'mobilenumber') {
        var $this = $('#mobilenumber');
        var mob = $this.val();
        var ex = /\D/g; //^(0|[1-9][0-9]*)$
        if (!mob.match(ex)) {
            document.getElementById("mobilenumber").value = mob;
        } else {
            document.getElementById("mobilenumber").value = "";
        }
    } else if (id == 'landlineNo') {
        var $this = $('#landlineNo');
        var mob = $this.val();
        var ex = /\D/g; //^(0|[1-9][0-9]*)$
        if (!mob.match(ex)) {
            document.getElementById("landlineNo").value = mob;
        } else {
            document.getElementById("landlineNo").value = "";
        }
    } else if (id == 'contactnumber') {
        var $this = $('#contactnumber');
        var mob = $this.val();
        var ex = /\D/g; //^(0|[1-9][0-9]*)$
        if (!mob.match(ex)) {
            document.getElementById("contactnumber").value = mob;
        } else {
            document.getElementById("contactnumber").value = "";
        }
    } else if (id == 'preDoor') {
        var $this = $('#preDoor');
        var predoor = $this.val();
        var ex = '^[A-Za-z0-9/\]+$';
        if (predoor.match(ex)) {
            document.getElementById("preDoor").value = predoor;
        } else {
            document.getElementById("preDoor").value = "";
        }
    } else if (id == 'perDoor') {
        var $this = $('#perDoor');
        var perdoor = $this.val();
        var ex = '^[A-Za-z0-9/\]+$';
        if (perdoor.match(ex)) {
            document.getElementById("perDoor").value = perdoor;
        } else {
            document.getElementById("perDoor").value = "";
        }
    }

}

function OTPCheckValidation() {
    var enterOtp = document.getElementById('otpTest').value;
    var generatedOTP = document.getElementById('generatedOTP').value;
    var decryptedOTP;
    $.ajax({
        url: "otpDecrypt/" + generatedOTP,
        dataType: 'json',
        contentType: 'application/json',
        type: 'POST',
        async: false,
        success: function (res) {
            decryptedOTP = res;
            if (enterOtp === "") {
                swal("PLEASE ENTER ONE TIME PASSWORD.");
                document.getElementById('otpTest').value = "";
                return false;
            }
            if (decryptedOTP != "") {
                if (enterOtp != "") {
                    if (enterOtp == decryptedOTP) {
                        $('.hover_bkgr_fricc').hide();
                        swal({
                            title: 'Are you sure?',
                            type: "warning",
                            showCancelButton: true,
                            confirmButtonColor: "#006a4d",
                            confirmButtonText: "Yes, Confirm!",
                            closeOnConfirm: false,
                            showLoaderOnConfirm: true
                        }, function () {
                            setTimeout(function () {

                                document.getElementById("validate").action = "<%=request.getContextPath()%>/saveofflineLlrReg";
                                document.getElementById("validate").submit();
                            }, 1000);
                        });
                    } else {
                        swal("INVALID ONE TIME PASSWORD.");
                        document.getElementById('otpTest').value = "";
                        return false;
                    }
                }
            }

        },
        error: function () {
            alert("Something went wrong! Please try later");
        }
    });
}

function transactionValidate() {
    var trans = document.getElementById("transactionNo").value;
    var total = document.getElementById("total").value;
    $.ajax({
        type: "GET",
        datatype: "json",
        url: "transnum/" + trans + "/" + total,
        success: function (result) {
            if (result.vehicleRegnNo == trans && result.fromaction == total) {
                swal("Valid Transaction" + "\n" + "Status: Paid");
                $('#finalbtn').show();
                $('#validTno').show();
                $('#invalidTno').hide();
                return false;
            } else if (result.vehicleRegnNo != trans) {
                swal("Invalid e-Tracking number");
                $('#finalbtn').hide();
                $('#invalidTno').show();
                $('#validTno').hide();
                return false;
            } else if (result.fromaction != total) {
                swal("Pay Valid amount");
                $('#finalbtn').hide();
                $('#invalidTno').show();
                $('#validTno').hide();
                return false;
            } else {
                swal("Error while processing");
                $('#finalbtn').hide();
                $('#invalidTno').show();
                $('#validTno').hide();
                return false;
            }
        }
    });
}

$(document).ready(function () {

    $('#btnLeftHand').show();
    $('#btnRightHand').show();
    $('#btnBothThumbs').show();
    $('#GreenBit').show();

    getConnectedDeviceStatus();
})

uri = "http://localhost";
port = "11121";

function getUrl(p) {
    uri = p + "://localhost";
}

function getPort(pt) {
    port = pt;
}

var header = document.getElementById("myDIV");
var btns = header.getElementsByClassName("bt1");
for (var i = 0; i < btns.length; i++) {
    btns[i].addEventListener("click", function () {
        var current = document.getElementsByClassName("active");
        current[0].className = current[0].className.replace(" active", "");
        this.className += " active";
    });
}

function getConnectedDeviceStatus() {

    // var url = "http://127.0.0.1:11121/rd/getConnectedDeviceStatus";

    var url = uri + ":" + port + "/rd/getConnectedDeviceStatus";

    var xhr;
    var ua = window.navigator.userAgent;
    var msie = ua.indexOf("MSIE ");

    if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./)) // If Internet Explorer, return version number
    {
        //IE browser
        //xhr = new ActiveXObject("Microsoft.XMLHTTP");
        xhr = new XMLHttpRequest();
    } else {
        //other browser
        xhr = new XMLHttpRequest();
    }

    xhr.open('POST', url, false);


    xhr.onreadystatechange = function () {

        if (xhr.readyState === 4) {
            var status = xhr.status;

            if (status === 200) {
                // alert("EYEs Captured");

                var result = JSON.parse(xhr.responseText);

                console.log(result);


                var GreenBitStatus = result.allDevConSttsObj.GreenBitDeviceStatus;
                if (GreenBitStatus === "Connected") {
                    $('#GreenBitStatus').html("GreenBit Device is Connected..!");
                    $("#GreenBitStatus").css("color", "green");
                    /*    $('#GreenBit_Device_Serial').html(result.allDevConSttsObj.GreenBitDevSerialNo);
                       $("#GreenBit_Device_Serial").css("color", "blue"); */
                } else {
                    $('#GreenBitStatus').html("GreenBit Device is NOT Connected..!");
                    $("#GreenBitStatus").css("color", "red");

                    /*           $('#GreenBit_Device_Serial').html(""); */
                }


            } else {
                alert("Fingerprint not captured");
                console.log(xhr.response);

            }
        }

    };
    xhr.send();
}

function showGreenBit() {

    document.getElementById('GreenBitid').class = "active";


    $('#btnLeftHand').show();
    $('#btnRightHand').show();
    $('#btnBothThumbs').show();


    $('#GreenBit').show();

}

function getHttpError(jqXHR) {
    var err;
    if (jqXHR.status === 0) {
        err = 'Service Unavailable';
    } else if (jqXHR.status === 404) {
        err = 'Requested page not found';
    } else if (jqXHR.status === 500) {
        err = 'Internal Server Error';
    } else if (thrownError === 'parsererror') {
        err = 'Requested JSON parse failed';
    } else if (thrownError === 'timeout') {
        err = 'Time out error';
    } else if (thrownError === 'abort') {
        err = 'Ajax request aborted';
    } else {
        err = 'Unhandled Error';
    }
    return err;
}


function GetInfo() {

    $('.row1').hide();
    $('.row2').hide();

    $('#PIDDATA').show();

    // var url = "http://127.0.0.1:11121/rd/info";
    var url = uri + ":" + port + "/rd/info";


    var xhr;
    var ua = window.navigator.userAgent;
    var msie = ua.indexOf("MSIE ");

    if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./)) // If Internet Explorer, return version number
    {
        //IE browser
        //xhr = new ActiveXObject("Microsoft.XMLHTTP");
        xhr = new XMLHttpRequest();
    } else {
        //other browser
        xhr = new XMLHttpRequest();
    }

    xhr.open('POST', url, false);


    xhr.onreadystatechange = function () {

        if (xhr.readyState === 4) {
            var status = xhr.status;

            if (status === 200) {
                // alert("EYEs Captured");


                var result = JSON.parse(xhr.responseText);


                var DeviceSN = result.DeviceSN;
                $('#dc').val(DeviceSN);

                var InfoData = result.DeviceInfo;
                $('#txtpidata').val(InfoData);


            } else {
                alert(xhr.responseText);
                alert("Fingerprint not captured");
                console.log(xhr.response);

            }
        }

    };

    xhr.send();

}


function GRN_Capture() {

    $('#PIDDATA').hide();
    $('#CMITech').hide();

    $('.row1').hide();
    $('.row2').hide();


    $('#GreenBit').show();


}

function FunctionLeftHand() {

    document.getElementById('LeftIndex').src = "";
    document.getElementById('LeftMiddle').src = "";
    document.getElementById('LeftRing').src = "";
    document.getElementById('LeftLittle').src = "";

    $('#LeftIndexNFIQ').html("NFIQ : ");
    $('#LeftMiddleNFIQ').html("NFIQ : ");
    $('#LeftRingNFIQ').html("NFIQ : ");
    $('#LeftLittleNFIQ').html("NFIQ : ");


    // var url = "http://127.0.0.1:11121/rd/FunctionLeftHand";
    var url = uri + ":" + port + "/rd/FunctionLeftHand";

    var chkMissingLeftIndex = "false";
    var chkMissingLeftMiddle = "false";
    var chkMissingLeftRing = "false";
    var chkMissingLeftLittle = "false";

    if ($('#Left_Index').is(":checked")) {
        chkMissingLeftIndex = "true";
    }
    if ($('#Left_Middle').is(":checked")) {
        chkMissingLeftMiddle = "true";
    }
    if ($('#Left_Ring').is(":checked")) {
        chkMissingLeftRing = "true";
    }
    if ($('#Left_Little').is(":checked")) {
        chkMissingLeftLittle = "true";
    }

    if (chkMissingLeftIndex === "true" && chkMissingLeftMiddle === "true" && chkMissingLeftRing === "true" && chkMissingLeftLittle === "true") {
        alert("You have checked all Fingers for Missing Finger..! UnCheck anyone to Capture");
        return false;
    }


    var missingFingStatusData = chkMissingLeftIndex + '&' + chkMissingLeftMiddle + '&' + chkMissingLeftRing + '&' + chkMissingLeftLittle;

    var xhr;
    var ua = window.navigator.userAgent;
    var msie = ua.indexOf("MSIE ");

    if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./)) // If Internet Explorer, return version number
    {
        //IE browser
        //xhr = new ActiveXObject("Microsoft.XMLHTTP");
        xhr = new XMLHttpRequest();
    } else {
        //other browser
        xhr = new XMLHttpRequest();
    }

    xhr.open('POST', url, false);

    xhr.onreadystatechange = function () {

        if (xhr.readyState === 4) {
            var status = xhr.status;

            if (status === 200) {
                // alert("EYEs Captured");


                var result = JSON.parse(xhr.responseText);
                console.log(result);
                //console.log(result.FPData.pict_LeftIF);
                if (result.FPData.ErrorMsg != null) {

                    /*         $('#SuccessMsg').hide();
                            $('#ErrorDiv').show();
                            $('#ErrorMsg').show();

                            $('#ErrorMsg').html("Segmantation Error..! Please Place Correct Fingers..!"); */
                    alert("Please Place Correct Fingers..!");

                } else {
                    $('#ErrorDiv').hide();
                    $('#usernamediv').show();
                    SaveGreenBitImage("leftpath");
                }

                var LeftIndex = result.FPData.pict_LeftIF;
                $('#LeftIndex').val(LeftIndex);
                document.getElementById('LeftIndexhidden').value = LeftIndex;
                if (LeftIndex != null) {
                    document.getElementById('LeftIndex').src = "data:image/png;base64," + LeftIndex;

                    $('#LeftIndexNFIQ').html("NFIQ : " + result.nfiq_Obj.LIF_NFIQ);
                } else if (LeftIndex == "") {
                    $('#CorrectImageMsg').html("Please Put LEFT HAND...!");
                    $('#CorrectImageMsg').css("color", "red");
                }


                var LeftMiddle = result.FPData.pict_LeftMF;
                $('#LeftMiddle').val(LeftMiddle);

                if (LeftMiddle != null) {
                    document.getElementById('LeftMiddlehidden').value = LeftMiddle;
                    document.getElementById('LeftMiddle').src = "data:image/png;base64," + LeftMiddle;
                    $('#LeftMiddleNFIQ').html("NFIQ : " + result.nfiq_Obj.LMF_NFIQ);


                }


                var LeftRing = result.FPData.pict_LeftRF;
                $('#LeftRing').val(LeftRing);

                if (LeftRing != null) {
                    document.getElementById('LeftRinghidden').value = LeftRing;
                    document.getElementById('LeftRing').src = "data:image/png;base64," + LeftRing;
                    $('#LeftRingNFIQ').html("NFIQ : " + result.nfiq_Obj.LRF_NFIQ);


                }


                var LeftLittle = result.FPData.pict_LeftLF;
                $('#LeftLittle').val(LeftLittle);

                if (LeftLittle != null) {
                    document.getElementById('LeftLittlehidden').value = LeftLittle;
                    document.getElementById('LeftLittle').src = "data:image/png;base64," + LeftLittle;
                    $('#LeftLittleNFIQ').html("NFIQ : " + result.nfiq_Obj.LLF_NFIQ);


                }


            } else {
                alert("Fingerprint not captured");
                console.log(xhr.response);

            }
        }

    };

    xhr.send(missingFingStatusData);

    return false;

}

function FunctionRightHand() {
    document.getElementById('RightIndex').src = "";
    document.getElementById('RightMiddle').src = "";
    document.getElementById('RightRing').src = "";
    document.getElementById('RightLittle').src = "";

    $('#RightIndexNFIQ').html("NFIQ : ");
    $('#RightMiddleNFIQ').html("NFIQ : ");
    $('#RightRingNFIQ').html("NFIQ : ");
    $('#RightLittleNFIQ').html("NFIQ : ");


    // var url = "http://127.0.0.1:11121/rd/FunctionRightHand";
    var url = uri + ":" + port + "/rd/FunctionRightHand";

    var chkMissingRightIndex = "false";
    var chkMissingRightMiddle = "false";
    var chkMissingRightRing = "false";
    var chkMissingRightLittle = "false";

    if ($('#Right_Index').is(":checked")) {
        chkMissingRightIndex = "true";
    }
    if ($('#Right_Middle').is(":checked")) {
        chkMissingRightMiddle = "true";

    }
    if ($('#Right_Ring').is(":checked")) {
        chkMissingRightRing = "true";
    }
    if ($('#Right_Little').is(":checked")) {
        chkMissingRightLittle = "true";
    }

    if (chkMissingRightIndex === "true" && chkMissingRightMiddle === "true" && chkMissingRightRing === "true" && chkMissingRightLittle === "true") {
        alert("You have checked all Fingers for Missing Finger..! UnCheck anyone to Capture");
        return false;
    }

    var missingFingStatusData = chkMissingRightIndex + '&' + chkMissingRightMiddle + '&' + chkMissingRightRing + '&' + chkMissingRightLittle;

    var xhr;
    var ua = window.navigator.userAgent;
    var msie = ua.indexOf("MSIE ");

    if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./)) // If Internet Explorer, return version number
    {
        //IE browser
        //xhr = new ActiveXObject("Microsoft.XMLHTTP");
        xhr = new XMLHttpRequest();
    } else {
        //other browser
        xhr = new XMLHttpRequest();
    }

    xhr.open('POST', url, false);

    xhr.onreadystatechange = function () {

        if (xhr.readyState === 4) {
            var status = xhr.status;

            if (status === 200) {
                // alert("EYEs Captured");

                var result = JSON.parse(xhr.responseText);

                if (result.FPData.ErrorMsg != null) {

                    /*      $('#SuccessMsg').hide();
                         $('#ErrorDiv').show();
                         $('#ErrorMsg').show();
                         $('#ErrorMsg').html("Segmantation Error..! Please Place Correct Fingers..!"); */
                    alert("Please Place Correct Fingers..!");

                } else {
                    $('#ErrorDiv').hide();
                    $('#usernamediv').show();
                    SaveGreenBitImage("rightpath");
                }

                var RightIndex = result.FPData.pict_RightIF;
                $('#RightIndex').val(RightIndex);

                if (RightIndex != null) {
                    document.getElementById('rightIndexhidden').value = RightIndex;
                    document.getElementById('RightIndex').src = "data:image/png;base64," + RightIndex;
                    $('#RightIndexNFIQ').html("NFIQ : " + result.nfiq_Obj.RIF_NFIQ);

                } else {
                    $('#CorrectImageMsg').html("Please Put RIGHT HAND...!");
                    $('#CorrectImageMsg').css("color", "red");
                }

                var RightMiddle = result.FPData.pict_RightMF;
                $('#RightMiddle').val(RightMiddle);

                if (RightMiddle != null) {
                    document.getElementById('rightMiddlehidden').value = RightMiddle;
                    document.getElementById('RightMiddle').src = "data:image/png;base64," + RightMiddle;
                    $('#RightMiddleNFIQ').html("NFIQ : " + result.nfiq_Obj.RMF_NFIQ);

                }

                var RightRing = result.FPData.pict_RightRF;
                $('#RightRing').val(RightRing);

                if (RightRing != null) {
                    document.getElementById('rightRinghidden').value = RightRing;
                    document.getElementById('RightRing').src = "data:image/png;base64," + RightRing;
                    $('#RightRingNFIQ').html("NFIQ : " + result.nfiq_Obj.RRF_NFIQ);

                }

                var RightLittle = result.FPData.pict_RightLF;
                $('#RightLittle').val(RightLittle);

                if (RightLittle != null) {
                    document.getElementById('rightLittlehidden').value = RightLittle;
                    document.getElementById('RightLittle').src = "data:image/png;base64," + RightLittle;
                    $('#RightLittleNFIQ').html("NFIQ : " + result.nfiq_Obj.RLF_NFIQ);

                }

            } else {
                alert("Fingerprint not captured");
                console.log(xhr.response);
            }
        }
    };
    xhr.send(missingFingStatusData);

    return false;
}

function SaveGreenBitImage(filepath) {

    var url = uri + ":" + port + "/rd/SaveGreenBitImage";

    var userName = document.getElementById("mobilenumber").value;

    var xhr;
    var ua = window.navigator.userAgent;
    var msie = ua.indexOf("MSIE ");

    if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./)) // If Internet Explorer, return version number
    {
        //IE browser
        //xhr = new ActiveXObject("Microsoft.XMLHTTP");
        xhr = new XMLHttpRequest();
    } else {
        //other browser
        xhr = new XMLHttpRequest();
    }

    xhr.open('POST', url, false);

    xhr.onreadystatechange = function () {

        if (xhr.readyState == 4) {
            var status = xhr.status;

            if (status == 200) {
                // alert("EYEs Captured");

                var result = JSON.parse(xhr.responseText);

                var res = result.replace("Fingerprint Images are Saved on Path : ", "");
                //alert(res);
                document.getElementById(filepath).value = result;


            } else {
                alert(xhr.responseText);
            }
        }
    };

    xhr.send(userName);
}


function FunctionBothThumbs() {

    document.getElementById('LeftThumb').src = "";
    document.getElementById('RightThumb').src = "";

    $('#LeftThumbNFIQ').html("NFIQ : ");
    $('#RightThumbNFIQ').html("NFIQ : ");

    // var url = "http://127.0.0.1:11121/rd/FunctionBothThumbs";
    var url = uri + ":" + port + "/rd/FunctionBothThumbs";

    var chkMissingRightThumb = "false";
    var chkMissingLeftThumb = "false";

    if ($('#Right_Thumb').is(":checked")) {
        chkMissingRightThumb = "true";
    }
    if ($('#Left_Thumb').is(":checked")) {
        chkMissingLeftThumb = "true";
    }

    if (chkMissingRightThumb === "true" && chkMissingLeftThumb === "true") {
        alert("You have checked all Fingers for Missing Finger..! UnCheck anyone to Capture");
        return false;
    }

    var missingFingStatusData = chkMissingRightThumb + '&' + chkMissingLeftThumb;


    var xhr;
    var ua = window.navigator.userAgent;
    var msie = ua.indexOf("MSIE ");

    if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./)) // If Internet Explorer, return version number
    {
        //IE browser
        //xhr = new ActiveXObject("Microsoft.XMLHTTP");
        xhr = new XMLHttpRequest();
    } else {
        //other browser
        xhr = new XMLHttpRequest();
    }

    xhr.open('POST', url, false);

    xhr.onreadystatechange = function () {

        if (xhr.readyState === 4) {
            var status = xhr.status;

            if (status === 200) {
                // alert("EYEs Captured");

                var result = JSON.parse(xhr.responseText);
                //console.log(JSON.stringify(result));

                if (result.FPData.ErrorMsg != null) {

                    /*        $('#SuccessMsg').hide();
                           $('#ErrorDiv').show();
                           $('#ErrorMsg').show();
                           $('#ErrorMsg').html("Segmantation Error..! Please Place Correct Fingers..!");
        */
                    alert("Please Place Correct Fingers..!");
                } else {
                    $('#ErrorDiv').hide();
                    $('#usernamediv').show();
                    SaveGreenBitImage("thumbpath");
                }

                var DevSN = result.CMIDeviceSN;
                $('#CMITech_Device_Serial').val(DevSN);

                var DevStatus = " Both Eyes Captured";

                $('#CMITech_Device_Status').val(DevStatus);

                var LeftThumb = result.FPData.pict_LeftT;
                $('#LeftThumb').val(LeftThumb);

                if (LeftThumb != null) {
                    document.getElementById('leftthumbhidden').value = LeftThumb;
                    document.getElementById('LeftThumb').src = "data:image/png;base64," + LeftThumb;
                    $('#LeftThumbNFIQ').html("NFIQ : " + result.nfiq_Obj.LT_NFIQ);
                }

                var RightThumb = result.FPData.pict_RightT;
                $('#RightThumb').val(RightThumb);

                if (RightThumb != null) {
                    document.getElementById('rightthumbhidden').value = RightThumb;
                    document.getElementById('RightThumb').src = "data:image/png;base64," + RightThumb;
                    $('#RightThumbNFIQ').html("NFIQ : " + result.nfiq_Obj.RT_NFIQ);
                }
            } else {
                alert("Fingerprint not captured");
                console.log(xhr.response);
            }
        }
    };
    xhr.send(missingFingStatusData);

    return false;
}