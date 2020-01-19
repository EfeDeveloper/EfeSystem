<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/stylesheet.css">
    <script src="https://kit.fontawesome.com/75ec63b26c.js" crossorigin="anonymous"></script>
    <title>EfeSystem Login</title>
</head>

<body>
    <img class="BG" src="imag/Background.png">
    <div class="container">
        <div class="imag">
            <img src="imag/Desing.svg" alt="">
        </div>
        <div class="login-cont">
            <form action="Validar" method="POST">
                <img class="Login" src="imag/Logo.png" alt="">
                <h2>WELCOME</h2>
                <div class="input_div one">
                    <div class="in">
                        <in class="fas fa-user"></in>
                    </div>
                    <div>
                        <h5>Username</h5>
                        <input class="input" name="TUsu" type="text">
                    </div>
                </div>
                <div class="input_div two">
                    <div class="in">
                        <in class="fas fa-lock"></in>
                    </div>
                    <div>
                        <h5>Password</h5>
                        <input class="input" name="TPass" type="password">
                    </div>
                </div>
                <a href="#">Forgot Password?</a>
                <input type="submit" class="button" name="enviar" value="Login">
            </form>
        </div>
    </div>
    <script type="text/javascript" src="js/main.js"></script>
</body>

</html>