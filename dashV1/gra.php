<?php

$mysqli = new mysqli("localhost", "root", "", "SENSORS");

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










































<html>
    
   <head> 
      <title>Hide a data in Doughnut/Pie Datasets</title> 
       <h1>Nivel </h1>
       
      
       
      
       
      <meta name="viewport" content="width=device-width, initial-scale=1"> 
      <script type="text/javascript">
          
        
      
        
  

          
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
   </head> 
   <body> 
      <div id="app"> 
         <div width="400"> 
            <canvas id="myDoughnut"></canvas> 
         </div> 
      </div> 
      <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.min.js"></script> 
      <script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@0.4.0/dist/chartjs-plugin-datalabels.js"></script> 
      <!-- Made in 21 Nov 2018 --> 
      <!-- with ChartJS 2.7.3 -->  
   </body>
</html>





