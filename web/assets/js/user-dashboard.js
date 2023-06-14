function Dashboard() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            document.getElementById("dashboard").innerHTML = this.responseText;
        }
    };
    xhttp.open("GET", "patient_dashboard.jsp", true);
    xhttp.send();
}
function UserProfile() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            document.getElementById("dashboard").innerHTML = this.responseText;
        }
    };
    xhttp.open("GET", "user-profile.jsp", true);
    xhttp.send();
}
function BirdProfile() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            document.getElementById("dashboard").innerHTML = this.responseText;
        }
    };
    xhttp.open("GET", "bird-profile.jsp", true);
    xhttp.send();
}
function ChangePass() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            document.getElementById("dashboard").innerHTML = this.responseText;
        }
    };
    xhttp.open("GET", "user-change-password.jsp", true);
    xhttp.send();
}
function sendOption() {
    var selectElement = document.getElementById("select");
    var selectedValue = selectElement.value;

    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            document.getElementById("demo").innerHTML = this.responseText;
        }
    };
    xhttp.open("GET", "load-bird-info.jsp?selectedOption=" + selectedValue, true);
    xhttp.send();
}

