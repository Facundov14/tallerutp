<%-- 
    Document   : agregarServicio
    Created on : 22 jun. 2022, 16:03:19
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TALLER UTP</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300;500;700&display=swap" rel="stylesheet">
        <script src="https://kit.fontawesome.com/b528f7619b.js" crossorigin="anonymous"></script>
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="./css/sidebar.css">
        <style>
            form {
                margin : 4rem auto 0;
                width: 50%;
            }
            .form-control {
                font-size: 1.6rem;
            }
        </style>
    </head>
    <body>
        <main class="contenido">
            <div class="sidebar1">
                <jsp:include page="./sidebar/sidebarAdmin.jsp"></jsp:include>
            </div>

            <div class="principal">
                <div class="general">
                    <h1 style="text-align: center">Agregar nuevo servicio</h1>
                    
                    <form class="formulario" action="ControladorAdmin">
                        
                        <label class="form-label" for="nombreServicio">Nombre del servicio: </label>
                        <input class="form-control" type="text" name="nombreServicio"
                               required="" pattern="[A-Za-z0-9]+"><br>
                        <label class="form-label" for="precioServicio">Precio del servicio:</label>
                        <input class="form-control" type="number" name="precioServicio"
                               required="" step="0.1" min="0"><br>
                        <label class="form-label" for="descripcionServicio">Descripcion del repuesto: </label>
                        <input class="form-control" type="text" name="descripcionServicio"
                               required=""><br>
                        <input type="submit" name="accion" value="agregarServicio">
                    </form>
                </div>
            </div>
        </main>
    </body>
</html>
