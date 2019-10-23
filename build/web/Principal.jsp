<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>JSP Page</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light" style="background-color:#00BFFF">
            <a class="navbar-brand" style="margin-left: 5px; border: none" href="#"><strong style="color:#FFFFFF">EfeSystem</strong></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a style="margin-left: 5px; border: none" class="btn btn-outline-light" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 5px; border: none" class="btn btn-outline-light" href="Controlador?menu=Productos" target="Frame">Productos</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 5px; border: none" class="btn btn-outline-light" href="Controlador?menu=Empleado&ejecutar=List" target="Frame">Empleado</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 5px; border: none" class="btn btn-outline-light" href="Controlador?menu=Cliente" target="Frame">Clientes</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 5px; border: none" class="btn btn-outline-light" href="Controlador?menu=NuevaVenta" target="Frame">Nueva Venta</a>
                    </li>

                </ul>
                <div class="dropdown ml-auto">
                    <button class="dropdown-toggle btn btn-outline-light" style="margin-right: 5px; border: none" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <%--
                        Nos trae el atributo nombre y lo ubica                        en la opción 
                        usuario permitiendo quien esta dentro de la sesión
                        --%>
                        ${usuario.getNombres()}
                    </button>
                    <div class="dropdown-menu dropdown-menu-right text-center" aria-labelledby="dropdownMenuButton">
                        <a class="dropdown-item" href="#">
                            <img src="media/usuario.png" alt="70" width="70"/>
                        </a>
                        <a class="dropdown-item" href="#">${usuario.getUsuario()}</a>
                        <a class="dropdown-item" href="#">usuario@gmail</a>
                        <div class="dropdown-divider"> </div>
                        <%--
                        tiene un atributo accion al controlador mediante el servlet Validar
                        --%>

                        <form action="Validar" method="POST">
                            <button name="enviar" value="Salir" class="dropdown-item" href="#" >Salir</button>
                        </form>
                    </div>
                </div>
            </div>
        </nav>
        <div class="m-12" style="height: 800px">
            <iframe name="Frame" style="height: 100%; width: 100%;border: none" class="embed-responsive embed-responsive-16by9"></iframe>
        </div> 
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    </body>
</html>
