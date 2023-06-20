/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//const ctx = document.getElementById('myChart');
//
//new Chart(ctx, {
//    type: 'line',
//    data: {
//        labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
//        datasets: [{
//                label: 'Revenue',
//                data: [0, 200, 379, 1000, 292, 322, 755],
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
//
//const ctx_1 = document.getElementById('myChart_2');
//
//new Chart(ctx_1, {
//    type: 'doughnut',
//    data: {
//        labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
//        datasets: [{
//                label: 'Revenue',
//                data: [0, 200, 379, 1000, 292, 322, 755],
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
let chartArray = [];

function createChart(ctx, chartData, chartType) {
    // Tìm biểu đồ đã tồn tại với cùng ctx
    const existingChart = chartArray.find(chart => chart.ctx === ctx);

    if (existingChart) {
        // Nếu đã có biểu đồ với cùng ctx, hủy và xóa biểu đồ đó khỏi mảng
        existingChart.chart.destroy();
        const existingChartIndex = chartArray.indexOf(existingChart);
        chartArray.splice(existingChartIndex, 1);
    }

    const newChart = new Chart(ctx, {
        type: chartType,
        data: chartData,
        options: {
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });

    chartArray.push({
        ctx: ctx,
        chart: newChart
    });
}

const ctx = document.getElementById('myChart');
const chartData = {
    labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
    datasets: [{
            label: 'Revenue',
            data: [0, 200, 379, 1000, 292, 322, 755],
            borderWidth: 1
        }]
};

createChart(ctx, chartData, 'line');

const ctx_1 = document.getElementById('myChart_2');
const chartData_1 = {
    labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
    datasets: [{
            label: 'Revenue',
            data: [0, 200, 379, 1000, 292, 322, 755],
            borderWidth: 1
        }]
};

createChart(ctx_1, chartData_1, 'doughnut');



