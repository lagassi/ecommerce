<?php
require 'environment.php';

global $config;
global $db;

$config = array();
if(ENVIRONMENT == 'development') {
	define("BASE_URL", "http://localhost/projeto_popularselect/");
	$config['dbname'] = 'ok_db_chefe_pj';
	$config['host'] = '127.0.0.1';
	$config['dbuser'] = 'root';
	$config['dbpass'] = '';
} else {
	define("BASE_URL", "http://localhost/projeto_popularselect/");
	$config['dbname'] = 'ok_db_chefe_pj';
	$config['host'] = '127.0.0.1';
	$config['dbuser'] = 'root';
	$config['dbpass'] = '';
}

$db = new PDO("mysql:dbname=".$config['dbname'].";charset=utf8;host=".$config['host'], $config['dbuser'], $config['dbpass']);
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
?>