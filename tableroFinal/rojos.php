<?php


// Username is root
$user = 'root';
$password = 'root';

// Database name is gfg
$database = 'SENSORS';

// Server is localhost with
// port number 3308
$servername = 'localhost';
$mysqli = new mysqli(
    $servername,
    $user,
    $password,
    $database
);

// Checking for connections
if ($mysqli->connect_error) {
    die('Connect Error (' .
        $mysqli->connect_errno . ') ' .
        $mysqli->connect_error);
}


// SQL query to select data from database
$sql = "SELECT * FROM colors WHERE color = 'rojo';";
$result = $mysqli->query($sql);
$mysqli->close();
?>

<!DOCTYPE html>
<html lang="en">


<head>
    <meta charset="UTF-8">
    <title>GFG User Details</title>
    <!-- CSS FOR STYLING THE PAGE -->
    <style>
        tablerojos {
            margin: 0 auto;
            font-size: large;
            border: 1px solid black;
        }

        hrojos1 {
            text-align: center;
            color: #006600;
            font-size: xx-large;
            font-family: 'Gill Sans', 'Gill Sans MT',
                ' Calibri', 'Trebuchet MS', 'sans-serif';
        }

        tdrojos {
            background-color: #E4F5D4;
            border: 1px solid black;
        }

        throjos,
        tdrojos {
            font-weight: bold;
            border: 1px solid black;
            padding: 10px;
            text-align: center;
        }

        tdrojos {
            font-weight: lighter;
        }
    </style>
    <picture>
        <source media="(min-width: 1000px)" srcset="paloma.png">
        <source media="(max-width: 500px)" srcset="lpaloma.png">
        <img src="paloma.png" alt="My logo">
    </picture>


</head>

<body>
    <section>
        <h1>Prueba</h1>

        <!-- TABLE CONSTRUCTION-->
        <tablerojos>
            <trrojos>
                <throjos>sensor</throjos>
                <throjos>color</throjos>

            </trrojos>
            <!-- PHP CODE TO FETCH DATA FROM ROWS-->
            <?php   // LOOP TILL END OF DATA 
            while ($rows = $result->fetch_assoc()) {
            ?>
                <trrojos>
                    <!--FETCHING DATA FROM EACH 
                    ROW OF EVERY COLUMN-->
                    <tdrojos><?php echo $rows['sensor']; ?></tdrojos>
                    <tdrojos><?php echo $rows['color']; ?></tdrojos>

                </trrojos>
            <?php
            }
            ?>
        </tablerojos>

    </section>



</body>

</html>