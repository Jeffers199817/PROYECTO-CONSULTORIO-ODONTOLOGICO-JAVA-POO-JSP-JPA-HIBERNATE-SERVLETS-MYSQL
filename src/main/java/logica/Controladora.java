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
    
    
    public void crearUsuario(int id , String nombreUsuario, String contrasenia, String rol){
        
        Usuario usu = new Usuario(1, "Jefferson","Jeff1998","admin");
        
        controlPersis.crearUsuario(usu);
        
    } 
    
 
    
}
