<!DOCTYPE html>
<html>

<head>
    <title>LOGIN</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@200&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@200&display=swap" rel="stylesheet">


</head>

<body>



    <form action="login.php" method="post">
        <h2 style="font-family:'Nunito', sans-serif" ;>Iniciar sesión</h2>
        <?php if (isset($_GET['error'])) { ?>
            <p class="error"><?php echo $_GET['error']; ?></p>
        <?php } ?>
        <label style="font-family:'Nunito', sans-serif" ;>Usuario</label>
        <input type="text" name="uname" placeholder="Usuario" style="font-family:'Nunito', sans-serif" ;><br>

        <label style="font-family:'Nunito', sans-serif" ;>Contraseña</label>
        <input type="password" name="password" placeholder="Contraseña" style="font-family:'Nunito', sans-serif" ;><br>

        <button type="submit" style="font-family:'Nunito', sans-serif" ;>Iniciar sesión</button>


    </form>


</body>

</html>