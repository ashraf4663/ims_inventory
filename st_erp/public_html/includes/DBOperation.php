<?php

/**
* 
*/
class DBOperation
{
	
	private $con;

	function __construct()
	{
		include_once("../database/db.php");
		$db = new Database();
		$this->con = $db->connect();
	}

	public function addCategory($parent,$cat){
		$pre_stmt = $this->con->prepare("INSERT INTO `categories`(`parent_cat`, `category_name`, `status`)
		 VALUES (?,?,?)");
		$status = 1;
		$pre_stmt->bind_param("isi",$parent,$cat,$status);
		$result = $pre_stmt->execute() or die($this->con->error);
		if ($result) {
			return "CATEGORY_ADDED";
		}else{
			return 0;
		}

	}

	public function addBrand($brand_name){
		$pre_stmt = $this->con->prepare("INSERT INTO `brands`(`brand_name`, `status`)
		 VALUES (?,?)");
		$status = 1;
		$pre_stmt->bind_param("si",$brand_name,$status);
		$result = $pre_stmt->execute() or die($this->con->error);
		if ($result) {
			return "BRAND_ADDED";
		}else{
			return 0;
		}

	}
/* in sql server under database or project server
	CREATE TABLE products( 
		pid INT(11) NOT NULL AUTO_INCREMENT, 
		cid INT(11) NOT NULL, 
		bid INT(11) NOT NULL, 
		product_name VARCHAR(100) NOT NULL,
		product_price DOUBLE NOT NUL,
		product_stock INT(11) NOT NULL,
		added_date DATE NOT NULL,
		p_status ENUM('1','0') NOT NULL,
		PRIMARY KEY(pid),
		UNIQUE KEY(product_name),
		FOREIGN KEY(cid) REFERENCES categories(cid),
		FOREIGN KEY(bid) REFERENCES brands(bid)
		);
*/
	public function addProduct($cid,$bid,$pro_name,$price,$stock,$date){
		$pre_stmt = $this->con->prepare("INSERT INTO `products`
			(`cid`, `bid`, `product_name`, `product_price`,
			 `product_stock`, `added_date`, `p_status`)
			 VALUES (?,?,?,?,?,?,?)");
		$status = 1;
		$pre_stmt->bind_param("iisdisi",$cid,$bid,$pro_name,$price,$stock,$date,$status);
		$result = $pre_stmt->execute() or die($this->con->error);
		if ($result) {
			return "NEW_PRODUCT_ADDED";
		}else{
			return 0;
		}

	}


	//create a customer table in sql server st_erp

	/*CREATE TABLE customers( 
		cusid INT(11) NOT NULL AUTO_INCREMENT, 
		cid INT(11) NOT NULL,
    	id INT(11) NOT NULL,
    	invoice_no INT(11) NOT NULL,
		customer_name VARCHAR(100) NOT NULL,
    	date_of_birth DATE NOT NULL,
		address VARCHAR(200) NOT NULL,
		phone VARCHAR(100) NOT NULL,
		email VARCHAR(100) NOT NULL,
    	previous_deu DOUBLE NOT NULL,
    	refarence_cus VARCHAR(100) NOT NULL,
    	curiar VARCHAR(100) NOT NULL,
    	bank VARCHAR(100) NOT NULL,
    	branch_name VARCHAR(100) NOT NULL,
		PRIMARY KEY(cusid),
		UNIQUE KEY(customer_name),
		FOREIGN KEY(cid) REFERENCES categories(cid),
    	FOREIGN KEY (id) REFERENCES invoice_details(id),
    	FOREIGN KEY (invoice_no) REFERENCES invoice(invoice_no)
		);*/

		//after create results is 
		/*CREATE TABLE customers( cusid INT(11) NOT NULL AUTO_INCREMENT, cid INT(11) NOT NULL, id INT(11) NOT NULL, invoice_no INT(11) NOT NULL, customer_name VARCHAR(100) NOT NULL, date_of_birth DATE NOT NULL, address VARCHAR(200) NOT NULL, phone VARCHAR(100) NOT NULL, email VARCHAR(100) NOT NULL, previous_deu DOUBLE NOT NULL, refarence_cus VARCHAR(100) NOT NULL, curiar VARCHAR(100) NOT NULL, bank VARCHAR(100) NOT NULL, branch_name VARCHAR(100) NOT NULL, PRIMARY KEY(cusid), UNIQUE KEY(customer_name), FOREIGN KEY(cid) REFERENCES categories(cid), FOREIGN KEY (id) REFERENCES invoice_details(id), FOREIGN KEY (invoice_no) REFERENCES invoice(invoice_no) )*/

	public function addCustomer($customer_name, $date_of_birth,$address,$phone,$email,$previous_deu,$curiar,$bank,$branch_name,$cid,$refarence_cus,$date){
		$pre_stmt = $this->con->prepare("INSERT INTO `customers`
			(`cid`, `customer_name`, `date_of_birth`, `address`,`phone`, `email`, `previous_deu`,`refarence_cus`,`curiar`,`bank`,`branch_name`,`date`,)
			 VALUES (,?,?,?,?,?,?,?,?,?,?,?,?)");
		$status = 1;
		$pre_stmt->bind_param("sdsssisssssd",$customer_name, $date_of_birth,$address,$phone,$email,$previous_deu,$curiar,$bank,$branch_name,$cid,$refarence_cus,$date);
		$result = $pre_stmt->execute() or die($this->con->error);
		if ($result) {
			return "NEW_CUSTOMER_ADDED";
		}else{
			return 0;
		}

	}

	public function getAllRecord($table){
		$pre_stmt = $this->con->prepare("SELECT * FROM ".$table);
		$pre_stmt->execute() or die($this->con->error);
		$result = $pre_stmt->get_result();
		$rows = array();
		if ($result->num_rows > 0) {
			while($row = $result->fetch_assoc()){
				$rows[] = $row;
			}
			return $rows;
		}
		return "NO_DATA";
	}
}

//$opr = new DBOperation();
//echo $opr->addCustomer("Aslam","1990/01/01","Dhaka","019111111","aslam@gmail.com","","","","","","","2020/01/01");
//echo $opr->addCategory(1,"Mobiles");
//echo "<pre>";
//print_r($opr->getAllRecord("categories"));
?>