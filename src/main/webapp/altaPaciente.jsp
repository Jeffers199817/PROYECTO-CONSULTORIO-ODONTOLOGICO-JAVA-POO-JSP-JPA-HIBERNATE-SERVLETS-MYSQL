<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="components/header.jsp"%>
<%@include file="components/bodyprimeraparte.jsp" %>

<h1>Alta Pacientes</h1>

<form class="user" action="SvPaciente" method="POST">
    <div class="form-group col">
        <div class="col-sm-6 mb-3">
            <input type="text" class="form-control form-control-user" id="dni" name="dni" placeholder="dni">
        </div>
        <div class="col-sm-6 mb-3">
            <input type="text" class="form-control form-control-user" id="nombrePaciente" name="nombrePaciente" placeholder="Nombre">
        </div>
        <div class="col-sm-6 mb-3">
            <input type="text" class="form-control form-control-user" id="apellidoPaciente" name="apellidoPaciente" placeholder="Apellido">
        </div>
        <div class="col-sm-6 mb-3">
            <input type="text" class="form-control form-control-user" id="telefono" name="telefono" placeholder="telefono">
        </div>
        <div class="col-sm-6 mb-3">
            <input type="text" class="form-control form-control-user" id="direccion" name="direccion" placeholder="direccion">
        </div>
        <div class="col-sm-6 mb-3">
            <input type="date" class="form-control form-control-user" id="fecha" name="fecha" placeholder="fecha" onchange="checkAge()">
        </div>
        <div class="col-sm-6 mb-3">
            <select class="form-control form-control-user" id="seguroSocial" name="seguroSocial">
                <option value="SI">SI</option>
                <option value="NO">NO</option>
            </select>
        </div>
        <div class="col-sm-6 mb-3">
            <input type="text" class="form-control form-control-user" id="tipoSangre" name="tipoSangre" placeholder="tipoSangre">
        </div>

        <!-- PARA EL CASO QUE SEA MENOR DE EDAD -->
        <div class="col-sm-6 mb-3" id="additionalFields" style="display:none;">
            <h2>Paciente menor de edad ingrese datos del Responsable.</h2>
            <h1>Alta Responsable</h1>
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="dniResponsable" name="dniResponsable" placeholder="dni">
            </div>
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="nombreResponsable" name="nombreResponsable" placeholder="Nombre">
            </div>
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="apellidoResponsable" name="apellidoResponsable" placeholder="Apellido">
            </div>
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="telefonoResponsable" name="telefonoResponsable" placeholder="telefono">
            </div>
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="direccionResponsable" name="direccionResponsable" placeholder="direccion">
            </div>
        </div>
    </div>

    <button class="btn btn-primary btn-user btn-block" type="submit">
        Registrar paciente
    </button>
</form>

<%@include file="components/bodyfinal.jsp" %>

<script>
document.addEventListener('DOMContentLoaded', function() { 
    document.getElementById('seguroSocial').addEventListener('change', function() { 
        const seguroSocial = document.getElementById('seguroSocial').value; 
        console.log('Seguro Social seleccionado: ', seguroSocial); }); 
    
        document.getElementById('fecha').addEventListener('change', function() { 
            checkAge(); 
        });
    });

function checkAge() {
    const fecha = document.getElementById('fecha').value;
    const birthDate = new Date(fecha);
    const today = new Date();
    let age = today.getFullYear() - birthDate.getFullYear();
    const monthDiff = today.getMonth() - birthDate.getMonth();
    if (monthDiff < 0 || (monthDiff === 0 && today.getDate() < birthDate.getDate())) {
        age--;
    }

    if (age < 18) {
        document.getElementById('additionalFields').style.display = 'block';
    } else {
        document.getElementById('additionalFields').style.display = 'none';
    }
}
</script>
