<?php 

use \Hcode\PageAdmin;
use \Hcode\Model\User;

$app->get("/admin/users", function(){

	User::verifyLogin();

	$users = User::listAll();

	$page = new PageAdmin();

	$page->setTpl("users", array(
		"users"=>$users

	));

});//PageAdmin Users

$app->get("/admin/users/create", function(){

	User::verifyLogin();

	$page = new PageAdmin();

	$page->setTpl("users-create");

});//PageAdmin Create

$app->get("/admin/users/:iduser/delete", function($iduser){

	User::verifyLogin();

	$user = new User();

	$user->get((int)$iduser);

	$user->delete();

	header("Location: /admin/users");
	exit;
	
});//PageAdmin delete users

$app->get("/admin/users/:iduser", function($iduser){

	User::verifyLogin();

	$user = new User();

	$user->get((int)$iduser);

	$page = new PageAdmin();

	$page->setTpl("users-update", array(
		"user"=>$user->getValues()
	));

});//PageAdmin Update

$app->post("/admin/users/create", function(){

	User::verifyLogin();

	$user = new User();

	$_POST["inadmin"] = (isset($_POST["inadmin"]))?1:0;

	$user->setData($_POST);

	$user->save();

	header("Location: /admin/users");
	exit;


});//PageAdmin Create "POST"

$app->post("/admin/users/:iduser", function($iduser){

	User::verifyLogin();

	$user = new User();

	$_POST["inadmin"] = (isset($_POST["inadmin"]))?1:0;

	$user->get((int)$iduser);

    $new_password = User::getPasswordHash($_POST['despassword']);
 
    if ($new_password != $user->getdespassword()) {
            $_POST['despassword'] = $new_password;
    } else {
            $_POST['despassword'] = $user->getdespassword();
    }

	$user->setData($_POST);

	$user->update();

	header("Location: /admin/users");
	exit;
	
});//PageAdmin Update "POST"

 ?>