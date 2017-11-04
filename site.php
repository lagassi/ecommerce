<?php 

use \Hcode\Page;

$app->get('/', function() {
    
    $page = new Page();

    $page->setTpl("index");

}); //Page index users


 ?>