<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>EfeSystem Login</title>
    </head>
    <body>
        <div class="container mt-4 col-lg-4" class="mx-auto" style="width: 500px;">
            <div class="card card-block">
                <div class="card-body">
                    <form class="needs-validation" novalidate class="form-sign" action="Validar" method="POST">
                        <div class="form-group row">
                            <img src="media/Logo.png" class="rounded mx-auto d-block">
                        </div>
                        <div class="form-group text-center">
                            <label><strong>Bienvenidos al Sistema</strong></label>
                        </div>
                        <div class="col-md-12 mb-3">
                            <label for="validationCustomUsername">Usuario</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="inputGroupPrepend">@</span>
                                </div>
                                <input type="text" name="TUsu" class="form-control" id="validationCustomUsername" placeholder="Ingrese su usuario" aria-describedby="inputGroupPrepend" required>
                                <div class="invalid-feedback">
                                    Por favor ingrese un usuario
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 mb-3">
                            <label for="validationCustomUsername">Contraseña</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="inputGroupPrepend">&#x1F510</span>
                                </div>
                                <input type="text" name="TPass" class="form-control" id="validationCustomUsername" placeholder="Ingrese su contraseña" aria-describedby="inputGroupPrepend" required>
                                <div class="invalid-feedback">
                                    Por favor ingrese una contraseña
                                </div>
                            </div>
                        </div>
                        <input type="submit" name="enviar" value="Ingresar" class="btn btn-primary btn-block">
                    </form>
                </div>
                <script>
                    // Example starter JavaScript for disabling form submissions if there are invalid fields
                    (function () {
                        'use strict';
                        window.addEventListener('load', function () {
                            // Fetch all the forms we want to apply custom Bootstrap validation styles to
                            var forms = document.getElementsByClassName('needs-validation');
                            // Loop over them and prevent submission
                            var validation = Array.prototype.filter.call(forms, function (form) {
                                form.addEventListener('submit', function (event) {
                                    if (form.checkValidity() === false) {
                                        event.preventDefault();
                                        event.stopPropagation();
                                    }
                                    form.classList.add('was-validated');
                                }, false);
                            });
                        }, false);
                    })();
                </script>
            </div>
        </div>
    </div>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script  src="/path/to/bootstrap-show-password.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
