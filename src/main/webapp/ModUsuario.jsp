<%-- 
    Document   : ModUsuario
    Created on : 21 jun. 2023, 16:05:17
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar</title>
    </head>
    <jsp:include page="includes/sidebarhead.jsp"></jsp:include>
    <body>
        <form action="Controlador?menu=usuario" method="POST">
            <input type="hidden" name="txtcodigo" value="${modif.getCodigo()}">
            <div class="modal-body" role="document">
                <div class="modal-content">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Mantenimiento de Usuarios</h6>
                    </div>
                    <div class="modal-body">
                        <table class="table table-light" width="100%" cellspacing="0">
                            <tr>
                                <td>Nombres:<input class="form-control" type="text" name="txtnombres" required="" value="${modif.getNombres()}"></td>
                                <td>Apellido Paterno:<input class="form-control" type="text" name="txtapelpat" required="" value="${modif.getApepat()}"></td>
                                <td>Apellido Materno:<input class="form-control" type="text" name="txtapelmat" required="" value="${modif.getApemat()}"></td>
                                <td>DNI:<input class="form-control" type="text" name="txtdni" required="" value="${modif.getDni()}"></td>
                            </tr>
                            <tr>
                                <td>Fecha Nacimiento:
                                    <input type="date" class="form-control" name="txtfecha"/>
                                </td>
                                <td>Telefono:<input class="form-control" type="tel" name="txttelefono" required="" value="${modif.getTelefono()}"></td>
                                <!-- mientras -->
                                <td>Turno:
                                    <select name="txtturno" class="form-control" required=""> 
                                        <option value="NULL" selected>Seleccione Turno</option>
                                        <option value="mañana">Mañana</option>
                                        <option value="tarde">Tarde</option>
                                        <option value="noche">Noche</option>
                                    </select>
                                </td>                                
                                <td>Horario:<input class="form-control" type="text" name="txthorario" required="" value="${modif.getHorario()}"></td>
                                <!-- cambiar --> 
                            </tr>
                            <tr>
                                <td>Dirección:<input class="form-control" type="text" name="txtdireccion" required="" value="${modif.getDireccion()}">                                      
                                </td>
                                <td>Distrito:
                                    <select name="txtdistrito" class="form-control"> 
                                        <option value="NULL" selected>Seleccione Distrito</option>
                                        <option value="Cayma">Cayma</option>
                                        <option value="Cercado">Cercado</option>
                                        <option value="Yanahuara">Yanahuara</option>
                                        <option value="Selva Alegre">Selva Alegre</option>
                                        <option value="Mariano Melgar">Mariano Melgar</option>
                                        <option value="Hunter">Hunter</option>
                                        <option value="Cerro Colorado">Cerro Colorado</option>
                                    </select> 
                                </td>                                                                
                                <td>Rol:
                                    <select name="txtrol" class="form-control"> 
                                        <option value="0" selected>Seleccione Rol</option>
                                        <option value="1">Administrador</option>
                                        <option value="2">Encargado</option>
                                        <option value="3">Tecnico</option>
                                    </select>                                     
                                </td>
                                <td>Especialidad:
                                    <select name="txtespecial" class="form-control"> 
                                        <option value="0" selected>Seleccione Especialidad</option>
                                        <option value="1">Masajista</option>
                                        <option value="2">Esteticista</option>
                                        <option value="3">Terapeuta</option>
                                        <option value="4">Fisioterapeuta</option>
                                    </select>                                     
                                </td>
                            </tr>
                            <tr>
                                <td>Correo:
                                    <input class="form-control" type="email" name="txtcorreo" required="" value="${modif.getCorreo()}">
                                </td>
                                <td>Contraseña:
                                    <input class="form-control" type="password" name="txtcontrasena" required="" value="${modif.getContrasena()}">
                                </td>
                                <td align="right">
                                    <p> </p>
                                    <button class="btn btn-warning btn-icon-split" type="submit" name="accion" value="modificar">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-wrench"></i>
                                        </span>
                                        <span class="text">Modificar</span>
                                    </button>
                                </td>
                                <td align="left">
                                    <p> </p>
                                    <a href="Controlador?menu=usuario&accion=listar" class="btn btn-secondary btn-icon-split">
                                        
                                            <span class="icon text-white-50">
                                                <i class="fas fa-arrow-right"></i>
                                            </span>
                                            <span class="text">Cancelar</span>
                                        
                                    </a>
                                </td>
                            </tr>
                        </table>                        
                    </div>                       
                </div>
            </div>            
        </form>
    </body>
    <jsp:include page="includes/sidebarfoot.jsp"></jsp:include>
</html>
