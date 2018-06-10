<%-- 
    Document   : Login
    Created on : Jun 7, 2018, 8:48:13 AM
    Author     : aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h1> Login </h1>
        <form action="LoginCadastroServelet" method="POST">
            Email: <input type="text" name="email" /> <br>
            Senha: <input type="password" name="senha"/> <br>
            <input type="hidden" name= "tipo" value = "login"/>
            <input type="submit" value="Entrar"/>
        </form>
    </body>
</html>
