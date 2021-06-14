<?php
//database connection command host, user root, pass null, db test

$con = mysqli_connect("localhost","root","","test"); //1

function pagination($con,$table,$pno,$n){//1
	$query = $con->query("SELECT COUNT(*) as rows FROM ".$table);
	$row = mysqli_fetch_assoc($query);
	//$totalRecords = 100000;// 1
	$pageno = $pno;//1
	$numberOfRecordsPerPage = $n;//1

	//$totalPage = ceil($totalRecords/4numberOfRecordsPerPage); //1

	$last = ceil($row["rows"]/$numberOfRecordsPerPage);

	$pagination = "<ul class='pagination'>";

	if ($last != 1) {
		if ($pageno > 1) {
			$previous = "";
			$previous = $pageno - 1;
			$pagination .= "<li class='page-item'><a class='page-link' href='".$previous."' style='color:#333;'> Previous </a></li>";
		}
		for($i=$pageno - 5;$i< $pageno ;$i++){
			if ($i > 0) {
				$pagination .= "<li class='page-item'><a class='page-link' href='".$i."'> ".$i." </a></li>";
			}
			
		}
		$pagination .= "<li class='page-item'><a class='page-link' href='".$pageno."' style='color:#333;'> $pageno </a></li>";
		for ($i=$pageno + 1; $i <= $last; $i++) { 
			$pagination .= "<li class='page-item'><a class='page-link' href='".$i."'> ".$i." </a></li>";
			if ($i > $pageno + 4) {
				break;
			}
		}
		if ($last > $pageno) {
			$next = $pageno + 1;
			$pagination .= "<li class='page-item'><a class='page-link' href='".$next."' style='color:#333;'> Next </a></li></ul>";
		}
	}
//LIMIT 0,10
	//LIMIT 20,10
	$limit = "LIMIT ".($pageno - 1) * $numberOfRecordsPerPage.",".$numberOfRecordsPerPage;

	return ["pagination"=>$pagination,"limit"=>$limit];
}



if (isset($_GET["pageno"])) {
	$pageno = $_GET["pageno"];

	$table = "paragraph";

	$array = pagination($con,$table,$pageno,10);

	$sql = "SELECT * FROM ".$table." ".$array["limit"];

	$query = $con->query($sql);

	while ($row = mysqli_fetch_assoc($query)) {
		echo "<div style='margin:0 auto;font-size:20px;'><b>".$row["pid"]."</b> ".$row["p_description"]."</div>";
	}
	echo "<div style='font-size:22px;'>".$array["pagination"]."</div>";

}


?>