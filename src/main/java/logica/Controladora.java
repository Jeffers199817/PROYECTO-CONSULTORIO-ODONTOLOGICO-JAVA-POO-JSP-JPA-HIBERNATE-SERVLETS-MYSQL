/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logica;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import logica.persistencia.ControladoraPersistencia;
import logica.persistencia.exceptions.NonexistentEntityException;

/**
 *
 * @author JEFFERSON ALQUINGA
 */
public class Controladora {
    
    ControladoraPersistencia controlPersis  = new ControladoraPersistencia();
    
    public Controladora(){ 
        
        
    }
    
    
    public void crearUsuario(String nombre_usuario, String contrasenia, String rol){
        
  
        
        Usuario usu  = new Usuario();
        usu.setNombre_usuario(nombre_usuario);
        usu.setContrasenia(contrasenia);
        usu.setRol(rol);

        controlPersis.crearUsuario(usu);
        
    } 

    public List<Usuario> listarUsuarios() {
        
        return controlPersis.listarUsuario();
    }

    public void eliminarUsuario(int id) {
        
      
            controlPersis.eliminarUsuario(id);
        
    }

    public Usuario traerUsuario(int id) {
        
        return controlPersis.traerUsuario(id);
    }



    public void editarUsuario(Usuario usu, String nombreUsuario, String contrasenia, String rol) {
        
        
        usu.setNombre_usuario(nombreUsuario);
        usu.setContrasenia(contrasenia);
        usu.setRol(rol);
        
        controlPersis.editarUsuario(usu);
        
        
       
    }

    public boolean comprobarIngreso(String usuario, String contrasenia) {

        List<Usuario> listaUsuario = new ArrayList<Usuario>();
        
        boolean ingreso = false;
        listaUsuario = controlPersis.listarUsuario();
        
        for(Usuario usu : listaUsuario){ 
            
            if(usu.getNombre_usuario().equals(usuario) && usu.getContrasenia().equals(contrasenia)){ 
                
                ingreso = true;
                break;
            }else{ 
                
                ingreso = false;
            }
           
        }
                
                return ingreso;

    }


    
 
    
}
