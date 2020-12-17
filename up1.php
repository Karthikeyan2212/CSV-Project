<?php

$db=mysqli_connect("localhost","root","","csv");   //connect to database

if(isset($_POST['submitfile']))
{
	if($_FILES['file']['name'])
	{
		$filename = explode(".", $_FILES['file']['name']);
		if($filename[1]=='csv')
		{
			if ($_FILES['file']['size'] > 2000000)  //to see if the size is more than 2mb
			{
				$size = $_FILES['file']['size'];
				$calc = ($size/1000);
				echo 'Sorry, the file '.$_FILES['file']['name'].' is too large! ('.$calc.'KB)<br><br>';
				
			}
		
			$handle = fopen($_FILES['file']['tmp_name'], "r");
			$first_name=$middle_name=$last_name='';
			while($data = fgetcsv($handle))
			{
				$item1 = mysqli_real_escape_string($db, $data[0]);
				$item2 = mysqli_real_escape_string($db, $data[1]);
				$item3 = mysqli_real_escape_string($db, $data[2]);
				$ptpass = $item3;  
  				$hash = password_hash($ptpass,PASSWORD_DEFAULT);
				$sql = "insert into data(id, Name, Password) values('$item1','$item2','$hash')";
				// <br>$sql";
				// to find the duplicate entry
				mysqli_query($db, $sql) or die(mysqli_error($db)."...at line- ". __LINE__);
			}
			fclose($handle);
			echo "IMPORT DONE!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
		}
		else
		{
			echo 'Kindly upload csv file only!';
		}
	}
}
mysqli_close($db);
?>

<!DOCTYPE html>
<html>
<head>
  <title>CSV</title>
<style type="text/css">
	body{
		background-image: url('bf3.jpg');
	}
	#h1{
		color: blue;
	}
	#login{
			margin-top: 6%;
			margin-left: 10%;
			margin-right: 12%;
			border-radius: 20px;
			padding-right: 1%;
			background-color: white;
			padding-bottom: 2%;
			box-shadow: 0 14px 18px 0 rgba(0,0,0,0.2);
	}
	img{
		float: left;
		border-radius: 10px;
	}

        .input-icons i {
        	float: top;
        	padding-left:5%;
        	padding-top: 1%;
        	margin-top: 1%;
        	color: #0856cc;  
        } 
          
        .input-icons { 
        	color: blue;
        } 
          
        .icon { 
            color: #0856cc;
            padding-top: 3.2%;
            padding-left:12%;  
            min-width: 20%;  
        } 
          
        .input-field { 
            width: 20%; 
            border-radius: 4px; 
            margin-top: 2%;
            padding-top: 4%;
        } 
        h1 { 
            color: #08c91f;

        } 
        .name{
        	width: 310px;
        	height: 6%;
  			border: none;
  			border-bottom: 2px solid #0856cc;
        	padding-top: 1%;
        }
        .button2 {
  			background-color: white; 
  			border-radius: 25px;
  			color: #0856cc; 
  			font-size: 140%;
		 	text-shadow: 5%;
		  	border: 2px solid lightgreen;
 			padding-right: 12%;
 			padding-left: 12%;
 			padding-top: 1%;
 			padding-bottom: 1%;
 			}
.input-container {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  width: 80%;
  padding-left: 5%;
  margin-bottom: 2%;}
.button2:hover {
  background-color: #07b31c; /*#008CBA*/
  color: white;
}
#name1{
}
</style>
</head>
<body>
<div>
	<marque><h1 style="color: pink;text-align: center;">Welcome to our Website!!!!</h1></marque>
</div>

<div>
<!-- <form method="POST" enctype="multipart/form-data">
<div style="text-align: center;">
<p> Upload CSV file:<input type="file" name="file"></p>
<p style="color: blue;">Import data:<span style="padding-right: 15%;"> <input type="submit" name="submitfile" value="Import"></span></p>
 --></div>
</form>		 
</div>
<br>
	<div id="login" style="text-align: center;">
		<div><img src="img.png" width="35%" height="50%"></div>
		<h1 style="padding-top: 2%;font-family: bigmacca;">CSV</h1>
		<div style="">
			<form style="padding-left: 30%;padding-bottom: 4%;" method="POST" enctype="multipart/form-data"> 
            <div class="input-container"> 
                <p style="padding-right: 2%;margin-top: 2%;" id="name1"><p> Upload CSV file:<input type="file" name="file"></p>
</p> 
            </div> 
            <div class="input-container"> 
                <p style="padding-right: 2%;margin-top: 2%;" id="name1"><p style="color: blue;">Import data:<span style="padding-left: 60px;"> <input type="submit" name="submitfile" value="Import"></span></p>
</p>
            </div>
        </form> 
	</div>

  
<div style="text-align: center;">
	<form action="view.php" method="POST">
	<input type="submit" name="view" value="View Records">
	</form>
	</div>
</body>
</html>