<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <title>Empleado</title>
    </head>
    <body>
        <div class="row" class="container mt-4 col-lg-4" class="mx-auto">
            <div class="card card-block"  style="width: 46rem;">
                <div class="card-body">
                    <form  action="Controlador?menu=Empleado" method="POST" class="needs-validation" novalidate>
                        <div class="form-group row">
                            <div class="col-md-8 mb-3">
                                <label for="validationCustom01">Documento</label>
                                <input type="text" class="form-control" id="validationCustom01" name="TDoc" placeholder="Numero de documento" value="${empleado.getDocumento()}" required>
                                <div class="valid-feedback">
                                    Correcto!
                                </div>
                                <div class="invalid-feedback">
                                    Por favor diligencie el campo!
                                </div>
                            </div>
                            <div class="col-md-8 mb-3">
                                <label for="validationCustom01">Nombres</label>
                                <input type="text" class="form-control" id="validationCustom01" name="TNom" placeholder="Ingrese su Nombre" value="${empleado.getNombres()}" required>
                                <div class="valid-feedback">
                                    Correcto!
                                </div>
                                <div class="invalid-feedback">
                                    Por favor diligencie el campo!
                                </div>
                            </div>
                            <div class="col-md-8 mb-3">
                                <label for="validationCustom01">Apellidos</label>
                                <input type="text" class="form-control" id="validationCustom01" name="TApe" placeholder="Ingrese sus Apellidos" value="${empleado.getApellido()}" required>
                                <div class="valid-feedback">
                                    Correcto!
                                </div>
                                <div class="invalid-feedback">
                                    Por favor diligencie el campo!
                                </div>
                            </div>
                            <div class="col-md-8 mb-3">
                                <label for="validationCustom01">Contraseña</label>
                                <input type="password" class="form-control" id="validationCustom01" name="TCon" placeholder="Ingrese su Contraseña" value="${empleado.getContraseña()}" required>
                                <div class="valid-feedback">
                                    Correcto!
                                </div>
                                <div class="invalid-feedback">
                                    Por favor diligencie elos campo!
                                </div>
                            </div>                                        
                            <div class="col-md-8 mb-3">
                                <label for="validationCustom01">Telefono</label>
                                <input type="text" class="form-control" id="validationCustom01" name="TTel" placeholder="Ingrese su N° Telefonico" value="${empleado.getTelefono()}" required>
                                <div class="valid-feedback">
                                    Correcto!
                                </div>
                                <div class="invalid-feedback">
                                    Por favor diligencie el campo!
                                </div>
                            </div>
                            <div class="col-md-8 mb-3">
                                <label for="validationCustom01">Usuario</label>
                                <input type="text" class="form-control" id="validationCustom01" name="TUsua" placeholder="Ingrese un nombre de Usuario" value="${empleado.getUsuario()}" required>
                                <div class="valid-feedback">
                                    Correcto!
                                </div>
                                <div class="invalid-feedback">
                                    Por favor diligencie el campo!
                                </div>
                            </div>
                            <div class="col-md-8 mb-3">
                                <label for="validationCustom01">Estado</label>
                                <input type="text" class="form-control" id="validationCustom01" name="TEst" placeholder="Ingrese un Estado" value="${empleado.getEstado()}" required>
                                <div class="valid-feedback">
                                    Correcto!
                                </div>
                                <div class="invalid-feedback">
                                    Por favor diligencie el campo!
                                </div>
                            </div> 
                        </div>
                        <input type="submit" name="ejecutar" value="Add" class="btn btn-info btn-sm" style="width: 14rem;">
                        <input type="submit" name="ejecutar" value="Update" class="btn btn-success btn-sm" style="width: 14rem;">

                        <script>
                            // Uso de JavaScript para validad campos vacios o llenos
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
                    </form>
                </div>
            </div>
            <div class="card card-block">
                <div class="card-body">
                    <div class="table-responsive">
                        <table class='table'>
                            <thead>
                                <tr class='bg-primary'>
                                    <th><strong style="color:#FFFFFF">Id</strong></th>
                                    <th><strong style="color:#FFFFFF">Documento</strong></th>
                                    <th><strong style="color:#FFFFFF">Nombres</strong></th>
                                    <th><strong style="color:#FFFFFF">Apellidos</strong></th>
                                    <th><strong style="color:#FFFFFF">Telefono</strong></th>
                                    <th><strong style="color:#FFFFFF">Usuario</strong></th>
                                    <th><strong style="color:#FFFFFF">Estado</strong></th>
                                    <th><strong style="color:#FFFFFF">Acciones</strong></th>
                                </tr>
                            </thead>
                            <tbody>
                                <%--
                                Nombre del atributo con el cual se envia desde el controlador empleados
                                para listar se usa la variable 'em'
                                --%>
                                <c:forEach var="em" items="${empl}">
                                    <tr>
                                        <td>${em.getId()}</td>
                                        <td>${em.getDocumento()}</td>
                                        <td>${em.getNombres()}</td>
                                        <td>${em.getApellido()}</td>
                                        <td>${em.getTelefono()}</td>
                                        <td>${em.getUsuario()}</td>
                                        <td>${em.getEstado()}</td>
                                        <td>
                                            <div>
                                                <a href="Controlador?menu=Empleado&ejecutar=Edit&id=${em.getId()}" class="btn btn-warning btn-xl">Edit</a>
                                                <a href="Controlador?menu=Empleado&ejecutar=Delete&id=${em.getId()}" class="btn btn-danger btn-xl">Delete</a>
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    </body>
</html>
