<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>GSB | Asistencias</title>        
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
        <!-- Font Awesome icons (free version)-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js" crossorigin="anonymous"></script>
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet">
        <!-- Fonts CSS-->
        <link rel="stylesheet" href="css/heading.css">
        <link rel="stylesheet" href="css/body.css">
    </head>
    <body id="page-top">
        <nav style="background-color: #1a252f !important;" class="navbar navbar-expand-lg bg-secondary fixed-top" id="mainNav">
            <div class="container"><a class="navbar-brand js-scroll-trigger" href="#page-top">Sistema Asistencia</a>
                <button class="navbar-toggler navbar-toggler-right font-weight-bold bg-primary text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">Menu <i class="fas fa-bars"></i></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                    <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#" ><a></li>                            
                    <li class="nav-item mx-0 mx-lg-1"><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#actualizarModal"> ACTUALIZAR DATOS</button></li>                        
                    </ul>
                </div>                
            </div>            
        </nav>
        <header style="background-color: #2c3e50 !important;" class="masthead bg-primary text-white text-center">
            <div class="container d-flex align-items-center flex-column">
                <!-- Masthead Avatar Image--><img class="masthead-avatar mb-5" src="http://www.gsb.com.pe/wp-content/uploads/2017/06/logof.png" alt="">
                <!-- Masthead Heading-->
                <!-- <h1 class="masthead-heading mb-0">START BOOTSTRAP</h1> -->
                <!-- Icon Divider-->                
            </div>
            <p class="pre-wrap masthead-subheading font-weight-light mb-0"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><?php date_default_timezone_set('America/Lima');echo date("d") . " / " . date("m") . " / " . date("Y") . " - ". date("g:i A") ;?></font></font></p>
        </header>
        <!-- Portfolio Modal-->        
        <div class="portfolio-modal modal fade" id="actualizarModal" tabindex="-1" role="dialog" aria-labelledby="#portfolioModal1Label" aria-hidden="true">
            <div class="modal-dialog modal-xl" role="document">
                <div class="modal-content">
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><i class="fas fa-times"></i></span></button>
                    <div class="modal-body text-center">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-8">
                                    <!-- Portfolio Modal - Title-->
                                    <h2 class="portfolio-modal-title text-secondary mb-0">ACTUALIZAR DATOS</h2>
                                    <!-- Icon Divider-->
                                    <div class="divider-custom">
                                        <div class="divider-custom-line"></div>
                                        <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                        <div class="divider-custom-line"></div>
                                    </div>
                                    <form>
                                    <div class="form-group">
                                        <label for="recipient-name" class="col-form-label">Datos del trabajador</label>
                                        <input type="text" class="form-control" id="nombres_completos" placeholder="Apellidos y Nombres completos" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="recipient-name" class="col-form-label">Cargo</label>
                                        <select class="form-control" id="cargo" required>
                                            <option value="Gestor Atención Cliente">Gestor Atención Cliente</option>
                                            <option value="Gestor Marketing" >Gestor Marketing</option>
                                            <option value="Gestor Apelaciones" >Gestor Apelaciones</option>
                                            <option value="Gestor Seguimientos" >Gestor Seguimientos</option>
                                            <option value="Gestor Cartas" >Gestor Cartas</option>
                                            <option value="Gestor Escaneos" >Gestor Escaneos</option>
                                            <option value="Atencion Reclamos" >Atencion Reclamos</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="recipient-name" class="col-form-label">Correo Electronico Actual</label>
                                        <input type="text" class="form-control" id="email" placeholder="Correo de uso frecuencuente" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="recipient-name" class="col-form-label">Direccion Actual</label>
                                        <input type="text" class="form-control" id="direccion" placeholder="Calle - Avenida N° , Distrito" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="recipient-name" class="col-form-label">Telefono</label>
                                        <input type="text" class="form-control" id="telefono" placeholder="N° Celular y/o teléfono actual" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="message-text" class="col-form-label">Persona para llamar en caso de emergencia </label>
                                        <p class="mb-5">(Apellidos y nombres,parentesco,direccion actual,telefonoy/o celular)</p>
                                        <input type="text" class="form-control" id="datos_emergencia" placeholder="Rellenar datos de emergencia aquí">
                                    </div>
                                    <p class="mb-5">A través del presente declaro que todos los datos arriba consignados son de uso pleno a la actualidad y que me comprometo a informar de manera inmediata si surgirían algunos cambios</p>                                    
                                    <input type="button" class="btn btn-primary" value="Actualizar" onclick="add_datos()">
                                    </form>
                                    <div class="panel-body">
                                        <div id="resultado">
                                        </div>
                                        <!-- lista_contenedor --> 
                                    </div>
                                    <!-- Portfolio Modal - Text                                    
                                    <button class="btn btn-primary" href="#" data-dismiss="modal"><i class="fas fa-times fa-fw"></i>Salir</button>
                                    -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>        
        <section style="background-color: #2c3e50 !important;" class="page-section bg-primary text-white mb-0" id="about">
            <div class="container">
                <!-- About Section Heading-->
                <div class="text-center">
                    <h2 class="page-section-heading d-inline-block text-white">DATOS USUARIO</h2>
                </div>
                <!-- Icon Divider-->
                <div class="divider-custom divider-light">
                    <div class="divider-custom-line"></div>
                </div>
                <!-- About Section Content-->
                <form>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-3">
                                    <input type="text" id="nombres" class="form-control" placeholder="Nombres" required>
                                </div>             
                                <div class="col-sm-3">
                                    <input type="text" id="apellidos" class="form-control" placeholder="Apellidos" required>
                                </div>
                                <div class="col-sm-3">
                                <select class="form-control" id="tipo" required>
                                    <option value="Entrada">Entrada</option>
                                    <option value="Inicio Almuerzo" >Inicio Almuerzo</option>
                                    <option value="Fin Almuerzo" >Fin Almuerzo</option>
                                    <option value="Salida" >Salida</option>
                                </select>
                                </div>
                                <div class="col-sm-2">
                                    <input type="text" id="dni" class="form-control" placeholder="DNI" required>
                                </div>             
                                <div class="col-sm-1">
                                    <input type="button" class="btn btn-primary" value="Agregar" onclick="add_member()">
                                </div>
                            </div>
                    
                        </div>
         </form>
         <div class="panel panel-default">
       <div class="panel-body">
         <div id="list_container">
         </div>
         <!-- lista_contenedor --> 
       </div>
     </div>
            </div>
        </section>
        <!-- Copyright Section-->
        <section class="copyright py-4 text-center text-white">
            <div class="container"><small class="pre-wrap">Copyright © GSB 2020</small></div>
        </section>
        <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes)-->
        <div class="scroll-to-top d-lg-none position-fixed"><a class="js-scroll-trigger d-block text-center text-white rounded" href="#page-top"><i class="fa fa-chevron-up"></i></a></div>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>