
<!DOCTYPE html>
<html>
<head>
	<title>LOGIN</title>
	<link rel="stylesheet" type="text/css" href="style.css">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@200&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@200&display=swap" rel="stylesheet">
    
    
</head>

<body>

  
   
    <form action = "login.php" method = "post">
        <h2 style= "font-family:'Nunito', sans-serif";>LOGIN</h2>
        <?php if (isset($_GET['error'])) { ?>
            <p class="error"><?php echo $_GET['error']; ?></p>
        <?php } ?>
        <label style= "font-family:'Nunito', sans-serif";>User Name</label>
        <input type="text" name = "uname" placeholder = "User Name" style= "font-family:'Nunito', sans-serif";><br>
        
        <label style= "font-family:'Nunito', sans-serif"; >Password</label>
        <input type="password" name = "password" placeholder = "Password" style= "font-family:'Nunito', sans-serif";><br>
        
        <button type = "submit" style= "font-family:'Nunito', sans-serif";>Login</button>
    
        
    </form>
        

    </body>
</html>


