<?php
    echo "Connect to database using PDO... ";

  
    $conn = new PDO('mysql:dbname=mysql;host=mysql;port=3306','root','');
  

    echo "successful!";

?>