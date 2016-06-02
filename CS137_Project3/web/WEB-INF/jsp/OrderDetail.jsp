<%-- 
    Document   : OrderDetail
    Created on : May 29, 2016, 12:15:55 PM
    Author     : misoo
--%>

<%@page import="java.math.BigDecimal"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="Beans.*,  Services.*,java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Detail Page</title>
    </head>
    <body>
       <%@ include file="Header.jsp"%>
       
       <%
        List<CartItem> items = (List<CartItem>) session.getAttribute("saled-items");
        BigDecimal totalPrice= (BigDecimal) session.getAttribute("total-price");
         List<String> mail = (List<String>) session.getAttribute("mail");
        String cid = mail.get(0);
        String n = mail.get(1);
        String em = mail.get(2);
        String add = mail.get(3);
        String ct = mail.get(4);
        String st = mail.get(5);
        String zip = mail.get(6);
        String date = mail.get(7);
              
        %>
        <div class="container" style="margin: auto">
        <h3>Order Detail</h3>
        
         <div class="contents">
            <div align="center">
                <h3>Total Price: $<%=totalPrice%></h3>
            <%
                     for (CartItem item : items) {
                         
            %>
            <table width="800px" border="0" cellspacing="0" cellpadding="10">
                <tbody>
                    <tr>
                        <td width="200" rowspan="13">
                            <div class="poster">
                                <a href="">
                                <img src="<%=item.getProduct().getImg_url()%>" width="138" height="150">
                                </a>
                            </div>
                            <br>
                            
                        </td>

                    </tr>  
                    <tr>
                        <td style="text-align: left">
                        <h4><%=item.getProduct().getName()%></h4>  
                        </td>

                    </tr>
                    <tr>
                       <td style="text-align: left">
                        <h4>Quantity: <%=item.getQuantity()%></h4>  
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left">
                        <h4>Price: $<%=item.getProduct().getPrice()%></h4>  
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left">
                        <h4>Customer ID: <%=cid%></h4>  
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left">
                        <h4>Customer Name: <%=n%></h4>  
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left">
                        <h4>Email: <%=em%></h4>  
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left">
                        <h4>Address: <%=add%>, <%=ct%>, <%=st%>  <%=zip%></h4>  
                        </td>
                    </tr>
                    
                    <tr>
                        <td style="text-align: left">
                        <h4>Date Ordered: <%=date%></h4>  
                        </td>
                    </tr>
                    
                </tbody>
            </table>
         <hr>
        <%}%>
                    </div>
                </div>
       <%@ include file="Footer.jsp"%>
    </body>
</html>
