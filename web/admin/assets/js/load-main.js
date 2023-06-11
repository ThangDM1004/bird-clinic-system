var links = document.querySelectorAll("#sidebar-menu a");
for (var i = 0; i < links.length; i++) {
  links[i].addEventListener("click", handleClick);
}

// Set the second <li> element as active by default
var defaultActiveItem = document.querySelector("#sidebar-menu li:nth-child(2)");
defaultActiveItem.classList.add("active");

function handleClick(event) {
  var listItems = document.querySelectorAll("#sidebar-menu li");
  for (var i = 0; i < listItems.length; i++) {
    listItems[i].classList.remove("active");
  }

  var clickedLink = event.target;
  clickedLink.closest("li").classList.add("active");

  // Prevent the default behavior of the link (e.g., navigating to a new page)
  event.preventDefault();
}


function Dashboard() {


    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            document.getElementById("main").innerHTML = this.responseText;
        }
    };
    xhttp.open("GET", "dashboard.jsp", true);
    xhttp.send();
}


function Appointments() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            document.getElementById("main").innerHTML = this.responseText;
            var table = $('.datatable').DataTable();
        }
    };
    xhttp.open("GET", "appointments.jsp", true);
    xhttp.send();
}
function OnclickAppointments() {
    removeActiveClassFromAllItems();
    document.getElementById("appointmentsLink").classList.add("active");
}
function Services() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            document.getElementById("main").innerHTML = this.responseText;
            var table = $('.datatable').DataTable();
        }
    };
    xhttp.open("GET", "service.jsp", true);
    xhttp.send();
}
function Doctors() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            document.getElementById("main").innerHTML = this.responseText;
            var table = $('.datatable').DataTable();
        }
    };
    xhttp.open("GET", "doctors.jsp", true);
    xhttp.send();
}
function Customers() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            document.getElementById("main").innerHTML = this.responseText;
            var table = $('.datatable').DataTable();
        }
    };
    xhttp.open("GET", "customers.jsp", true);
    xhttp.send();
}
function Reviews() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            document.getElementById("main").innerHTML = this.responseText;
            var table = $('.datatable').DataTable();
        }
    }
    ;
    xhttp.open("GET", "reviews.jsp", true);
    xhttp.send();
}
function Staff() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            document.getElementById("main").innerHTML = this.responseText;
            var table = $('.datatable').DataTable();
        }
    }
    ;
    xhttp.open("GET", "staff-list.jsp", true);
    xhttp.send();
}
