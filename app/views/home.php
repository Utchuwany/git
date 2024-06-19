<?php
    session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Strona domowa</title>
</head>
<body>
    <h3>Witaj <?php echo $_SESSION['email'] ?> na tronie domowej</h3>
    Uprawnienia: <?php echo $_SESSION['role'] ?>
    Twoje ID: <?php echo $_SESSION['id'] ?>
    <br>
    <a href="../../app/controllers/auth/logout.php">Wyloguj się</a><br>
    <br>Zawartość strony:<br>

    <?php
        require_once "./layouts/$_SESSION[role]/content.php";
    ?>
</body>
</html>