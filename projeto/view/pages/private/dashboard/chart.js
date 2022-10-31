const graphicFreezer1 = {
    type: "line",
    data: {
        labels: ["12:00", "12:30", "13:00", "13:30", "14:00", "14:30", "15:00", "15:30", "16:00"],
        datasets: [
            {
                label: "Temperatura no freezer",
                data: [-26.1, -25.9, -22.4, -23.6, -20, -27.3, -25, -22, -20],
                backgroundColor: "#FF3596",
                borderColor: "#FF3596"
            }
        ]
    },

    options: {
        maintainAspectRatio: false
    }
}

var mychartLine1 = new Chart(document.getElementById("lineChart"), graphicFreezer1);

const graphicFreezer2 = {
    type: "line",
    data: {
        labels: ["12:00", "12:30", "13:00", "13:30", "14:00", "14:30", "15:00", "15:30", "16:00"],
        datasets: [
            {
                label: "Temperatura no freezer",
                data: [-21.1, -25.9, -27.4, -20.6, -20, -30.3, -25, -20, -28],
                backgroundColor: "#FF3596",
                borderColor: "#FF3596"
            }
        ]
    },

    options: {
        maintainAspectRatio: false
    }
}

var mychartLine2 = new Chart(document.getElementById("lineChart"), graphicFreezer2);

const graphicFreezer3 = {
    type: "line",
    data: {
        labels: ["12:00", "12:30", "13:00", "13:30", "14:00", "14:30", "15:00", "15:30", "16:00"],
        datasets: [
            {
                label: "Temperatura no freezer",
                data: [-20.1, -29.9, -27.4, -25.6, -20, -17.3, -35, -30, -25],
                backgroundColor: "#FF3596",
                borderColor: "#FF3596"
            }
        ]
    },

    options: {
        maintainAspectRatio: false
    }
}

var mychartLine3 = new Chart(document.getElementById("lineChart"), graphicFreezer3);