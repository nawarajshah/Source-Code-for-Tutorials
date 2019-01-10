<?php
  // Make connection with database
  include('config.php');

session_start();// Starting Session

if (isset($_SESSION['login_id'])) {
      $user_id = $_SESSION['login_id'];

$Squery = "SELECT fullName from account where id = ? LIMIT 1";

// To protect MySQL injection for Security purpose
$stmt = $conn->prepare($Squery);
$stmt->bind_param("i", $user_id);
$stmt->execute();
$stmt->bind_result($fullName);
$stmt->store_result();

if($stmt->fetch()) //fetching the contents of the row
        {
        	$session_fullName = $fullName;
          $stmt->close();
          $conn->close();
        }
}
?>