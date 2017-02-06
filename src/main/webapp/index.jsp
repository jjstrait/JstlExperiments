<%-- 
    Document   : index
    Created on : Feb 6, 2017, 8:54:33 AM
    Author     : jstra
--%>


<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL Practice</title>
        <link href="table.css" rel = "stylesheet">
    </head>
    <body>
        <h1>Tasks</h1>
        
         
        <table style="border-style: inset">
        <c:forEach var="i" begin="1" end="12">
            <tr>
            <c:forEach var="j" begin="1" end="12">
               <c:choose>
                    <c:when test="${i%2 != 0 and j%2==0}">
                        <td id="highlight"> <c:out value="${i*j}"/></td>
                    </c:when>
                    <c:when test="${i%2 == 0 and j%2!=0}">
                        <td id="highlight"> <c:out value="${i*j}"/></td>
                    </c:when>
                    <c:otherwise>
                        <td> <c:out value="${i*j}"/></td>
                    </c:otherwise>
                </c:choose>
                 
            </c:forEach>
            </tr>
        </c:forEach>
        </table>
        <form id="form1" name="form" method="POST" action="tableCalculator">
       <input  type="text" name="first" size="3" value="${first}">
       *<input  type="text" name="second" size="3" value="${second}">=${answer}
                  
               <br> <input id="submit" type="submit" value="Submit"> 
            </form>
        
        
    </body>
</html>
