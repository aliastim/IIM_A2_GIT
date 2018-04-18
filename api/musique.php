<?php
/**
 * Created by PhpStorm.
 * User: timotheecorrado
 * Date: 18/04/2018
 * Time: 15:37
 */
session_start();
require('../config/config.php');
require('../model/functions.fn.php');



//$arr = array('a' => 1, 'b' => 2, 'c' => 3, 'd' => 4, 'e' => 5);

echo json_encode($arr);

