<?php
	define('BASE_PATH', realpath(dirname(__FILE__).'/..'));
	require_once BASE_PATH . '/app/controllers/UserController.php';
	require_once BASE_PATH . '/app/controllers/WorkController.php';
	$userController = new UserController();
	$workController = new WorkController();
	if ($_SERVER['REQUEST_URI'] == '/git/register') {
		$userController->register();
	}	

	if ($_SERVER['REQUEST_URI'] == '/git/login') {
		$userController->login();
	}	

	if ($_SERVER['REQUEST_URI'] == '/git/addDay') {
		$workController->addDay();
	}

	if ($_SERVER['REQUEST_URI'] == '/git/showDay') {
		$workController->showDay();
	}
	//echo "Strona startowa";