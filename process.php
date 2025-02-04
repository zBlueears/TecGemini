<?php
$servername="localhost";
$username="root";
$password="";
$database="mydb";
$conn = mysqli_connect($servername, $username, $password, $database);

//create connection
if($conn->connect_error)
{
    die("Connection Failed: ".$conn->connect_error);
}

//get form data
$Owner= $_POST['Owner'];
$Address=$_POST['Address'];
$City=$_POST['City'];
$Landmark=$_POST['Landmark'];
$Pincode=$_POST['Pincode'];

//Insert data into te databse
$stmt= "INSERT INTO property(Owner,Address,City,Landmark,Pincode) VALUES ('$_POST[Owner]','$_POST[Address]','$_POST[City]','$_POST[Landmark]','$_POST[Pincode]')";
$result=mysqli_query($conn,$stmt);
//$stmt->bind_param("sssss",$Owner,$Address,$City,$Landmark,$Pincode);

if($result===TRUE)
{
    echo "Data inserted successfully!  <br> <a href='display.php'> View Data</a>";
}
else 
{
    echo "Error :". $conn->error;
}

//close connection
$conn->close();
?>