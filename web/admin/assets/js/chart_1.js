/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$.ajax({
    type: 'GET',
    url: '../getTotalFeeByMonth',
    dataType: 'json',
    success: function (response) {
        var dataLists = response.datas;

        const ctx = document.getElementById('myChart');

        new Chart(ctx, {
            type: 'line',
            data: {
                labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
                datasets: [{
                        label: 'Revenue',
                        data: dataLists,
                        borderWidth: 1
                    }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });
    },
    error: function (jqXHR, textStatus, errorThrown) {
        console.error('Error:', textStatus, errorThrown);
    }
});

//const ctx_1 = document.getElementById('myChart_2');
//
//new Chart(ctx_1, {
//    type: 'doughnut',
//    data: {
//        labels: ['Emergency', 'Boarding', 'Nutrition', 'Grooming', 'Surgery'],
//        datasets: [{
//                label: 'Revenue',
//                data: [35, 10, 27, 4, 3],
//                borderWidth: 1
//            }]
//    },
//    options: {
//        scales: {
//            y: {
//                beginAtZero: true
//            }
//        }
//    }
//});


$.ajax({
    type: 'GET',
    url: '../get5ServicesUsedMost',
    dataType: 'json',
    success: function (response) {
        var labelList = response.labels;
        var dataList = response.datas;

        const ctx_1 = document.getElementById('myChart_2');
        new Chart(ctx_1, {
            type: 'doughnut',
            data: {
                labels: labelList,
                datasets: [{
                        label: 'Amount used',
                        data: dataList,
                        borderWidth: 1
                    }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });
    },
    error: function (jqXHR, textStatus, errorThrown) {
        console.error('Error:', textStatus, errorThrown);
    }
});



