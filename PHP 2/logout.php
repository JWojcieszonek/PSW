<?php

session_start();
//setcookie(session_name(), "", time() - 3600); //send browser command remove sid from cookie
$_SESSION = array();
session_destroy(); //remove sid-login from server storage
header('Location: /Lista_7/login.php');

?>