<?php
    session_start();

    if (!empty($_POST['logout'])){
        session_destroy();
        header("Location: index.php");
    }
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Rozklad jazdy</title>
    <link rel="stylesheet" href="styl3s.css">
</head>
<body>
<header>
    <h1>CWELOWO</h1>
    <nav>
        <form method='post' action='main.php'>
            <button id="signup-button" name='logout' value='logout' >Wyloguj</button>
        </form>
</header>

<section>
    <p>Z NAMI NIGDZIE NIE DOJEDZIESZ</p>
</section>

<main>
    <?php
        echo "<div>";
        echo "<h2>{$_SESSION['id']}</h2><br>";
        echo "<h2>{$_SESSION['imie']}</h2><br>";
        echo "<h2>{$_SESSION['nazwisko']}</h2><br>";
        echo "<h2>{$_SESSION['email']}</h2><br>";
        echo "<h2>{$_SESSION['telefon']}</h2><br>";
        echo "</div>";
    ?>
</main>

<footer>
    @mixj
</footer>

<script src="script.js"></script>
</body>
</html>
