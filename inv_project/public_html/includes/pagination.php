<?php
$con = mysqli_connect("localhost","root","","test"); //1 db conection 

function pagination($con,$table,$pno,$n){ //1 apply for any table
	$query = $con->query("SELECT COUNT(*) as rows FROM ".$table);//18
	$row = mysqli_fetch_assoc($query); //18
	//$totalRecords = 10000; //1 supose number of table 100000
	
	$pageno = $pno;	 //1 page no /current page
	$numberOfRecordsPerPage = $n; //1 perpage show records

	//$totalPage = ceil($totalRecords/$numberOfRecordsPerPage); //1 total pages number
	//$last = ceil($totalRecords/$numberOfRecordsPerPage); //2 total pages number
	$last = ceil($row["rows"]/$numberOfRecordsPerPage); //18 total pages number
	$pagination =""; //2 veriable for pages

	if($last != 1){	//2 last page number condition
		if($pageno >1){ //3
			$previous ="";//3
			$previous	= $pageno -1; //3
			//$pagination .="<a href='".$previous."' style='color:#333;'> previous </a>";  //3 
			$pagination .="<a href='pagination.php?pageno=".$previous."' style='color:#333;'> previous </a>";  //3 

		}
		//for($i= 1; $i<=$last;$i++){ //2 page create with number of result
		//for($i= 1; $i< $pageno;$i++){ //4 page create with previous page only
		for($i= $pageno -5; $i< $pageno;$i++){ //7 page create with previous 5 page only
			if($i>0){
				$pagination.= "<a href='pagination.php?pageno=".$i."'> ".$i." </a>"; //8 only ++ no - page display

			}
			//$pagination.= "<a href='".$i."'> ".$i." </a>"; //2 for loop result
		}
		$pagination .="<a href='pagination.php?pageno=".$pageno."' style='color:#333;'> $pageno </a>"; // 5 current page
		for ($i=$pageno+1; $i <=$last  ; $i++) { //6 after current page or next pages
			$pagination .="<a href='pagination.php?pageno=".$i."'> ".$i." </a>";
			if ($i > $pageno +4) {  //9 near 4 or 5 page show then hide all
				break;
			}
		}
		if($last > $pageno){ //last page or next pages
			$next = $pageno+1;
			$pagination .="<a href='pagination.php?pageno=".$next."' style='color:333;'> Next </a>";

		}
	}

	//LIMIT 0,10
		//LIMIT 10,10

	$limit = "LIMIT".($pageno -1)* $numberOfRecordsPerPage.",".$numberOfRecordsPerPage; // 12 limit for page number

	//return $totalPage; //1 show pages
	//return $pagination; //2
	return ["pagination"=>$pagination,"limit"=>$limit];//13
}
//
//echo pagination($con,"XXX",1,10 ); //1 for example table "xxx" pno 1 and number of per page 10
if(isset($_GET["pageno"])){ //11
	$pageno = $_GET["pageno"];
	//echo pagination($con,"XXX",$pageno,10 );//11
	//echo"<pre>"; //14
	//print_r(pagination($con,"XXX",$pageno,10 ));//13
	$table = "paragraph"; //16

	pagination($con,"XXX",$pageno,10 );//15

	$sql ="SELECT * FROM".$table." ".$array["limit"]; //18

	$query = $con->query($sql); 

	while($row = mysqli_fetch_assoc($query)){
		echo"<div style='margin:0 auto; font-size:20px'><b>".$row["pid"]. "</b> ". $row["p_description"]. "</div>";
	}

	echo "<dib style='font-size:22px;'>".$array["pagination"]."</div>"; //18
}
//echo pagination($con,"XXX",3,10 ); //3

//http://localhost/inv_project/public_html/includes/pagination.php... result show echo "10000"

?>