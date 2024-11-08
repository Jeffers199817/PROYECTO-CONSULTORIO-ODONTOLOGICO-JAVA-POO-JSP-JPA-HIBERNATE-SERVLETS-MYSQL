<%@page import="logica.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="components/header.jsp"%>
<%@include file ="components/bodyprimeraparte.jsp"%>

<h1>Editar Usuarios</h1>

<form class="user" action="SvEditUsuarios" method="POST">
    <div class="form-group col">
        <% 
            Usuario usu = (Usuario) request.getSession().getAttribute("usu");
        %>
        <div class="col-sm-6 mb-3">
            <input type="text" class="form-control form-control-user" id="nombreusu" name="nombreusu"
                   value="<%= usu.getNombre_usuario() %>">
        </div>
        <div class="col-sm-6 mb-3">
            <input type="password" class="form-control form-control-user" id="contrasenia" name="contrasenia"
                   value="<%= usu.getContrasenia() %>">
        </div>
        <div class="col-sm-6 mb-3">
            <input type="text" class="form-control form-control-user" id="rol" name="rol"
                   value="<%= usu.getRol() %>">
        </div>
        <!-- Campo oculto para el ID del usuario -->
        <input type="hidden" name="id" value="<%= usu.getId_usuario() %>">
    </div>
    <button class="btn btn-primary btn-user btn-block" type="submit">
        Editar Usuario
    </button>
</form>

<%@include file="components/bodyfinal.jsp"%>
