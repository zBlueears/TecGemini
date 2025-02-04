<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "mydb";

//create connection

$conn= new mysqli($servername,$username,$password,$database);

//check connection
if($conn->connect_error){
    die("Connection failed  ".$conn->connect_error);
}

$sql= "SELECT * FROM property";
$result= $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Submitted Data</title>
    </head>
    <body>
        <h2>Submitted Data</h2>
        <table border="1">
            <tr>
               <!-- <th>ID</th> -->
                <th>Owner</th>
                <th>Address</th>
                <th>City</th>
                <th>Landmark</th>
                <th>Pincode</th>
            </tr>

<?php
if($result->num_rows>0)
{
    while($row=$result->fetch_assoc())
    {
        echo 
        "<tr>
            <td>{$row['Owner']}</td>
            <td>{$row['Address']}</td>
            <td>{$row['City']}</td>
            <td>{$row['Landmark']}</td>
            <td>{$row['Pincode']}</td>
        </tr>";
    }
}
else{
    echo "<tr><td colspan='4'>no data found</td></tr>";
}
?>
 </table>
 <br>
 <a href="property.html">Go back</a>
 </body>
</html>
<?php
$conn->close();
?>