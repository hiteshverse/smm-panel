<?php
$url = $_SERVER["SERVER_NAME"];  
define('PATH', realpath('.'));
define('SUBFOLDER', false);
define('URL', 'https://deplans.me');
define('STYLESHEETS_URL', '//deplans.me' );
date_default_timezone_set('Asia/Kolkata');
error_reporting(0);
return [
  'db' => [
    'name'    =>  'deplansm_deplansm' ,
    'host'    =>  'localhost',
    'user'    =>  'deplansm_deplansm' ,
    'pass'    =>  'deplansm_deplansm' ,
    'charset' =>  'utf8mb4' 
  ]
];
?>