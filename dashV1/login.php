<?php
session_start();
include "db_conn.php";

if(isset($_POST['uname']) && isset($_POST['password'])){
    
    function validate($data){
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }
    
    $uname = validate($_POST['uname']);
    $pass = validate($_POST['password']);
    
    if (empty($uname)){
        header("location: index.php?error=User Name is required");
        exit();
    }else if(empty($pass)){
        header("location: index.php?error=Password is required");
        exit();
    }else{
        $sql = "SELECT * FROM Usuarios WHERE username = '$uname' AND password = '$pass'";
        
        $result = mysqli_query($conn, $sql);
        
        if(mysqli_num_rows($result)===1){
            $row = mysqli_fetch_assoc($result);
            if($row['username']=== $uname && $row['password']=== $pass ){
            $_SESSION['username'] = $row['username']; 
            $_SESSION['nombre'] = $row['nombre']; 
            $_SESSION['id_usuario'] = $row['id_usuario']; 
            header("location: home.php");
            exit();    
            }
        }else{
            header("location: index.php?error=Incorrecct Username or password");
            exit();
        }
    }
    
    }else{
    header("location: index.php");
    exit();
    
}