<?php
/**
 * Created by PhpStorm.
 * User: timotheecorrado
 * Date: 18/04/2018
 * Time: 16:47
 */

function readMusics($db)
{
    $sql = "SELECT id, title ,file, created_at FROM musics";
    $stmt = $db->prepare( $sql );
    $stmt->execute();
    $row = $stmt->fetch(PDO::FETCH_ASSOC);

    // values to fill up our form
    $title = $row['title'];
    $file = $row['file'];
    $created_at = $row['created_at'];
				
}
