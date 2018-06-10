/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.util.Hashtable;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author aluno
 */
@WebServlet(urlPatterns = {"/LoginCadastroServelet"})
public class LoginCadastroServelet extends HttpServlet {
    Hashtable <String, String> cadastro;
    
    @Override
    public void init(){
        this.cadastro = new Hashtable();
    }
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
        if(request.getParameter("tipo").equals("cadastro")){ //verifica se é cadastro ou login
            if(!cadastro.contains(email)){
                cadastro.put(email, senha);
            }
            response.sendRedirect("Login.jsp");
        }else{
            String c = cadastro.get(email);
            if(c!=null && c.equals(senha)){ //verifica se a senha está correta
                HttpSession session = request.getSession();
                session.invalidate(); //encerra a sessão
                session = request.getSession();
                session.setAttribute("email", email);
                response.sendRedirect("index.jsp");
            }else{
                response.sendRedirect("Login.jsp");
            }
        }
    }
}
