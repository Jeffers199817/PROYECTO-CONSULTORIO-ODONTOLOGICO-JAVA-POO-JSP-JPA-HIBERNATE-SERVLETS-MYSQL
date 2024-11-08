<%-- 
    Document   : verUsuarios
    Created on : Nov 7, 2024, 10:07:33 PM
    Author     : JEFFERSON ALQUINGA
--%>

<%@page import="logica.Usuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

    

<%@include file="components/header.jsp"%>
<%@include file ="components/bodyprimeraparte.jsp"%>



      <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Ver Usuarios</h1>
                    <p class="mb-4">Lista de Usuarios.</p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Lista de Usuarios</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>Id Usuario</th>
                                            <th>Nombre</th>
                                            <th>Rol</th>
                                            <th>Acción</th>
                                         
                                        </tr>
                                    </thead>

                                    <tfoot>
                                        <tr>
                                            <th>Id Usuario</th>
                                            <th>Nombre</th>
                                            <th>Rol</th>    
                                            <th>Acción</th>
                                        </tr>
                                    </tfoot>
                                    
                                                                        
                                    <%   List<Usuario> listaUsuario =(List)request.getSession().getAttribute("listaUsuario");
                                    
                                     
                                    
                                        
                                    %>
                                    <tbody>
                                        
                                        <%    for(Usuario usu: listaUsuario){ %>
                                        
                                        <tr>
                                            <td id="id_usu=usu.getId_usuario()%>"><%=usu.getId_usuario()%></td>
                                            <td><%=usu.getNombre_usuario()%></td>
                                            <td><%=usu.getRol()%></td>
                                            
                                            <!-- Acción para eleiminar -->
                                            <td style="display:grid; grid-template-columns: 1fr 1fr; width:auto " width="100%">
                                                <form name="eliminar" action="SvElimUsuarios" method="POST">
                                                    <button type="submit" class ="btn btn-primary btn-user btn-block "; style="background-color:red; margin-right: 5px">
                                                        <i class ="fas fa-trash-alt"></i>
                                                        Eliminar
                                                    </button>
                                                    <input type="hidden" name="id" value="<%=usu.getId_usuario()%>">
                                                </form>
                                                  <form name="editar" action="SvEditUsuarios" method="POST">
                                                    <button type="submit" class="btn btn-primary btn-user btn-block " ; style= "background-color:blue; margin-left: 5px">
                                                        <i class ="fas fa-pencil-alt"></i>
                                                        Editar
                                                    </button>
                                                    <input type="hidden" name="id" value="<%=usu.getId_usuario()%>">
                                                </form>
                                            </td>
                                                
                                                
                                                
                                        </tr>
                                        <% } %>
                                        
                                    </tbody>
                                    
                                    
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->


<%@include file="components/bodyfinal.jsp"%>

