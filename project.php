<?php

$insert = false;
if(isset($_POST['Name'])){
   //set connection variables
   $server = "localhost";
   $username = "root";
   $password = "";
   //create a database connection
   $con = mysqli_connect($server, $username, $password);
   if(!$con){
       die("connection error".mysqli_connect_error());
   }
   //echo "Successfully connecting to the db";
   //collect post variables
   $name = $_POST['Name'];
   $gender = $_POST['Gender'];
   $feedback = $_POST['Feedback'];
   $age = $_POST['Age'];
   $email = $_POST['Email'];
   $phone = $_POST['Phone'];
   $sql = "INSERT INTO `trip`.`table` (`Name`, `Email`, `Age`, `Gender`, `Phone`, `Feedback`, `Date`) VALUES ('$name', '$email', '$age', '$gender', '$phone', '$feedback', current_timestamp());";
   //echo $sql;
   
   //object operator
   if($con->query($sql) == true){
       //echo "Successfully inserted";
       //flag for successfull insertion
       $insert = true;
   }
   else{
       echo "Error: $sql <br> $con->error";
   }
   //close the database connection
   $con->close();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="project.css">
    <title>Welcome to Travel form</title>
</head>
<body>
    <img class="bg" src = "university.jpg" alt="Picture">
    <div class="container">
        <h1>Welcome to Chitkara university</h1>
        <p>Enter your details and submit this form to confirm your participation in the trip</p>
        <?php
         if($insert==true){
         echo "<p class='submitMsg'>Thanks for submitting your form. We are happy to see you joining us for the US trip</p>";
         }
        ?>
        <form action="project.php" method="POST">
            <input type="text" placeholder="Enter your name" name="Name" id="Name">
            <input type="text" placeholder="Enter your age" name="Age" id="Age">
            <input type="text" placeholder="Enter your gender" name="Gender" id="Gender">
            <input type="email" placeholder="Enter your email" name="Email" id="Email">
            <input type="text" placeholder="Enter your phone" name="Phone" id="Phone">
            <textarea name="Feedback" id="Feedback" cols="30" rows="10" placeholder="Enter your feedback"></textarea>
            <button class="btn" style="float:left;">Submit</button>
            <!--button class="btn" style="float:left;">Reset</button-->
        </form>
        <!--INSERT INTO `table` (`Sr.`, `Name`, `Email`, `Age`, `Gender`, `Phone`, `Feedback`, `Date`) VALUES ('1', 'Sameer', 'Sameer@gmail.com', '19', 'Male', '147852369', 'This is a good value.', current_timestamp());-->
    </div>
</body>
</html>