import test from 'ava';
import req from 'requisition';

// var express = require('express');
// var app = express();
//
// app.get('/', function (req, res) {
//     res.send('Hello World!'); // This will serve your request to '/'.
// });
//
// app.listen(8080 , function () {
//     console.log('Example app listening on port 8080!');
// });

let port = 8080;
let host = "localhost";
let scheme = 'http://';
let rootAPI = "/api/";

const basicURL = (path)=>scheme+host+":"+port+rootAPI+path;

test("get All Musics", async (t)=>
{
    try{
        console.log(basicURL("musique.php"));
        const res = await req(basicURL("musique.php"));
        const body = await res.json();
        console.log(body);
        t.truthy(body);
    }catch(err){
        console.log(err);
        t.fail();
    }


   //t.truthy(body.length);
   //const music = body[0];
   //t.truthy(music.title);
   //t.is(music.title, "Love Me Tender");
});

test("get All Likes", async (t)=>
{
    try{
        console.log(basicURL("likes.php"));
        const res = await req(basicURL("likes.php"));
        const body = await res.json();
        console.log(body);
        t.truthy(body);
    }catch(err){
        console.log(err);
        t.fail();
    }


    //t.truthy(body.length);
    //const music = body[0];
    //t.truthy(music.title);
    //t.is(music.title, "Love Me Tender");
});

// npm test

// Créer un dossier
// créer un fichier JS
// npx create-ava --next
// npm install --save-dev requisition