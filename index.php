<html>

<head>
<title>Exemplo PHP</title>
</head>
<body>

<?php
ini_set("display_errors", 1);
header('Content-Type: text/html; charset=iso-8859-1');



echo 'Versao Atual do PHP: ' . phpversion() . '<br>';

// conect database
$servername = "localhost";
$username = "username";
$password = "password";
$dbname = "database_name";

// Create connection
$conn = new mysqli($servername,
    $username, $password, $dbname);
 
// Check connection
if ($conn->connect_error) {
    die("Connection failed: "
        . $conn->connect_error);
}
 
$sqlquery = "INSERT INTO table VALUES
    ('John', 'Doe', 'john@example.com')"
 
if ($conn->query($sql) === TRUE) {
    echo "record inserted successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
 
  // collect value of input field
  $data = $_REQUEST['val1'];

  if (empty($data)) {
      echo "data is empty";
  } else {
      echo $data;
  }
}
?>

// Closing the connection.
$conn->close();
?>
</body>
</html>
