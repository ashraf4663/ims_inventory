<?php
//echo "yes we are ready to get data";

include_once("../database/constant.php");
include_once("user.php");
include_once("DBOperation.php");


//for registration prosessing
if (isset($_POST["username"]) AND isset($_POST["email"])) {
	$user = new User();
	$result = $user->createUserAccount($_POST["username"], $_POST["email"],$_POST["password1"],$_POST["usertype"]);
	echo $result;
	exit();
}

//for Login process
if (isset($_POST["log_email"]) AND isset($_POST["log_password"])) {
	$user = new User();
	$result=$user ->userLogin($_POST["log_email"], $_POST["log_password"]);
	echo $result;
	exit();
}

//To Get Category
if(isset($_POST["getCategory"])){
	$obj = new DBOperation();
	$rows = $obj->getAllRecord("categories");
	foreach ($rows as $row) {
		echo "<option value='".$row["cid"]."'>".$row["category_name"]."</option>";
	}
	exit();
}


//Fetch Brand
if(isset($_POST["getBrand"])){
	$obj = new DBOperation();
	$rows = $obj->getAllRecord("brands");
	foreach ($rows as $row) {
		echo "<option value='".$row["bid"]."'>".$row["brand_name"]."</option>";
	}
	exit();
}

//Add Category
if (isset($_POST["category_name"]) AND isset($_POST["parent_cat"])) {
	$obj = new DBOperation();
	$result = $obj->addCategory($_POST["parent_cat"],$_POST["category_name"]);
	echo $result;
	exit();
}

//Add Brand
if(isset($_POST["brand_name"])){
	$obj = new DBOperation();
	$result=$obj->addBrand($_POST["brand_name"]);
	echo $result;
	exit();
}


//Add Product
if (isset($_POST["added_date"]) AND isset($_POST["product_name"])) {
	$obj = new DBOperation();
	$result = $obj->addProduct($_POST["select_cat"],
							$_POST["select_brand"],
							$_POST["product_name"],
							$_POST["product_price"],
							$_POST["product_qty"],
							$_POST["added_date"]);
	echo $result;
	exit();
}

?>