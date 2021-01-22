// fetch('https://didcom.atlassian.net/rest/api/2/search', {
//         method: 'post',
//         headers: {
//             'Content-Type': 'application/json',
//             'Authorization': 'Basic ZGFuaWVsLmdhbWV6QGRpZGNvbS5jb20ubXg6Q2JCa2dZdFVwWU9nVkRQMnlnUng1QTgx', 
//             'Cookie':'atlassian.xsrf.token=BU92-PVAQ-31GS-9SSH_0cc0775288ee465522686d76f431e4e97aa30b55_lin',
//             'Credentials': 'include',
//             "X-Atlassian-Token": "no-check"
//         },
//         body: {"jql": "project in (DI, IAC, AD, IBDM, IC, IDAS, ID, IEDC, IOTFM, IM, AROI, IR, IRR, IRB, ISB, ISG, IOTTID, IU, IOT, RI, SAI) AND status = 'In Review'"}
//     })
//     .then(response => response.text())
//     .then(body => console.log(body))

document.getElementById("database").onchange = function() {myFunction()};
function myFunction() {
    var x = document.getElementById("database");
    x.value = x.value.toUpperCase();
    var x = document.getElementById("username");
    x.value = 'Username'
    var x = document.getElementById("password");
    x.value = 'password'

  }

mapboxgl.accessToken = 'pk.eyJ1IjoiYWNvY29saXRvIiwiYSI6ImNrazMwdnptYjBkdXEycGszeHQ1MTZraXoifQ.z5OK-hCet8ckoffG5pBn8Q';
var map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v11',
    center: [-110.9505198, 29.0732011],
    zoom: 14
});
var marker = new mapboxgl.Marker()
.setLngLat([-110.9505198, 29.0732011])
.setPopup(new mapboxgl.Popup().setHTML("<h3>Cerro de la campana</h3><p>Cerro de la Campana, Hermosillo, Sonora, 83280, Mexico</p>"))
.addTo(map);

function getEvents(){
    fetch('/events.json',{
        body: {"jql": "project in (DI, IAC, AD, IBDM, IC, IDAS, ID, IEDC, IOTFM, IM, AROI, IR, IRR, IRB, ISB, ISG, IOTTID, IU, IOT, RI, SAI) AND status = 'In Review'"}
    })
        .then(response => response.text())
        .then(body => console.log(body))
}