function validate() {
    var result = "";
    result += validateName();
    result += validateEmail();
    result += validatePassword();
    result += validateAge();
    result += validateTerms();
    if (result == "") return true;
    alert("Validation Result:\n\n" + result);
    return false;
}

function validateName() {
    var name = document.getElementsByName("name")[0].value;
    var letters = /^[A-Za-z]+$/;
    if (name.match(letters)) {
        // return "";
    }
    else {
        return "Name shouldn't have numbers.\n";
    }
}


function validateAge() {
    var age = document.getElementsByName("age")[0].value;
    if (age < 0)
        return "Age shouldn't be negative.\n";
    return "";
}

function validatePassword() {
    var password = valueOf("password");
    var retype = valueOf("retype_password");

    if (password.length < 10)
        return "Password should be at least 10 characters.\n";

    if (password != retype)
        return "Passwords do not match.\n";
    return "";
}

function validateEmail() {
    var email = valueOf("email");
    var retype = valueOf("retype_email");

    if (email.indexOf('@') == -1)
        return "Email should be a valid address.\n";

    if (email != retype)
        return "Email addresses do not match.\n";
    return "";
}

function validateTerms() {
    var terms = document.getElementsByName("terms")[0];
    if (!terms.checked)
        return "Please accept the Terms of Service and Privacy Policy";
    return "";
}

function valueOf(name) {
    return document.getElementsByName(name)[0].value;
}



// save to xml
function downloadData(contentType, data, filename) {

    var link = document.createElement("A");
    link.setAttribute("href", encodeURI("data:" + contentType + "," + data));
    link.setAttribute("style", "display:none");
    link.setAttribute("download", filename);
    document.body.appendChild(link); //needed for firefox
    console.log(link.outerHTML);
    link.click();
    setTimeout(function () {
        document.body.removeChild(link);
    }, 1000);
}

function fromToXml(form) {
    var xmldata = ['<?xml version="1.0"?>'];
    xmldata.push("<form>");
    var inputs = form.elements;
    for (var i = 0; i < inputs.length; i++) {
        var el = document.createElement("ELEMENT");
        if (inputs[i].name) {
            el.setAttribute("name", inputs[i].name);
            el.setAttribute("value", inputs[i].value);
            xmldata.push(el.outerHTML);
        }

    }
    xmldata.push("</form>");
    return xmldata.join("\n");
}


function download(frm) {
    var data = fromToXml(frm);
    console.log(data);
    // data.save("tempData.xml");
    downloadData("text/xml", data, "data.xml");
}