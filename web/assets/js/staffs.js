function Pending() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            document.getElementById("dashboard").innerHTML = this.responseText;
        }
    };
    xhttp.open("GET", "pending.jsp", true);
    xhttp.send();

}
function CheckIn() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            document.getElementById("dashboard").innerHTML = this.responseText;
        }
    };
    xhttp.open("GET", "check-in.jsp", true);
    xhttp.send();

}
function CheckOut() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            document.getElementById("dashboard").innerHTML = this.responseText;
        }
    };
    xhttp.open("GET", "check-out.jsp", true);
    xhttp.send();

}
function Assign() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            document.getElementById("dashboard").innerHTML = this.responseText;
        }
    };
    xhttp.open("GET", "assign.jsp", true);
    xhttp.send();

}