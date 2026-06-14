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
    $sql = "SELECT * FROM `uzytkownicy`;";
    $result = $con->query($sql);

    if(!empty($_POST['name']) && !empty($_POST['password'])) {
        $_SESSION['isLogged'] = false;
        while($row = $result->fetch_assoc()) {
            if($row['login'] == $_POST['name'] && $row['haslo'] == $_POST['password']) {
                $_SESSION['isLogged'] = true;
                $_SESSION['id'] = $row['id'];
                $_SESSION['login'] = $row['login'];
                $_SESSION['email'] = $row['email'];
                $_SESSION['haslo'] = $row['haslo'];
                $_SESSION['imie'] = $row['imie'];
                $_SESSION['nazwisko'] = $row['nazwisko'];
                $_SESSION['telefon'] = $row['telefon'];
                header("Location: main.php");
            }
        }
    }

?>
</body>
</html>