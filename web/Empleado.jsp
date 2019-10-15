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
        <div class="d-flex">
            <div class="card col-sm-4" >
                <div class="card-body">
                    <form>
                        <div class="form-group">
                            <label>Documento</label>
                            <input type="text" name="TDoc" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Nombres</label>
                            <input type="text" name="TNom" class="form-control">
                        </div>

                        <div class="form-group">
                            <label>Apellidos</label>
                            <input type="text" name="TApe" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Contraseña</label>
                            <input type="text" name="TCon" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Telefono</label>
                            <input type="text" name="TTel" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Usuario</label>
                            <input type="text" name="TUsua" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Estado</label>
                            <input type="text" name="TEst" class="form-control">
                        </div>
                        <input type="submit" name="accion" value="Agregar" class="btn btn-info btn-block"
                    </form>
                </div>
            </div>
            <div class="col-sm-6">
                <table class='table'>
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Documento</th>
                            <th>Nombres</th>
                            <th>Apellidos</th>
                            <th>Telefono</th>
                            <th>Usuario</th>
                            <th>Estado</th>
                            <th>Acciones</th>
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
                                    <a>Editar</a>
                                    <a>Eliminar</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    </body>
</html>
