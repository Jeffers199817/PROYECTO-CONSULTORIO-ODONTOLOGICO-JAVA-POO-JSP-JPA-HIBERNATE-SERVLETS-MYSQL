<%-- 
    Document   : verUsuarios
    Created on : Nov 7, 2024, 10:07:33 PM
    Author     : JEFFERSON ALQUINGA
--%>

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
                                         
                                        </tr>
                                    </thead>
                                    
                                    <%    %>
                                    <tfoot>
                                        <tr>
                                            <th>Id Usuario</th>
                                            <th>Nombre</th>
                                            <th>Rol</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>Jefferson</td>
                                            <td>Admin</td>
                                           
                                        </tr>
                                        
                                        
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->


<%@include file="components/bodyfinal.jsp"%>

