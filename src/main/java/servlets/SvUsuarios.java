/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import logica.Controladora;
import logica.Usuario;

@WebServlet(name = "SvUsuarios", urlPatterns = {"/SvUsuarios"})
public class SvUsuarios extends HttpServlet {
    
    

    Controladora control = new Controladora();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        List<Usuario> listaUsuario = control.listarUsuarios();
        
 
        
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        
        String nombre_usuario = request.getParameter("nombreusu");
        String contrasenia = request.getParameter("contrasenia");
        String rol = request.getParameter("rol");
        
      
        
        System.out.println("Nombre usuario: " + nombre_usuario);
        control.crearUsuario(nombre_usuario, contrasenia, rol);
        
        
        response.sendRedirect("index.jsp");
        
        
        

    }

   
    
    
    
    
    
    
    
    
    
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
