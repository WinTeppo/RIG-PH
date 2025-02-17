<?php

include 'config.php';

if(isset($_POST['submit'])){
   $name = mysqli_real_escape_string($conn, $_POST['name']);
   $email = mysqli_real_escape_string($conn, $_POST['email']);
   $pass = mysqli_real_escape_string($conn, md5($_POST['password']));
   $cpass = mysqli_real_escape_string($conn, md5($_POST['cpassword']));
   $user_type = 'user';

   if(!isset($_POST['privacy_check'])) {
      $message[] = 'Please agree to the Data Privacy terms before registering.';
   } else {
      $select_users = mysqli_query($conn, "SELECT * FROM `users` WHERE email = '$email' AND password = '$pass'") or die('query failed');

      if(mysqli_num_rows($select_users) > 0){
         $message[] = 'User already exists!';
      }else{
         if($pass != $cpass){
            $message[] = 'Confirm password does not match!';
         }else{
            mysqli_query($conn, "INSERT INTO `users`(name, email, password, user_type) VALUES('$name', '$email', '$cpass', '$user_type')") or die('query failed');
            $message[] = 'Registered successfully!';
            header('location:login.php');
         }
      }
   }
}


?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>RIG.PH | Register</title>
   <link rel="icon" type="image/x-icon" href="images/RIGfavi.ico">

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/styles.css">

</head>
<body>



<?php
if(isset($message)){
   foreach($message as $message){
      echo '
      <div class="message">
         <span>'.$message.'</span>
         <i class="fas fa-times" onclick="this.parentElement.remove();"></i>
      </div>
      ';
   }
}
?>
   
   <div class="form-container">
   <img class="loginlogo" src="images/RIG-logo.png">
   <form action="" method="post">

      <h3>Register Now</h3>
      <input type="text" name="name" placeholder="Enter your name" required class="box">
      <input type="email" name="email" placeholder="Enter your email" required class="box">
      <input type="password" name="password" placeholder="Enter your password" required class="box">
      <input type="password" name="cpassword" placeholder="Confirm your password" required class="box">
      <div class="privacy-checklist">
         <input type="checkbox" id="privacy_check" name="privacy_check" required>
         <label for="privacy_check">
            I have read and agree to the <a href="privacy-policy.php">Data Privacy Act of the Philippines</a>.
         </label>
      </div>
      <input type="submit" name="submit" value="Register Now" class="btn">

      <p>Already have an account? <a href="login.php">LOGIN NOW</a></p>
   </form>
</div>


</body>
</html>