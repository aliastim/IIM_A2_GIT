<?php
require('config/config.php');
require('model/functions.fn.php');
session_start();

if(	isset($_POST['username']) && isset($_POST['email']) && isset($_POST['password']) && 
	!empty($_POST['username']) && !empty($_POST['email']) && !empty($_POST['password'])) {



    $email = $_POST['email'];
    $username = $_POST['username'];



    if ((isEmailAvailable($db, $email)) AND (isUsernameAvailable($db, $username))) {

        echo $email; echo $username;


        userRegistration($db, $username, $email, $_POST['password']);



    } else {
        $error = 'erreur';
    }







}else{ 
	$_SESSION['message'] = 'Erreur : Formulaire incomplet';
	header('Location: register.php');
}