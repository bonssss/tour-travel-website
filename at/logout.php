<?php
session_start();
$_SESSION = array();
 if(ini_get("session_get_cookie")) {
    $params = session_get_cookie_params();
    setcookie(session_name(), '', time() - 60*60,
    $params["path"], $params["domain"], 
    $params["secure"], $params["http"]
 ); 
}

unset ($_SESSION['login']);
session_destroy();
header("location: index.php");
?>