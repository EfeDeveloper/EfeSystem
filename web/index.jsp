<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>EfeSystem Login</title>
    </head>
    <body>
        <div class="container mt-4 col-lg-4">
            <div class="card col-sm-20">
                <div class="card-body">
                    <form class="form-sign" action="Validar" method="POST">
                        <div class="form-group text-center">
                            <h3 class="card-title"><strong>Login</strong></h3>
                            <img src="media/Logo.png"/>
                        </div>
                        <div class="form-group text-center">
                            <label>Bienvenidos al Sistema</label>
                        </div>
                        <div class="form-group">
                            <label>Usuario</label>
                            <input type="text" name="TUsu" placeholder="Ingrese su usuario" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Contraseña</label>
                            <input type="password" name="TPass" placeholder="Ingrese su contraseña" class="form-control" data-toggle="password">
                        </div>
                        <input type="submit" name="enviar" value="Ingresar" class="btn btn-primary btn-block">
                    </form>
                </div>
            </div>
        </div>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://unpkg.com/bootstrap-show-password@1.2.1/dist/bootstrap-show-password.min.js"></script>
    </body>
</html>
