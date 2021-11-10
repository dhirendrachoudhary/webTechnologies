
<!DOCTYPE html>
<html lang="en">
<?php include 'partial/head.php';?>
<body>
   <?php include 'partial/nav.php';?>

    <div class="container">
        <div class="formdiv">
            <div class="info">
            </div>
            <form action="" method="post">

                <div class="form-group row">
                <div class="col-sm-7">
                <table>
                <center><input type="text" placeholder="Search" name="search"></center>
                <center><input type="submit" name="submit" class="btn btn-success" value="SEARCH" /></center>
                </div>
            </div>
            </form>
        </div>  
    </div>
</html>
<?php


if (isset($_POST['submit'])) {
    $searchValue = $_POST['search'];
    $con = new mysqli("localhost", "root", "", "Christ");
    if ($con->connect_error) {
        echo "connection Failed: " . $con->connect_error;
    } else {
        $sql = "SELECT * FROM students WHERE first_name or email LIKE '%$searchValue%'";

        $result = $con->query($sql);
        while ($row = $result->fetch_assoc()) {
            echo "<center>" . "First name: " . $row['first_name'] . "<br>";
            echo "Last Name: " .  $row['last_name'] . "<br>";
            echo "Email: " .  $row['email'] . "<br>";
            echo "Course: " .  $row['course'] . "<br>";
        }
        mysqli_close($con);
    }   
}
?>