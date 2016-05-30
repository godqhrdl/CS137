<%-- 
    Document   : product_detail
    Created on : May 24, 2016, 3:11:07 PM
    Author     : jessicazeng1127
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Services.*, Beans.*,Servlets.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Product Detail</title>
</head>
<body>
<%@ include file="Header.jsp"%>


<style>
    		
                #row3{	
			position: relative;
			min-height: 1100px; 
		}

		#row3 > #info{
    		width: 50%;
    		margin: 30px 20px 20px 600px;
    		padding:5px;
    		height:100%;
    		float:right;  
    		position: absolute;
		}
		#info> #product_detail{
			margin:10px 20px 20px 30px;
    		float:left;  
    		position:relative;
		}

	   
		#product_detail > #price{
			display: inline-block;
			font-family: sans-serif;
			font-color: black;
			font-size:200%;
			float:center;
			margin: 10px 10px 10px 50px;
			position: relative;		

		}
		#product_detail > #ship{
			display: inline-block;
			font-family: sans-serif;
			font-color: black;
			font-size:200%;
			float:center;
			margin: 60px 10px 10px 50px;
			position: relative;	

		}
		
		
	    #product_detail > #details{
	    	display: inline-block;
	    	font-family: sans-serif;
	    	float:center;
	    	margin: 220px 10px 10px 50px;
	    	font-color: black;
	    	position: relative;	
	    
	    }

	    #product_detail > #feature_title{
	    	display: inline-block;
	    	font-family: sans-serif;
	    	float:center;
	    	font-color: black;
	    	margin:350px 10px 10px 50px;
	    	position: relative;	

	    }

	    #product_detail > #feature{
	    	display: inline-block;
	    	font-family: sans-serif;
	    	float:center;
	    	font-color: black;
	    	margin:400px 10px 5px 50px;
	    	position: relative;	
	    	
	    
            }
            #picture > #item2,#item3{ 
			position: relative;
			display: block;
			width:39%;
	}
			
		
	   #picture > #item1:hover, #item2:hover, #item3:hover{
              
			width:100%;
			height:100%;
		}
            
            #picture{
                padding-left:30px;
                float:left;
                position:relative;
            }
    </style>        



  <% 
            Product product = null;
                    try {

                        product = (Product) session.getAttribute("current_product_detail");

                    } catch (Exception e) {
                            e.printStackTrace();
                    }

            
   String addr = request.getContextPath();
   String path = request.getContextPath()+"/Product&id=" + product.getPid(); 
  %>
    <div id = "row3">
    <div id = "info">
                  
<!--<form method = "post" action = "product_detail">
    ID : <% out.println(product.getPid());%>
</form>
    -->
       

            <table id = "product_detail">
				<tr><h1 id = "title"><% out.println(product.getName());%> </h1></tr>
				<tr><h3 id = "price"><% out.println(product.getPrice());%></h3></tr>
				<tr><h3 id = "ship">Free Shipping</h3></tr>
				<tr><a href = "form.jsp?productid=<% out.println(product.getPid());%>"/><img id ="buy" src = "img/buy.jpg" alt = "buy now" style = "width:200px;height:80px;"></a></tr>
				<tr><p id = "details"><% out.println(product.getDescription());%></p>
				</tr>
				<tr><h4 id = "feature_title">Product Features</h4>
					<div id ="feature">
					<%
                                        String[] token = (product.getFeature()).split(",");
                                        boolean a=true;
					int count;
                                        for (count = 0; count < token.length; count++){
					 
                                            if (a == true){
                                                
                                            %>
                                            <p style ="background-color:#C8CBCC"> <%out.println(token[count]); a = false;}%> </p>
                                            <% if (a == false){%>
                                            
                                               
                                                        <p><% out.println(token[count]); a = true;}}%></p>
                                      
                                               
                                              
				</div>
				</tr>
            </table>
                                                            
                                                            
    </div>
                                                        <div id="customers">
                                                            <% 
                                                               
                                                                
                                                                int number = 0;
                                                               
                                                                try{
                                                                    
                                                                   number = (Integer)(request.getAttribute("customers"));
                                                                   }
                                                                 catch(Exception e){
                                                                            e.printStackTrace();
                                                                    }
                                                            %>
                                                            <p>There are customers are viewing <% out.println(number); %> this product.</p>
                                                        </div>
                                                        
		<div id = "picture">
			<div id = "item1"> <img  src= <% out.println(product.getImg_url());%> alt = <% out.println(product.getName());%>> </div>
			<div id = "item2"><img  src = <% out.println(product.getImg_url());%>alt =  <% out.println(product.getName());%>></div>
			
		</div>
	</div>
</body>

<%@ include file="Footer.jsp"%>
</body>
</html>
