<?php
session_start(); // Starting Session

//if session exit, user nither need to signin nor need to signup
if(isset($_SESSION['login_id'])){
  if (isset($_SESSION['pageStore'])) {
      $pageStore = $_SESSION['pageStore'];
header("location: $pageStore"); // Redirecting To Profile Page
    }
}

//Login progess start, if user press the signin button
if (isset($_POST['signIn'])) {
if (empty($_POST['email']) || empty($_POST['password'])) {
echo "Username & Password should not be empty";
}
else
{

$email = $_POST['email'];
$password = $_POST['password'];

// Make a connection with MySQL server.
include('config.php');

$sQuery = "SELECT id, password from account where email=? LIMIT 1";

// To protect MySQL injection for Security purpose
$stmt = $conn->prepare($sQuery);
$stmt->bind_param("s", $email);
$stmt->execute();
$stmt->bind_result($id, $hash);
$stmt->store_result();

if($stmt->fetch()) { 
  if (password_verify($password, $hash)) {
          $_SESSION['login_id'] = $id;

          if (isset($_SESSION['pageStore'])) {
            $pageStore = $_SESSION['pageStore'];
          }
          else {
            $pageStore = "index.php";
          }
          header("location: $pageStore"); // Redirecting To Profile
          $stmt->close();
          $conn->close();

        }
else {
       echo 'Invalid Username & Password';
     }
      } else {
       echo 'Invalid Username & Password';
     }
$stmt->close();
$conn->close(); // Closing database Connection
}
}
?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <title>Login</title>
  <link rel="stylesheet" href="auth.css">
</head>
<body>
 <div class="rlform">
  <div class="rlform rlform-wrapper">
   <div class="rlform-box">
    <div class="rlform-box-inner">
   <form method="post">
    <p>Sign in to continue</p>

    <div class="rlform-group">
     <label>Email</label>
     <input type="email" name="email" class="rlform-input" required>
    </div>

    <div class="rlform-group password-group">
     <label>Password</label>
     <input type="password" name="password" class="rlform-input" required>
    </div>

    <button type="submit" class="rlform-btn" name="signIn">Sign In
    </button>

    <div class="text-foot">
    Don't have an account? <a href="register.php">Register</a>
    </div>
   </form>
  </div>
   </div>
     </div>
 </div>
 </body>
</html>