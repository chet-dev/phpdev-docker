<?php
    echo "Connect to database... ";

    $conn = new mysqli('mysql', 'root', '', 'mydb');

    // Oh no! A connect_errno exists so the connection attempt failed!
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    echo "successful!<br />";



    $sql = "SELECT id, name FROM user";
    $result = $conn->query($sql);
    $count = 0;

    if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
            echo "id: " . $row["id"]. " - Name: " . $row["name"]. "<br>";
            $count++;
        }
    } else {
        echo "0 results";
    }
    echo "total:".$count;
    $conn->close();

?>