<?php

require 'function.php';

if (isset($_POST["login"])) {
    $username = $_POST["username"];
    $password = $_POST["password"];

    $hasil = mysqli_query($conn, "SELECT * FROM tb_admin WHERE username = '$username'" );

    if (mysqli_num_rows($hasil)===1) {
        $pass=mysqli_fetch_assoc($hasil);
        if ($password === $pass["password"]) {
            header("Location:edit.php");
            exit;
        }
    }
    $eror = true;
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
    <div class="container">
        <div class="form-box">
            <div class="form-value">
                <form action="" method="post">
                    <h2>Login</h2>
                    <div class="inputbox">
                        <label for="">Username</label>
                        <input type="name" name="username" id="username" required>
                    </div>
                    <div class="inputbox">
                        <label for="">Password</label>
                        <input type="password" name="password" id="password" required>
                    </div>
                    <button type="submit" name="login">Log in</button>
                </form>
            </div>
        </div>
    </div>
</body>

</html>