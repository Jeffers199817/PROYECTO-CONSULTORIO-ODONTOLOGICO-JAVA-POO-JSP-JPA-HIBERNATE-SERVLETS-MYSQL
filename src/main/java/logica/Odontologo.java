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
public class Odontologo extends Persona{
    
    private int id_odontologo;
    private String especialidad;

    public Odontologo() {
    }
    
    



    public Odontologo(int id_odontologo, String especialidad, int id_persona, String dni, String nombre, String apellido, String telefono, String direccion, Date fecha_nac) {
        super(id_persona, dni, nombre, apellido, telefono, direccion, fecha_nac);
        this.id_odontologo = id_odontologo;
        this.especialidad = especialidad;
     
    }
    
}
