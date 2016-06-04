<%-- 
    Document   : Contact
    Created on : May 31, 2016, 10:16:46 PM
    Author     : jessicazeng1127
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="Beans.*,  Services.*,java.util.*"%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact</title>

    </head>
    <body>
    <%@ include file="Header.jsp"%>


     <div id ="section" style="padding: 30px;"> 

  <header>
    
    <h2>About BEST Electronics</h2>
    <p>BEST Electronics is a leading provider of technology products, services and solutions.
        The company offers expert service at an unbeatable price more than 1.5 billion times a year to the consumers, small business owners and educators who visit our stores.
        The company has operations in the U.S. where more than 70 percent of the population lives within 15 minutes of a BEST Electrnoics store, as well as in Canada and Mexico,
        where BEST Electronics has a physical and online presence.
        
    </p>
    <h2>Our Executives</h2>
  </header>

  <div class ="table">
    <div class="row">
        <img src="img/profile-icon.png" alt="tb1" >
        <div class="desc">
            <h4 class="title-heading">
            <a href="">Yeiji Song</a>
            </h4>
          <div class="title-content"> 
            <h2>Chief Administrative Officer</h2>
            <p>Responsible for the long-term strategic planning activities of the company.</p>
          </div>
        </div>
    </div>
    <div class="row">
        <img src="img/profile-icon.png" alt="tb2" >
        <div class="desc">
          <h4 class="title-heading">
            <a href="">Misook Sohn</a>
            </h4>
          <div class="title-content"> 
              <h2>Chief Human Resources Officer</h2>
              <p>Oversees talent development and the health and well-being of the more than 125,000 Best Electronics employees worldwide.</p>
          </div>
        </div>
    </div>
    <div class="row">
        <img src="img/profile-icon.png" alt="tb3" >
        <div class="desc">
          <h4 class="title-heading">
            <a href="">Leo Lu</a>
            </h4>
          <div class="title-content"> 
              <h2>Chief Strategic Growth Officer</h2>
              <p>Leads the company’s efforts to refine and implement its growth strategy.</p>
            </div>
        </div>
    </div>
    <div class="row">
        <img src="img/profile-icon.png" alt="tb4" >
        <div class="desc">
          <h4 class="title-heading">
            <a href="">Jessica Zeng</a>
            </h4>
          <div class="title-content"> 
              <h2>Chief Marketing Officer</h2>
              <p>Responsible for marketing strategy, branding and execution across all consumer touch points both in-store and online.</p>
            </div>
        </div>
    </div>
    
    
  </div>
    </div>
    

</body>
 <%@ include file="Footer.jsp"%>       
</html>