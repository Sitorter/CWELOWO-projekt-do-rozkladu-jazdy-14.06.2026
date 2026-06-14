<?php
$con = mysqli_connect("localhost", "root", "", "rozklad_jazdy");
session_start();
if (isset($_SESSION['isLogged'])) {
    if ($_SESSION['isLogged'] == true) {
        header('Location: main.php');
    }

}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<form action="login.php" method="post">
    <h2>LOGIN</h2>
    <input placeholder="Nazwa uzytkownika..." id="name-button" name="name" type="text">
    <input placeholder="Haslo..." id="password-button" name="password" type="password">

    <button type="submit">Zaloguj</button>
</form>

<?php


?>
</body>
</html>