<%-- 
    Document   : result
    Created on : Mar 14, 2023, 3:39:10 PM
    Author     : Proline
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result Page</title>
    </head>
    <body>
        <%
           Integer numb1=(Integer)request.getAttribute("number_1");
           Integer numb2=(Integer)request.getAttribute("number_2");
           Float x=(Float)request.getAttribute("x");
           Integer numb3=(Integer)request.getAttribute("number_3");
        %>
        
          <h1>result</h1>
          <%="your equation is " +numb1 +"x -" +numb2 + "= " +numb3 %> 
            <table>
              <tr>
                  <td>add:</td>
                  <td><%=numb1 +"x - " + numb2 + "+ 2" + "=" + numb3 +"+ 2"%></td>
              </tr>
              
               <tr>
                  <td>Simplify 1:</td>
                  <td><%=numb1+"x" + "=" + (numb3 + 2)%></td>
              </tr>
                 <tr>
                  <td>divide both side:</td>
                  <td><%=numb1 +"x" +"/"+numb1 + "=" + (numb3 + 2)+"/"+numb1 %></td>
              </tr>
              
               <tr>
                  <td>Simplify 2:</td>
                  <td><%="x" + "=" + (numb3 + 2)+ "/"+numb1%></td>
              </tr>
              
              <tr>
                  <td>Solution</td>
                  <td><%="x" + "=" + x%></td>
              </tr>
              
               <tr>
                   <td>please click <a href="index.html">here</a> to return back to the home page</td>
                </tr>
          </table>
    </body>
</html>
