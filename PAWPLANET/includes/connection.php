<?php
$con = mysqli_connect("localhost","root","","pawplanet") or die(mysqli_error($con));
if(!isset($_SESSION)){
session_start();}
?>