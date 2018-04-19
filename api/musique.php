<?php
/**
 * Created by PhpStorm.
 * User: timotheecorrado
 * Date: 18/04/2018
 * Time: 15:37
 */
session_start();
require('../config/config.php');
require('../model/functions.musiques.php');
require('../model/functions.fn.php');


$arr = readMusics($db);


$music_id = 1;
//$_GET['id']= 1;

$data = selectMusic($db, $music_id);



//echo json_encode($value);

//echo json_encode($arr);

header('Content-Type: application/json');
echo json_encode($data);

//foreach ($arr as &$value) {

    //echo $value['id'];
    //echo json_encode($value);
//}