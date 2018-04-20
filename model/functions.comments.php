<?php
/**
 * Created by PhpStorm.
 * User: malou
 * Date: 20/04/2018
 * Time: 10:48
 */


function countComment(PDO $db, $comment_id){
    $sql = "SELECT * FROM musics_comments WHERE id = :id";

    $req = $db->prepare($sql);
    $req->execute(array(
        ':id' => $comment_id
    ));

    $result = $req->fetch(PDO::FETCH_ASSOC);

    return $result;
}

