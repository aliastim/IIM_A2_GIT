<?php
/**
 * Created by PhpStorm.
 * User: timotheecorrado
 * Date: 18/04/2018
 * Time: 16:47
 */

function readMusics($db)
{
    $sql = "SELECT * FROM musics";
    $stmt = $db->prepare( $sql );
    $stmt->execute();
    return $stmt->fetchAll(PDO::FETCH_ASSOC);



				
}
