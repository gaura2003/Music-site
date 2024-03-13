<?php
// Database connection
$servername = "localhost";
$username = "root";
$password = "";
$database = "music_database";

// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Retrieve search query
$search = $_GET['search'];

// Prepare SQL query to search for music
$sql_select = "SELECT * FROM music WHERE title LIKE '%$search%' OR artist LIKE '%$search%' OR album LIKE '%$search%' OR genre LIKE '%$search%'";

$result = $conn->query($sql_select);

if ($result->num_rows > 0) {
    // Output data of each row
    while ($row = $result->fetch_assoc()) {
        echo '<div class="music-card" onclick="openMusicPlayerDrawer(\'' . $row["title"] . '\', \'' . $row["artist"] . '\', \'' . $row["file_path"] . '\', \'' . $row["image_path"] . '\')">';
        echo '<img src="' . $row["image_path"] . '" alt="Music Image">';
        echo '<p>' . $row["title"] . '</p>';
        echo '<p>' . $row["artist"] . '</p>';
        echo '<p>' . $row["album"] . '</p>';
        echo '</div>';
    }
} else {
    echo "<p>No music records found</p>";
}

$conn->close();
?>
