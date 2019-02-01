<?php

session_start();

if (session_id() != '' && isset($_SESSION['login'])) //if already authenticated redrect to main page
    header('Location: /Lista_7/server.php'); 

$logins = array(
    "Jakub"=>"1234",
    "Kowalski"=>"qwerty",
    "Nowak"=>"test"
);
if( isset($_COOKIE['style']))
    {
        $saved = $_COOKIE['style'];
    }
else 
    $saved = "default.css";
    echo '<link rel="stylesheet" href ="'.$saved.'">';
if (isset($_POST['login']) && isset($_POST['password'])) 
{
    $login = $_POST['login'];
    if (array_key_exists($login,$logins))// is given login registered
    {
        if( $_POST['password'] === $logins[$login])// does given password match login
        {
            $_SESSION['login'] = $_POST['login']; //write login to server storage
            header('Location: /Lista_7/server.php'); //redirect to main page
        }
        else
        {
            echo "<script>alert('Wrong password');</script>";
        }
  }
    else
    {
        echo "<script>alert('Wrong login');</script>";
  }
}

?>
<!DOCTYPE html>
<html lang="pl">
    <head>
            <meta charset="utf-8">
            <meta name="keywords" content="design, web, page, web page, HTML5, PSW, CSS">
            <meta name="description" content="Home page">
            <title >Login</title>
            
    </head>
    <body>
        <form method = "post" action = "login.php" >
            <div><label>Login:</label>
            <input type = "text" name = "login"></div>

            <div><label>Password:</label>
            <input type = "password" name = "password"></div>
            <p><input type = "submit" value = "Log in"></p>
            
        </form>      
                

    </body>
</html>