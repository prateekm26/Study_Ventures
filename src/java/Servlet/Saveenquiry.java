/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Servlet;

import Mypackage.ConnectionManager;
import Mypackage.SmsSender;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Prateek Kumar
 */
@WebServlet(name = "Saveenquiry", urlPatterns = {"/Saveenquiry"})
public class Saveenquiry extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.sql.SQLException
     * @throws java.lang.ClassNotFoundException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SaveEnquiry</title>");            
            out.println("</head>");
            out.println("<body>");
            String name=request.getParameter("name");
            String gender=request.getParameter("gender");
            String contactno=request.getParameter("contactno");
            String emailaddress=request.getParameter("emailaddress");
            String message=request.getParameter("message");
            SimpleDateFormat df=new SimpleDateFormat("dd/MM/yyyy");
            String enquirydt=df.format(new Date());
            ConnectionManager cm=new ConnectionManager();
            ResultSet rs=cm.selectQuery("select nvl(max(id),0)+1 from enquiry");
            rs.next();
            int id=rs.getInt(1);
            String query="insert into enquiry values("+id+",'"+name+"','"+gender+"','"+contactno+"','"+emailaddress+"','"+message+"','"+enquirydt+"' )";
           if(cm.executeNonQuery(query)==true)
           {
               SmsSender sms=new SmsSender();
               sms.SendSms(contactno,"Hello! "+name+"\n Your enquiry is submitted");
                out.println("<script>alert('Your enquiry is submitted');window.location.href='Enquiry.jsp';</script>");
           }
            else
                out.println("<script>alert('Database Error');window.location.href='Enquiry.jsp';</script>");
   
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(Saveenquiry.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(Saveenquiry.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo()
    {
        return "Short description";
    }// </editor-fold>

}
