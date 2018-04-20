<?php
/**
 * Created by PhpStorm.
 * User: malou
 * Date: 18/04/2018
 * Time: 15:37
 */
session_start();
require('../config/config.php');
require('../model/functions.likes.php');





$comment_id = $_GET['comment_id'];


$data = countLike($db, $comment_id);










header('Content-Type: application/json');
echo json_encode($data);
