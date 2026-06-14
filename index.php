<?php
    session_start();
    $con = mysqli_connect("localhost", "root", "", "rozklad_jazdy");
    if ($_SESSION['isLogged'] == false) {

    }else{
        header('Location: main.php');
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
      <button onclick="goToLogin()" id="login-button" value="1">Zaloguj</button>
      <button onclick="goToRegister()" id="signup-button" value="2">Zarejestruj</button>
  </header>

  <section>
    <p>Z NAMI NIGDZIE NIE DOJEDZIESZ</p>
  </section>

  <main>
    <h2>ZALOGUJ SIE LUB ZAREJESTRUJ ABY ZOBACZYC WIECEJ INFORMACJI O PRZEJAZDACH</h2>
  </main>

  <footer>
    @mixj
  </footer>

    <script src="script.js"></script>
</body>
</html>

<?php
    mysqli_close($con);
?>