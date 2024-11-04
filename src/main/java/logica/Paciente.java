/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logica;

import java.util.Date;

/**
 *
 * @author JEFFERSON ALQUINGA
 */
public class Paciente extends Persona{
    
    private int id_paciente;
    private boolean tiene_OS;
    private String tipoSangre;
    
    public Paciente(){ 
        
    }
    
    public Paciente(int id_paciente, boolean tiene_OS, String tipoSangre, int id_persona, String dni, String nombre, String apellido, String telefono, String direccion, Date fecha_nac ){
        
        super(id_persona,dni,nombre,apellido,telefono,direccion,fecha_nac);
        this.id_paciente = id_paciente;
        this.tiene_OS = tiene_OS;
        this.tipoSangre = tipoSangre;
    }
    
    
    
    
}
