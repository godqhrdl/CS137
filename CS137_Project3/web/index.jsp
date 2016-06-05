<%-- 
    Document   : index
    Created on : May 24, 2016, 12:22:51 AM
    Author     : misoo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="Beans.*,  Services.*,java.util.*"%>
<%@ page import="javax.servlet.*" %>
<!DOCTYPE html>

<html>
<%@ include file="WEB-INF/jsp/Header.jsp"%> 
<head>
    <style>
.contents a {
	text-decoration: none;
	outline: none;
}
.contents h4{
    margin:0;
}
.contents p {
	display: inline;
}

.contents hr {
	width: 80%;
	border-width: 1px;
	color: gray;
}

.addToCart img {
	margin-top: 15px;
}
    
</style>
</head>
    <body>
        <%
        String addr = request.getContextPath();
        String path = request.getContextPath()+"/Product&id=";
        List<Product> ViewedProducts = new ArrayList<Product>();
        String pathToProduct = request.getContextPath()+"/ProductDetail?id=";
        String cartToPath = addr + "/Cart?action=add&quantity=1&product=";
        ViewedProducts.add((Product) session.getAttribute("one_prd"));
        List<Product> LastViewedList = (List<Product>)session.getAttribute("LastViewedList");
        List<Product> AllProductsList = (List<Product>)session.getAttribute("AllProductsList");
        
        
        //if (ViewedProducts.size()==6){
           // ViewedProducts.remove(0);
        //}
        if (LastViewedList==null)
        {
            //out.print("<h3> You don't have any recently viewed items.</h3><br>");
        }
        else
        {
            out.print("<h3> Your last viewed items:</h3><br>");
        }
        %>
        
        <div class="main">
        <div class="contents">
            <div align="center">
        <%
            
        if (LastViewedList!=null){
        for(Product p : LastViewedList){
        %>
        
        <table width="800px" border="0" cellspacing="0" cellpadding="10">
        <tbody>
            <tr>
                <td width="200" rowspan="13">
                    <div class="poster">
                        <a href=<%=pathToProduct+p.getPid()%>>
                        <img src="<%=p.getImg_url()%>" width="138" height="150">
                        </a>
                    </div>
                    <br>
                    <div class="addToCart">
                        <a href=<%=cartToPath + p.getPid()%>>
                            <img src="img/add-to-cart.png" alt="add to cart">
                        </a>
                    </div>
                </td>

            </tr>  
            <tr>
                <td style="text-align: left">
                <a href="<%=pathToProduct+p.getPid()%>">
                <h4><%=p.getName()%></h4>  
                </td>

            </tr>
            <tr>
                <td style="text-align: left">
                <h4>$<%=p.getPrice()%></h4>  
                </td>
            </tr>
            <tr>
               <td style="text-align: left">
                <p><%=p.getSub_feature()%></p>  
                </td>
            </tr>
        </tbody>
    </table>
 <hr>
<%}}%>
            <h3> Take a look at our hottest products!</h3><br>
        
        <%
            
        if (AllProductsList!=null){
        for(Product p : AllProductsList){
            if ((p.getPid()!=111112) && (p.getPid()!=111114)&& (p.getPid()!=111120)){
        %>
        <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">NEW PRODUCT</div>
        <div class="panel-body"><a href=<%=pathToProduct+p.getPid()%>><img src="<%=p.getImg_url()%>" class="img-responsive" style="width:100%" alt="Image"></a></div>
        <div class="panel-footer"><a href=<%=pathToProduct+p.getPid()%>><%=p.getName()%></a></div>
      </div>
    </div> 
           <%}}}%>       
            </div>
        </div>
    </div>     
    </body>
 <%@ include file="WEB-INF/jsp/Footer.jsp"%>       
</html>


