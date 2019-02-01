<?php
    session_start();
    if (!isset($_SESSION['login']) || session_id()=='')
    {
        die("You have to be logged in!");
        
    }
?>

<!DOCTYPE html>
<html lang="pl">
    <head>
            <meta charset="utf-8">
            <meta name="keywords" content="design, web, page, web page, HTML5, PSW, CSS">
            <meta name="description" content="Home page">
            <title >Main page</title>
            
    </head>
    <body>
        <h1> <?php echo "Hello " .$_SESSION['login'];?></h1>
        <form method = "post" action = "server.php" >
            <div><label>Style:</label><br>
                <select name="style" onchange="this.form.submit()">
                    <option <?php if (isset($_POST['style']) && $_POST['style'] == 'default.css') { ?>selected="true" <?php }; ?> value="default.css">Default<br>
                    <option <?php if (isset($_POST['style']) && $_POST['style'] == 'lightTheme.css') { ?>selected="true" <?php }; ?> value="lightTheme.css">Light<br>    
                    <option <?php if (isset($_POST['style']) && $_POST['style'] == 'darkTheme.css') { ?>selected="true" <?php }; ?> value="darkTheme.css">Dark<br>
            </select>
            </div>
            
           <!-- <p><input type = "submit" value = "Set"></p> -->
        </form>
        <p>
        <button  onclick="location.href='styleCookie.php';"  >Read cookie</button>          
        <button  onclick="location.href='logout.php';"  >Logout</button></p>

    </body>
</html>
<?php
    $dark = "darkTheme.css";// themes
    $light = "lightTheme.css";
    $default = "default.css";
    define("EXPIRATION",10);
    //setcookie( "style", $_POST["style"], time() + EXPIRATION );  

    if((isset($_POST["style"])) && $_POST["style"] == $default)//set cookie and session variable for selected style
    {
        //echo "default";
        $_SESSION["style"] = $_POST["style"];
        setcookie("style",$_POST["style"],time()+EXPIRATION);        
    }
    if((isset($_POST["style"])) && $_POST["style"] == $dark)
    {
        //echo "dark";
        $_SESSION["style"] = $_POST["style"];
        setcookie("style",$_POST["style"],time()+EXPIRATION);        
    }
    if((isset($_POST["style"])) && $_POST["style"] == $light)
    {
        $_SESSION["style"] = $_POST["style"];
        setcookie("style",$_POST["style"],time()+EXPIRATION);  
        //echo "light";      
    }
    if( isset($_COOKIE['style']))
    {
        $saved = $_COOKIE['style'];
    }
    else
    {
        $saved=$default;
    }
    if(isset($_SESSION["style"]))// if style was changed udate current
        $current=$_SESSION['style'];
    else
        $current=$saved;
    echo '<link rel="stylesheet" href ="'.$current.'">';
    
    
?>