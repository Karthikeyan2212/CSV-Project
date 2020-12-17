<html>
<head>
    <style type="text/css">
        body{
            text-align: center;
            background-color:pink;
        }
    </style>
</head>
<body>
    <p>Database Records</p>
    <div style="text-align: center;">
<?php
$con = mysqli_connect("localhost", "root", "", "csv");
 
// Check connection
if($con === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 
// Attempt select query execution
if(isset($_POST['view'])){
$sql1 = "SELECT * FROM data";
if($result = mysqli_query($con, $sql1)){
    if(mysqli_num_rows($result) > 0){
        echo "<table border=1>";
            echo "<tr>";
                echo "<th>id</th>";
                echo "<th>Name</th>";
                echo "<th>Password</th>";
            echo "</tr>";
        while($row = mysqli_fetch_array($result)){
            echo "<tr>";
                echo "<td>" . $row['id'] . "</td>";
                echo "<td>" . $row['Name'] . "</td>";
                echo "<td>" . $row['Password'] . "</td>";
            echo "</tr>";
        }
        echo "</table>";
        // Free result set
        mysqli_free_result($result);
    } else{
        echo "No records found.";
    }
} else{
    echo "ERROR: Could not able to execute " . mysqli_error($db);
}
} 
// Close connection
mysqli_close($con);
?>
</div>
</body>
</html>