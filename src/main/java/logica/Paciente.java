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
    
    public Paciente(int id_paciente, boolean tiene_OS, String tipoSangre,  String dni, String nombre, String apellido, String telefono, String direccion, Date fecha_nac ){
        
        super(dni,nombre,apellido,telefono,direccion,fecha_nac);
        this.id_paciente = id_paciente;
        this.tiene_OS = tiene_OS;
        this.tipoSangre = tipoSangre;
    }

    public int getId_paciente() {
        return id_paciente;
    }

    public void setId_paciente(int id_paciente) {
        this.id_paciente = id_paciente;
    }

    public boolean isTiene_OS() {
        return tiene_OS;
    }

    public void setTiene_OS(boolean tiene_OS) {
        this.tiene_OS = tiene_OS;
    }

    public String getTipoSangre() {
        return tipoSangre;
    }

    public void setTipoSangre(String tipoSangre) {
        this.tipoSangre = tipoSangre;
    }
    
    
    
    
}
