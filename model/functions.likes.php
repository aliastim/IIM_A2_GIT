<?php
/**
 * Created by PhpStorm.
 * User: timotheecorrado
 * Date: 18/04/2018
 * Time: 16:47
 */

function countLikes($db)
{
    $sql = "SELECT * FROM musics_likes";
    $stmt = $db->prepare( $sql );
    $stmt->execute();
    return $stmt->fetchAll(PDO::FETCH_ASSOC);

}

function countLike(PDO $db, $like_id){
    $sql = "SELECT * FROM musics_likes WHERE id = :id";

    $req = $db->prepare($sql);
    $req->execute(array(
        ':id' => $like_id
    ));

    $result = $req->fetch(PDO::FETCH_ASSOC);

    return $result;
}