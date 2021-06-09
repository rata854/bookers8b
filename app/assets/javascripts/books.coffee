# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

window.draw_graph = -> 
    ctx = document.getElementById("myChart").getContext('2d')
    myChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: ["6日前", "5日前", "4日前", "3日前", "2日前", "1日前", "本日"],
            datasets: [{
                label: '投稿した本の数',
                data: [
                  seven_days_ago, six_days_ago, five_days_ago, four_days_ago,
                  three_days_ago, yesterday, today
                  ]
                borderColor: "rgba(0,0,255,1)",
                backgroundColor: "rgba(0,0,0,0)"
                borderWidth: 3
            }]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                            max: 10,
                            min: 0,
                            stepSize: 1
                        beginAtZero:true
                    }
                }]
            }
        }
    })