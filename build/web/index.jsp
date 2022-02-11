<%-- 
    Document   : index
    Created on : 7 feb 2022, 21:08:30
    Author     : PC
--%>

<%@page import="java.awt.JobAttributes"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>Formulario con java web</title>
    </head>
    <body>
        <%
            //JOptionPane.showMessageDialog(null, "hola");
            int progreso = 0;
            int puntaje = 0;
            HttpSession sesion = request.getSession();
            sesion.setAttribute("progreso", progreso);
            sesion.setAttribute("puntaje", puntaje);
        %>
            <nav class="barra"></nav>
            <h1 class="title">Examen de prueba basica</h1>
            <!-- Inicio del formulario -->
            
                <div class="container">
                    <form>
                    <h3>Los bunkers son una banda de nacionalidad:</h3>
                        <div class="form-floating">
                            <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" name="respuesta1" style="height: 100px"></textarea>
                          <label for="floatingTextarea2">Comments</label>
                        </div>
                        <div class="d-grid gap-2 col-6 mx-auto">
                            <button type="submit" class="btn btn-primary" name="boton1">Enviar respuesta</button>
                        </div>
                    </form>
                </div>
                <%           
                    if(request.getParameter("boton1")!=null){
                        String valor = request.getParameter("respuesta1");
                        if(request.getParameter("respuesta1")=="Chilena"){
                            System.out.println(valor);
                            int suma = (Integer)sesion.getAttribute("puntaje") + 1;
                            sesion.setAttribute("puntaje", suma);
                            //System.out.println("a");
                            JOptionPane.showMessageDialog(null, "Respuesta correcta");
                        }
                    }
                %>
                <div class="container">
                    <form>
                    <h3>¿Que significa NFT?</h3>
                        <<div class="form-floating">
                            <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 100px"></textarea>
                            <label for="floatingTextarea2">Comments</label>
                        </div>
                        <div class="d-grid gap-2 col-6 mx-auto">
                            <button type="submit" class="btn btn-primary" name="boton2">Enviar respuesta</button>
                        </div>
                    </form>
                </div>
                <div class="container">
                    <form>
                    <h3>¿Quien creo "The man who sold the world"?</h3>
                        <div class="form-floating">
                          <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 100px"></textarea>
                          <label for="floatingTextarea2">Comments</label>
                        </div>
                    <div class="d-grid gap-2 col-6 mx-auto">
                        <button type="submit" class="btn btn-primary" name="boton3">Enviar respuesta</button>
                    </div>
                    </form>
                </div>
                <form>
                    <div class="d-grid gap-2">
                    <input class="btn btn-success" type="submit" name="next" ></button>
                    </div>
                </form>
                <%
                    if(request.getParameter("next")!=null){
                        response.sendRedirect("pagina2.jsp");
                    }
                %>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    </body>
</html>
