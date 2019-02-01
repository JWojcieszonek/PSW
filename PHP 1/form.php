<!DOCTYPE html>

<html>
   <head>
      <meta charset = "utf-8">
      <title>Form Validation</title>
      <style type = "text/css">
         p       { margin: 0px; }
         .error  { color: red }
         p.head  { font-weight: bold; margin-top: 10px; }
         label  { width:85em; float: left; }
         div {padding: 5px;}
         
      </style>
   </head>
   <body>
      <?php

      define("PASSWORD","qwerty"); //CONST
      $passwordErr = $yearErr =  $emailErr = $firstNameErr = $lastNameErr = "";
      $password = $prog = $year = $firstName = $email = $lastName = "";

      $ip=$_SERVER['REMOTE_ADDR'];
      
      print("<h1> Clients IP address $ip </h1> ");
      
      define("CONST","x");
         function filled()
         {
            foreach ($_POST as $item) 
            {
               if(empty($item))
               {
                 //die( "<p class = 'error'>Fill all data</p>");
                  return false;
               }
            }
            return true;
         }
         if (empty($_POST["firstName"])) 
         {
            $firstNameErr="Email is required";
         }
         else
         {
            if (!preg_match( "/^[a-zA-Z]{3,}$/", $_POST["firstName"]))
            {
               $firstNameErr="Invalid input";
            }
            else
               $firstName=$_POST["firstName"];
         }
         

         if (empty($_POST["lastName"])) 
         {
            $lastNameErr="Last name is required";
         }
         else
         {
            if (!preg_match( "/^[a-zA-Z]{3,}$/", $_POST["lastName"]))
            {
               $lastNameErr="Invalid input";
            }
            else
               $lastName=$_POST["lastName"];
         }
        
         if (empty($_POST["email"])) 
         {
            $emailErr = "Email is required";
         } 
         else 
         {
            if (!filter_var($_POST["email"],FILTER_VALIDATE_EMAIL))
            {
               $emailErr="Invalid email";
            }
            else
               $email=$_POST["email"];
         }  

         if (empty($_POST["password"])) 
         {
            $passwordErr = "Password is required";
         } 
         else 
         {
            if ($_POST["password"]!==PASSWORD)
            {
               $passwordErr="Invalid password";
            }
            else
               $password=$_POST["password"];
         }  
         
      
         if(!empty($_POST["year"]))
         {
            if(!preg_match("/^[0-9]{4}$/",$_POST["year"]))
            {
               $yearErr = "Invalid input";
            }
            else
            {
            $age=$_POST['year'];
            $age=date('Y')-$age; //typowanie dynamiczne
            //echo "Age: $age";
            if($age<18) //porwnanie
               $yearErr = "You have to be 18";
            }
            $year=$_POST["year"];
         }

      ?>
      <form method = "post" action = "<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" >
            <div><label>First name:</label>
            <input type = "text" name = "firstName" value="<?php echo $firstName;?>"size="30">
            <span class="error">* <?php echo $firstNameErr;?></span></div>

            <div><label>Last name:</label>
            <input type = "text" name = "lastName" value="<?php echo $lastName;?>"size="30">
            <span class="error">* <?php echo $lastNameErr;?></span></div>

            <div><label>Email:</label>
            <input type = "text" name = "email" value="<?php echo $email;?>" size="30">
            <span class="error">* <?php echo $emailErr;?></span></div>

            <div><label>Password:</label>
            <input type = "password" name = "password" value="<?php echo $password;?>" >
            <span class="error"> <?php echo $passwordErr;?></span></div></div>

            <div><label>Year of birth:</label>
            <input type = "text" name = "year" value="<?php echo $year;?>" maxlength="4">
            <span class="error"> <?php echo $yearErr;?></span></div></div>

            <div><label>Number a:</label>
            <input type = "text" name = "numA"></div>

            <div><label>Number b:</label>
            <input type = "text" name = "numB"></div>

            <div><label>Binary:</label>
            <input type = "text" name = "binary" pattern="[0-1]{1,10}" maxlength="10"></div>

            <div><label>Programming languages:</label><br>
            <input type="checkbox" name="languages[]" value="1" <?php if(!empty($_POST["languages"]) && in_array("1",$_POST["languages"])) echo "checked"?>>Java<br>
            <input type="checkbox" name="languages[]" value="2" <?php if(!empty($_POST["languages"]) && in_array("2",$_POST["languages"])) echo "checked"?>>C<br>
            <input type="checkbox" name="languages[]" value="3" <?php if(!empty($_POST["languages"]) && in_array("3",$_POST["languages"])) echo "checked"?>>C#<br>
            <input type="checkbox" name="languages[]" value="4" <?php if(!empty($_POST["languages"]) && in_array("4",$_POST["languages"])) echo "checked"?>>PHP<br>
            <input type="checkbox" name="languages[]" value="5" <?php if(!empty($_POST["languages"]) && in_array("5",$_POST["languages"])) echo "checked"?>>Python<br>
            </div>
            <p><input type = "submit" name = "submit" value = "Submit"></p>

            <?php 
            filled();
            if(!empty($_POST["binary"]))
            {
               $binary = $_POST["binary"];
               $binary = preg_replace("[1]","x",$binary);
               echo "<p>$binary</p>";
            }
            if(!empty($_POST["numA"]) && !empty($_POST["numB"]))
            {
               $a = $_POST["numA"];//operatory arytmetyczne
               $b = $_POST["numB"];
               $sum= $a+$b;
               $dif=(int)$a-(int)$b;
               $prod = (double)$a*(double)$b;
               $quot = $a/$b;
               
               echo "<p>a+b= $sum</p>";
               echo "<p>a-b= $dif</p>";
               echo "<p>a*b= $prod</p>";
               echo "<p>a/b= $quot</p>";
            }
           
            if(!empty($_POST["languages"]))//tablice asocjacyjne
            {
               $languages['1']="Java";
               $languages['2']="C";
               $languages['3']="C#";
               $languages['4']="PHP";
               $languages['5']="Python";
         
               $check=$_POST['languages'];
               echo "<p>Znane języki programowania: </p>";
               for($i=0; $i<count($check);$i++)
               {
                  echo $languages[$check[$i]].'<br>';  
               }
               echo "Display 3 elements of array Key => Element<br>";
            
               for($i=0; $i<3;$i++)
               {
                  echo key($languages)."=>".current($languages)."<br>" ;
                  next($languages);
               }
               echo "Display current after loop: ";
               echo current($languages);
               reset($languages);
               echo "Display current after reset: ";
               echo current($languages);

            }
            ?>
        </form>
   </body>
</html>