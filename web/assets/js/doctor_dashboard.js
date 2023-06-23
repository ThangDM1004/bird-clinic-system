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
function Add() {
    // Tạo thẻ select
    var divElement = document.getElementById("service");
    var selectElement = document.createElement("select");
    selectElement.id = "mySelect";
    var myOption = [];
    var index = document.getElementById("index").value;
    var input = document.getElementById("myInput");
    var currentValue = parseInt(input.value);
    var total = document.getElementById("Total");
    var currentTotal = parseFloat(total.value);

    for (var i = 0; i < index; i++) {

        var option = document.createElement("option");
        var ser_name = document.getElementById("service_name_" + (index - i).toString()).value;
        var ser_id = document.getElementById("service_id_" + (index - i).toString()).value;
        var ser_fee = document.getElementById("service_fee_" + (index - i).toString()).value;
        option.action = ser_name.toString();
        option.value = ser_fee.toString();
        option.text = ser_name.toString();
        selectElement.appendChild(option);
    }

// Thêm select vào vị trí mong muốn trong tài liệu (ví dụ: body)
    divElement.appendChild(selectElement);
// Tạo nút Add
    var addButton = document.createElement("button");
    addButton.innerText = "Add";
    // Sự kiện click cho nút Add
    addButton.addEventListener("click", function () {
        // Lấy giá trị được chọn trong select
        var selectedOption = selectElement.options[selectElement.selectedIndex];
        selectElement.remove();
        addButton.remove();
        // Tạo button mới
        input.value = currentValue + 1;
       
        total.value = currentTotal + parseInt(selectedOption.value);
        var newButton = document.createElement("input");
        newButton.innerText = selectedOption.value;
        newButton.value = selectedOption.action;
        newButton.readonly = true;
        newButton.name = "service_" + input.value.toString();
        newButton.style = "color:black";
        // Thêm button mới vào vị trí mong muốn trong tài liệu (ví dụ: body)
        divElement.appendChild(newButton);
    });
// Thêm nút Add vào vị trí mong muốn trong tài liệu (ví dụ: body)
    divElement.appendChild(addButton);
// Xóa các option trong select
}
function Medical(id) {
    var xhttp = new XMLHttpRequest();

    xhttp.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            document.getElementById("doctor").innerHTML = this.responseText;
        }
    };
    xhttp.open("GET", "medical-record.jsp?Booking_id=" + id, true);
    xhttp.send();
}
function Medical_done(id) {
    var xhttp = new XMLHttpRequest();

    xhttp.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            document.getElementById("doctor").innerHTML = this.responseText;
        }
    };
    xhttp.open("GET", "medical-record-done.jsp?Booking_id=" + id, true);
    xhttp.send();
}
