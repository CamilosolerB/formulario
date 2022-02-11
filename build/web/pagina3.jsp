<%-- 
    Document   : pagina3
    Created on : 9 feb 2022, 21:44:43
    Author     : PC
--%>

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
            //a
            int progreso = 66;
            int puntaje = 0;
        %>
            <nav class="barra">
                <p>Progreso del examen</p>
                <div class="progress">
                    <div class="progress-bar" role="progressbar" style="width: <%=progreso%>%;" aria-valuenow="<%=progreso%>" aria-valuemin="0" aria-valuemax="100"><%=progreso%></div>
                </div>
                    <p class="valorpunt">Mi puntaje:<%=puntaje%></p>
            </nav>
            <h1 class="title">Examen de prueba basica</h1>
                <div class="container">
                      <form>
                    <h3>¿Cuanto es el valor 2X+9=31</h3>
                        <div class="form-floating">
                          <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 100px"></textarea>
                          <label for="floatingTextarea2">Comments</label>
                        </div>
                    <div class="d-grid gap-2 col-6 mx-auto">
                        <button type="submit" class="btn btn-primary" name="boton3">Enviar respuesta</button>
                    </div>
                    </form>
                </div>
                <%
                    if(request.getParameter("boton1")!=null){
                        String [] valor = request.getParameterValues("respuesta1");
                        JOptionPane.showMessageDialog(null, valor);
                    }
                %>
                <div class="container">
                    <form>
                        <h3>FIFA es a PES como Pokemon es a:</h3>
                            <div class="form-floating">
                              <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 100px"></textarea>
                              <label for="floatingTextarea2">Comments</label>
                            </div>
                        <div class="d-grid gap-2 col-6 mx-auto">
                            <button type="submit" class="btn btn-primary" name="boton3">Enviar respuesta</button>
                        </div>
                    </form>
                </div>
                <div class="container">
                    <form>
                    <h3>¿Es HTML un lenguaje de programacion?</h3>
                        <div class="form-floating">
                          <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 100px"></textarea>
                          <label for="floatingTextarea2">Comments</label>
                        </div>
                    <div class="d-grid gap-2 col-6 mx-auto">
                        <button type="submit" class="btn btn-primary" name="boton3">Enviar respuesta</button>
                    </div>
                    </form>
                </div>
                <div class="d-grid gap-2">
                    <button type="button" class="btn btn-success">Subir respuesta</button>
                </div>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    </body>
</html>

