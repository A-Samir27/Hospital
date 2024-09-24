<?php
// Check if the form was submitted
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Hardcoded credentials for admin
    $admin_username = "admin";
    $admin_password = "samir@123";

    // Check if credentials match
    if ($username == $admin_username && $password == $admin_password) {
        // Connect to the database
        $conn = new mysqli("localhost", "root", "", "hospital");

        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }

        // Fetch appointment details from the database
        $sql = "SELECT * FROM appointments";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            echo "<h1>Appointment Details</h1>";
            echo "<div style='overflow-x:auto;'>
                    <table style='width: 100%; border-collapse: collapse; text-align: center;' border='1'>
                        <tr>
                            <th>Name</th>
                            <th>Age</th>
                            <th>Contact</th>
                            <th>Gender</th>
                            <th>Doctor</th>
                            <th>Date</th>
                            <th>Time</th>
                        </tr>";
            
            // Output data for each row
            while ($row = $result->fetch_assoc()) {
                echo "<tr>
                        <td>" . $row['name'] . "</td>
                        <td>" . $row['age'] . "</td>
                        <td>" . $row['contact'] . "</td>
                        <td>" . $row['gender'] . "</td>
                        <td>" . $row['doctor'] . "</td>
                        <td>" . $row['date'] . "</td>
                        <td>" . $row['time'] . "</td>
                    </tr>";
            }
            echo "</table>
                  </div>";
        } else {
            echo "No appointments found.";
        }
        $conn->close();
    } else {
        echo "Invalid login credentials.";
    }
} else {
    echo "Please login first.";
}
?>
