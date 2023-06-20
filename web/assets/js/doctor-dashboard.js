function Dashboard() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            document.getElementById("doctor").innerHTML = this.responseText;
        }
    };
    xhttp.open("GET", "doctor_dashboard.jsp", true);
    xhttp.send();
}

function Appointments() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            document.getElementById("doctor").innerHTML = this.responseText;
        }
    };
    xhttp.open("GET", "appointments.jsp", true);
    xhttp.send();
}
function Patients() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            document.getElementById("doctor").innerHTML = this.responseText;
        }
    };
    xhttp.open("GET", "my-patients.jsp", true);
    xhttp.send();
}
function Profile() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            document.getElementById("doctor").innerHTML = this.responseText;
        }
    };
    xhttp.open("GET", "doctor-profile-settings.jsp", true);
    xhttp.send();
}




