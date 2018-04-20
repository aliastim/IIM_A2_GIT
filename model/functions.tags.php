<?php
/**
 * Created by PhpStorm.
 * User: malou
 * Date: 20/04/2018
 * Time: 11:06
 */

function countTag(PDO $db, $tag_id){
    $sql = "SELECT * FROM musics_tags WHERE id = :id";

    $req = $db->prepare($sql);
    $req->execute(array(
        ':id' => $tag_id
    ));

    $result = $req->fetch(PDO::FETCH_ASSOC);

    return $result;
}





