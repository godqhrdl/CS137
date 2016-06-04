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


     <div id ="section" style="padding:30px;"> 

    <header>

      <h2>Contact Us</h2>
    </header>
  <div class="img">

                  <a target="_blank" href="img_fjords.jpg">

                          <img src="img/building.jpg" width="600" height="400">

                  </a>

          </div>
    <div class ="table">
      <div class="row">
          <div class="desc">
              <h4 class="title-heading">
              <a href="">Best Electronics Inc.</a>
              </h4>
            <div class="title-content"> 
              <h2>                </h2>
              <p>1 Infinite Loop
                  Cupertino, CA 95014
               </p>
               <p>408-996-1010</p>
            </div>
          </div>
      </div>
      <div class="row">

          <div class="desc">
            <h4 class="title-heading">
              <a href="">BestElectronics.com</a>
              </h4>
            <div class="title-content"> 
                <h2>                    </h2>
                <p>Visit BestElectronics.com</p>
                <p>Or call 1-714-123-1234</p>
            </div>
          </div>
      </div>
      <div class="row">

          <div class="desc">
            <h4 class="title-heading">
              <a href="">Sales Support</a>
              </h4>
            <div class="title-content"> 
                <h2>         </h2>
                <p>Call 1-111-111-1111</p>
              </div>
          </div>
      </div>



    </div>
  </div>


</body>
 <%@ include file="Footer.jsp"%>       
</html>