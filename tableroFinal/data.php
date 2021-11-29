<?php
$mysqli = new mysqli("localhost", "root", "root", "highcharts");

/* verificar conexión */
if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}



/* crear una sentencia preparada */
$stmt = $mysqli->prepare("SELECT COUNT(*)FROM highcharts WHERE name = 'apple'");
$result = $stmt->execute();
