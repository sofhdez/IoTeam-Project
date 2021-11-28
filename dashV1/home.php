<?php
session_start();

if(isset($_SESSION['id_usuario']) && ($_SESSION['username']) ){
    
?>


<?php

$mysqli = new mysqli("localhost", "root", "", "sensores_prueba");

/* verificar conexión */
if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}
?>


<?php  
$borrar = $mysqli->prepare("DROP TABLE colors;");
$borrar = $borrar->execute();  
?>

<?php  
$crear = $mysqli->prepare("CREATE TABLE `colors` (
  `sensor` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;");

$crear = $crear->execute();

?>


<?php  
$llenardesensors = $mysqli->prepare("INSERT INTO `colors` (`sensor`, `color`) VALUES
(' sensor0', ''),
(' sensor1', ''),
(' sensor2', ''),
(' sensor3', ''),
(' sensor4', ''),
(' sensor5', ''),
(' sensor6', ''),
(' sensor7', ''),
(' sensor8', ''),
(' sensor9', ''),
(' sensor10', ''),
(' sensor11', '');");

$llenardesensors = $llenardesensors->execute();

?>

<?php 
$sensor0 = $mysqli->prepare("UPDATE colors SET color = (SELECT data_sensors.meas_label from data_sensors `data_sensors` WHERE node_id = ' sensor0' order by id DESC limit 1) WHERE sensor = ' sensor0';");
$sensor0 = $sensor0->execute()
?>

<?php 
$sensor1 = $mysqli->prepare("UPDATE colors SET color = (SELECT data_sensors.meas_label from data_sensors `data_sensors` WHERE node_id = ' sensor1' order by id DESC limit 1) WHERE sensor = ' sensor1';");
$sensor1 = $sensor1->execute()
?>

<?php 
$sensor2 = $mysqli->prepare("UPDATE colors SET color = (SELECT data_sensors.meas_label from data_sensors `data_sensors` WHERE node_id = ' sensor2' order by id DESC limit 1) WHERE sensor = ' sensor2';");
$sensor2 = $sensor2->execute()
?>

<?php 
$sensor3 = $mysqli->prepare("UPDATE colors SET color = (SELECT data_sensors.meas_label from data_sensors `data_sensors` WHERE node_id = ' sensor3' order by id DESC limit 1) WHERE sensor = ' sensor3';");
$sensor3 = $sensor3->execute()
?>

<?php 
$sensor4 = $mysqli->prepare("UPDATE colors SET color = (SELECT data_sensors.meas_label from data_sensors `data_sensors` WHERE node_id = ' sensor4' order by id DESC limit 1) WHERE sensor = ' sensor4';");
$sensor4 = $sensor4->execute()
?>

<?php 
$sensor5 = $mysqli->prepare("UPDATE colors SET color = (SELECT data_sensors.meas_label from data_sensors `data_sensors` WHERE node_id = ' sensor5' order by id DESC limit 1) WHERE sensor = ' sensor5';");
$sensor5 = $sensor5->execute()
?>

<?php 
$sensor6 = $mysqli->prepare("UPDATE colors SET color = (SELECT data_sensors.meas_label from data_sensors `data_sensors` WHERE node_id = ' sensor6' order by id DESC limit 1) WHERE sensor = ' sensor6';");
$sensor6 = $sensor6->execute()
?>

<?php 
$sensor7 = $mysqli->prepare("UPDATE colors SET color = (SELECT data_sensors.meas_label from data_sensors `data_sensors` WHERE node_id = ' sensor7' order by id DESC limit 1) WHERE sensor = ' sensor7';");
$sensor7 = $sensor7->execute()
?>

<?php 
$sensor8 = $mysqli->prepare("UPDATE colors SET color = (SELECT data_sensors.meas_label from data_sensors `data_sensors` WHERE node_id = ' sensor8' order by id DESC limit 1) WHERE sensor = ' sensor8';");
$sensor8 = $sensor8->execute()
?>

<?php 
$sensor9 = $mysqli->prepare("UPDATE colors SET color = (SELECT data_sensors.meas_label from data_sensors `data_sensors` WHERE node_id = ' sensor9' order by id DESC limit 1) WHERE sensor = ' sensor9';");
$sensor9 = $sensor9->execute()
?>

<?php 
$sensor10 = $mysqli->prepare("UPDATE colors SET color = (SELECT data_sensors.meas_label from data_sensors `data_sensors` WHERE node_id = ' sensor10' order by id DESC limit 1) WHERE sensor = ' sensor10';");
$sensor10 = $sensor10->execute()
?>

<?php 
$sensor11 = $mysqli->prepare("UPDATE colors SET color = (SELECT data_sensors.meas_label from data_sensors `data_sensors` WHERE node_id = ' sensor11' order by id DESC limit 1) WHERE sensor = ' sensor11';");
$sensor11 = $sensor11->execute()
?>


<?php

$rojos = $mysqli->query("SELECT COUNT(*) FROM colors WHERE color = 'rojo';");
/*$result = $stmt->execute();*/
$rowRojos = $rojos->fetch_assoc()

?>

<?php

$verdes = $mysqli->query("SELECT COUNT(*) FROM colors WHERE color = 'verde';");
/*$result = $stmt->execute();*/
$rowVerdes = $verdes->fetch_assoc()

?>

<?php

$amarillos = $mysqli->query("SELECT COUNT(*) FROM colors WHERE color = 'amarillo';");
/*$result = $stmt->execute();*/
$rowAmarillos = $amarillos->fetch_assoc()

?>


<?php

$errores = $mysqli->query("SELECT COUNT(*) FROM colors WHERE color = 'error';");
/*$result = $stmt->execute();*/
$rowErrores = $errores->fetch_assoc()

?>





<!DOCTYPE html>
<html>
<head>
	<title>HOME</title>

  <link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" integrity="sha512-xodZBNTC5n17Xt2atTPuE1HxjVMSvLVW9ocqUKLsCC5CXdbqCmblAshOMAS6/keqq/sMZMZ19scR4PsZChSR7A==" crossorigin="" />
  <script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js" integrity="sha512-XQoYMqMTK8LvdxXYG3nZ448hOEQiglfqkJs1NOQV44cWnUrBc8PkAOcXy20w0vlaXaVUearIOBhiXZ5V3ynxwA==" crossorigin=""></script>
    
    <script
  src="https://code.jquery.com/jquery-3.6.0.min.js"
            
  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
            
  crossorigin="anonymous"></script>
    
    <script src="https://code.highcharts.com/highcharts.js"></script>
    
	<link rel="stylesheet" type="text/css" href="style.css">
    
     <script src=" https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
   
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.css" />
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@200&display=swap" rel="stylesheet">
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    
      <source src="video/big_buck_bunny.mp4" type="video/mp4">
    
        
</head>
    
    <meta name="viewport" content="width=device-width, initial-scale=1">
<script type = "text/javascript">
    
    
    window.onload=function(){/*from   w w w  .  j  a va2 s .c om*/
/** Watch carefully,
If you set one 'undefined' values on any of the dataset, it will result in the labels being crossed (or strikethrough). This means that if you only use one dataset, and you don't want the labels being shown in the chart and getting the labels crossed you want to set the values to 'undefined'.
Null values will get you same result *without* the labels being crossed.
So you want to use 'undefined' values if you would like to cross the label and hide the data, and you want to use 'null' values if you would like to just hide the data without getting the labels crossed.
Try to play around with it and use it as you like.
*/
var ctx = document.getElementById("myDoughnut").getContext("2d");
var myChart = new Chart(ctx, {
  type: 'doughnut',

  data: {
    labels: ["Óptimo", "Medio", "Alto", "error"],
    datasets: [{
      label: '# of Votes',
      data: [<?php echo $rowVerdes["COUNT(*)"] ?>, <?php echo $rowAmarillos["COUNT(*)"] ?>, <?php echo $rowRojos["COUNT(*)"] ?>, <?php echo $rowErrores["COUNT(*)"] ?>],
      // Play around with null and undefined values and see the difference on how the Chart reacts.
      backgroundColor: [
        '#5CD85A',
        '#FBEE0F',
        '#FF0F39',
        '#868B8E'
             
      ],
      borderWidth: 3,
        lineWidth: 10
     
   
    }]
  },
  options: {
      
      
      
  
      
      
    
      
    tooltips: {
      mode: null
    },
    plugins: {
         
      datalabels: {
        borderWidth: 5,
        borderColor: "white",
        borderRadius: 5,
        // color: 0,
        font: {
          weight: "bold"
        },
        backgroundColor: "lightgray"
        
      }
    }
  }
});
    }

    

    
    
    
    
    
    
    
    
    
    
    
    
    
    </script> 
    
<header>
    <p id="reloj" class="text-center"></p>
    
    <p id="date" class="text-center"></p>
    <a href = "logout.php"> Logout </a>
    
</header>
    
    
    
<body2>
    
    
    
    
<form2>
    <h1> Hello, <?php echo $_SESSION['nombre']; ?></h1><br>
  
      <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.min.js"></script> 
      <script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@0.4.0/dist/chartjs-plugin-datalabels.js"></script>
    
     <div class="container"> 
         <div width="800"> 
            <canvas id="myDoughnut"></canvas> 
         </div> 
      </div> 
      
      

          <div id = "map"></div>
<script>
var map = L.map('map').setView([19.283698105248043, -99.1350945369661],18);
L.tileLayer('https://api.maptiler.com/maps/voyager/{z}/{x}/{y}.png?key=i2EPMznDyQ9Ye9pqedlK', { attribution : '<a href="https://carto.com/" target="_blank">&copy; CARTO</a> <a href="https://www.maptiler.com/copyright/" target="_blank">&copy; MapTiler</a> <a href="https://www.openstreetmap.org/copyright" target="_blank">&copy; OpenStreetMap contributors</a>'}).addTo(map);
var marker = L.marker([19.283698105248043,-99.1350945369661]).addTo(map);
var circle_0 = L.circle([19.283486864303704,-99.13538145610816], {
color: '#88C479', 
fillColor: '#A6EE94', 
fillOpacity: 0.5,
radius: 10}).addTo(map);

var circle_1 = L.circle([19.283183543496836,-99.13605284690061], {
color: '#88C479', 
fillColor: '#A6EE94',  
fillOpacity: 0.5,
radius: 10}).addTo(map);

var circle_2 = L.circle([19.282815224618922,-99.1367070225445], {
color: '#88C479', 
fillColor: '#A6EE94',  
fillOpacity: 0.5,
radius: 10}).addTo(map);

var circle_3 = L.circle([19.283763102406866,-99.13736693657127], {
color: '#FF9C9C', 
fillColor: '#FFC2C2',
fillOpacity: 0.5,
radius: 10}).addTo(map);

var circle_4 = L.circle([19.284337242856044,-99.13577166614137], {
color: '#FF9C9C', 
fillColor: '#FFC2C2', 
fillOpacity: 0.5,
radius: 10}).addTo(map);

var circle_5 = L.circle([19.284553899106193,-99.13656930135632], {
color: '#FF9C9C', 
fillColor: '#FFC2C2',
fillOpacity: 0.5,
radius: 10}).addTo(map);

var circle_6 = L.circle([19.28524719718035,-99.13627090544857], {
color: '#FF9C9C', 
fillColor: '#FFC2C2', 
fillOpacity: 0.5,
radius: 10}).addTo(map);

var circle_7 = L.circle([19.28473264029677,-99.13444036132218], {
color: '#87B6FF', 
fillColor: '#C0D9FF', 
fillOpacity: 0.5,
radius: 10}).addTo(map);

var circle_8 = L.circle([19.28412600273617,-99.13461825119028], {
color: '#BBA1CD', 
fillColor: '#E1C1F8', 
fillOpacity: 0.5,
radius: 10}).addTo(map);

var circle_9 = L.circle([19.283703521678927,-99.13403293614044], {
color: '#BBA1CD', 
fillColor: '#E1C1F8', 
fillOpacity: 0.5,
radius: 10}).addTo(map);

var circle_10 = L.circle([19.28421266538242,-99.13400424422625], {
color: '#BBA1CD', 
fillColor: '#E1C1F8', 
fillOpacity: 0.5,
radius: 10}).addTo(map);


var circle_11 = L.circle([19.284927630463976,-99.13372880184986], {
color: '#87B6FF', 
fillColor: '#C0D9FF', 
fillOpacity: 0.5,
radius: 10}).addTo(map);

marker.bindPopup("<b> Edge </b>").openPopup();
circle_0.bindPopup(" Sensor 0 ");
circle_1.bindPopup(" Sensor 1 ");
circle_2.bindPopup(" Sensor 2 ");
circle_3.bindPopup(" Sensor 3 ");
circle_4.bindPopup(" Sensor 4 ");
circle_5.bindPopup(" Sensor 5 ");
circle_6.bindPopup(" Sensor 6 ");
circle_7.bindPopup(" Sensor 7 ");
circle_8.bindPopup(" Sensor 8 ");
circle_9.bindPopup(" Sensor 9 ");
circle_10.bindPopup(" Sensor 10 ");
circle_11.bindPopup(" Sensor 11 ");


</script> 
    

 </form2>


    
    
    
    
    

 
    
    <script src = "https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.4.1/chart.min.js"></script>
     <script src = "https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.bundle.js"></script>
   
    
    
    
<script src="./hora.js"></script>
</body2>
    
    
</html>
<?php
    
}else{
    header("location: index.php");
            exit();  
}
?>



