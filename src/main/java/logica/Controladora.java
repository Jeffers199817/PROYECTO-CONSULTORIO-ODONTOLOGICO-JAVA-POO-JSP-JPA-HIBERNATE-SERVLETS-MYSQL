/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logica;

import logica.persistencia.ControladoraPersistencia;

/**
 *
 * @author JEFFERSON ALQUINGA
 */
public class Controladora {
    
    ControladoraPersistencia controlPersis  = new ControladoraPersistencia();
    
    public Controladora(){ 
        
        
    }
    
    
    public void crearUsuario(String nombre_usuario, String contrasenia, String rol){
        
        System.out.println("llEGAMOS BIEN ");
        
        Usuario usu  = new Usuario();
        usu.setNombre_usuario(nombre_usuario);
        usu.setContrasenia(contrasenia);
        usu.setRol(rol);

        controlPersis.crearUsuario(usu);
        
    } 
    
 
    
}
