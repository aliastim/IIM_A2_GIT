<?php
/**
 * Created by PhpStorm.
 * User: timotheecorrado
 * Date: 18/04/2018
 * Time: 15:37
 */
session_start();
require('../config/config.php');
require('../model/functions.likes.php');


//$arr = readMusics($db);


$like_id = $_GET['like_id'];
//$_GET['id']= 1;

$data = countLike($db, $like_id);



//echo json_encode($value);

//echo json_encode($arr);

header('Content-Type: application/json');
echo json_encode($data);

//foreach ($arr as &$value) {

//echo $value['id'];
//echo json_encode($value);
//}