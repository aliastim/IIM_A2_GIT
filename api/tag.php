<?php
/**
 * Created by PhpStorm.
 * User: malou
 * Date: 18/04/2018
 * Time: 15:37
 */
session_start();
require('../config/config.php');
require('../model/functions.tags.php');





$tag_id = $_GET['tag_id'];


$data = countTag($db, $tag_id);


header('Content-Type: application/json');
echo json_encode($data);

