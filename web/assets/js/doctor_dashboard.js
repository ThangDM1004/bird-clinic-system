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
    var indexValue = document.getElementById('index').value;
   
    var divElement = document.getElementById("service_" + indexValue);
    var selectElement = document.createElement("select");
    selectElement.id = "mySelect";

// Tạo các option và thêm vào select
    var option1 = document.createElement("option");
    option1.value = "value1"; // Giá trị của Option 1
    option1.text = "Option 1";
    selectElement.appendChild(option1);

    var option2 = document.createElement("option");
    option2.value = "value2"; // Giá trị của Option 2
    option2.text = "Option 2";
    selectElement.appendChild(option2);

    var option3 = document.createElement("option");
    option3.value = "value3"; // Giá trị của Option 3
    option3.text = "Option 3";
    selectElement.appendChild(option3);

// Thêm select vào vị trí mong muốn trong tài liệu (ví dụ: body)
    divElement.appendChild(selectElement);
// Tạo nút Add
    var addButton = document.createElement("button");
    addButton.innerText = "Add";

// Sự kiện click cho nút Add
    addButton.addEventListener("click", function () {
        // Lấy giá trị được chọn trong select
        var selectedOption = selectElement.value;

        // Tạo button mới
        var newButton = document.createElement("button");
        newButton.innerText = selectedOption;
        var selectedOptionElement = selectElement.querySelector('option[value="' + selectedOption + '"]');
        selectedOptionElement.remove();
        // Thêm button mới vào vị trí mong muốn trong tài liệu (ví dụ: body)
        divElement.appendChild(newButton);
    });

// Thêm nút Add vào vị trí mong muốn trong tài liệu (ví dụ: body)
    divElement.appendChild(addButton);
// Xóa các option trong select
}