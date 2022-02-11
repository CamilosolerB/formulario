<%-- 
    Document   : pagina2
    Created on : 9 feb 2022, 21:44:30
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
            HttpSession sesion = request.getSession();
            int progreso = 33;
            int puntaje = (Integer)sesion.getAttribute("puntaje");
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
                        <h3>¿Cuantos animales llevo moises en su arca?</h3>
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
                        <h3>¿Cual es la formula quimica de la sal de mesa?</h3>
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
                        <h3>¿Isreal es un estado legitimo?</h3>
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
                    <input class="btn btn-success" type="submit" name="next" >Ver resultado</button>
                </div>
                </form>
                <%
                    System.out.println(request.getParameter("next"));
                    if(request.getParameter("next")!=null){
                        response.sendRedirect("pagina3.jsp");
                    }
                %>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    </body>
</html>

