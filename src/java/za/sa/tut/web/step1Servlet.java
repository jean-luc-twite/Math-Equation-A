/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.sa.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author Proline
 */
public class step1Servlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         //declare variable and inialise 
         Integer num1=Integer.parseInt(request.getParameter("number_1"));
         Integer num2=Integer.parseInt(request.getParameter("number_2"));
         //
         determineX(request, num1, num2);
         //
       request.setAttribute("number_1", num1);
       request.setAttribute("number_2", num2);
       //
       RequestDispatcher disp=request.getRequestDispatcher("result.jsp");
       disp.forward(request, response);
          
         
         
    }
   public Float determineX(HttpServletRequest request,Integer numb1, Integer numb2) {
      //  declare variable
      Integer numb3=21;
      float x =(numb3+2)/numb1; 
      
      request.setAttribute("x", x);
      request.setAttribute("number_3", numb3);
    
      return x;
    }

}
