/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logica.persistencia;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import logica.Usuario;
import logica.persistencia.exceptions.NonexistentEntityException;

/**
 *
 * @author JEFFERSON ALQUINGA
 */
public class ControladoraPersistencia {
    
    HorarioJpaController horarioJpa = new HorarioJpaController();
    OdontologoJpaController odontoJpa = new OdontologoJpaController();
    PacienteJpaController pacienteJpa = new PacienteJpaController();
    PersonaJpaController personaJpa = new PersonaJpaController();
    ResponsableJpaController responsableJpa = new ResponsableJpaController();
    SecretarioJpaController secretariaJpa = new SecretarioJpaController();
    TurnoJpaController turnoJpa = new TurnoJpaController();
    UsuarioJpaController usuarioJpa = new UsuarioJpaController();
    
    
    public ControladoraPersistencia(){ 
        
    }

    public void crearUsuario(Usuario usu) {
        
        usuarioJpa.create(usu);
    }

    public List<Usuario> listarUsuario() {
        
        return usuarioJpa.findUsuarioEntities();
    }

    public void eliminarUsuario(int id) {
        
        
        try {
            usuarioJpa.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
      
    }

    public Usuario traerUsuario(int id) {
        
        return usuarioJpa.findUsuario(id);
    }

    public void editarUsuario(Usuario usu) {
        
        try {
            usuarioJpa.edit(usu);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
    
    
}
