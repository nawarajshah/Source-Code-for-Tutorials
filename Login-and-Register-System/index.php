<?php
include('session.php');
$_SESSION['pageStore'] = "index.php";

if(!isset($_SESSION['login_id'])){
header("location: login.php"); // Redirecting To login
}
echo '<div style="font-size: 35px;">
<strong>Profile</strong>
<br>'
. $session_fullName
. '<br>
<a href="setting.php">Setting</a>
<a href="logout.php">Logout</a>
</div>';
?>