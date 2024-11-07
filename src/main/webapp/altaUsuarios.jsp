<%-- 
    Document   : altas
    Created on : Nov 7, 2024, 8:51:46 AM
    Author     : JEFFERSON ALQUINGA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="components/header.jsp"%>
<%@include file="components/bodyprimeraparte.jsp" %>


<h1 >Alta Usuarios</h1>

  <form class="user">
                                <div class="form-group col">
                                    <div class="col-sm-6 mb-3">
                                        <input type="text" class="form-control form-control-user" id="nombreusu"
                                            placeholder="Nombre Usuario">
                                    </div>
                                    <div class="col-sm-6 mb-3">
                                        <input type="password" class="form-control form-control-user" id="contrasenia"
                                            placeholder="Contraseña">
                                    </div>
                              
                                </div>
                            
                          
                           
                                 <a href="#" class="btn btn-primary btn-user btn-block">
                                    Crear Odontólogo
                                </a>
                         
                            </form>
<%@include file="components/bodyfinal.jsp" %>