package Servlets;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author jessicazeng1127
 */

import Beans.Product;
import Services.Products;
import java.io.IOException;
import java.util.concurrent.ConcurrentMap;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.ArrayList;




public class ProductDetail extends HttpServlet{

   

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("HELLO WORLD!!");
       //int pid = 111112;
      
       //int number = request.setParameter("pid");
       
    
       ProcessRequest(request,response);
       
       
        request.getRequestDispatcher("/WEB-INF/jsp/ProductDetail.jsp").forward(request, response);
        
        //RequestDispatcher dispatch =  request.getRequestDispatcher("/index.jsp");
        //RequestDispatcher dispatch =  request.getRequestDispatcher("/WEB-INF/jsp/ProductDetail.jsp");
	//dispatch.include(request, response);
   
        
        
    }
    
    
     protected void ProcessRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         
       int pid;
       String id = request.getParameter("id");
       pid = Integer.parseInt(id);
         HttpSession session = request.getSession(true);
       
       
        Product product = null;
        try{
            product = Products.getProductsByID(pid);
        }
        catch(Exception e){
            e.printStackTrace();
        }
        List<Product> LastViewedList =  (List<Product>) session.getAttribute("LastViewedList");
       if (LastViewedList==null)
       {
           System.out.println("NOW IT IS NULL");
           LastViewedList=new ArrayList<Product>();
           LastViewedList.add(product);
       }
       else{
           if (LastViewedList.size()<=4)
           {
                System.out.println("SIZE IS FINE. " + LastViewedList.size());
               LastViewedList.add(product);
           }
           else
           {
               System.out.println("SIZE IS NOT FINE.");
               LastViewedList.remove(0);
               LastViewedList.add(product);
           }
       }
       session.setAttribute("LastViewdList",LastViewedList);
    
       ServletContext servContext =  getServletConfig().getServletContext();
       HashMap users =  (HashMap) servContext.getAttribute("users");
       
       // if user is leaving this page,  remove user from hashmap

        
       
       session.setAttribute("current_product_detail",product);
       session.setAttribute("one_prd", product);
       
     /* add user to hashmap */  
       
       //if the user has not viewed any product or has not viewed this product
       if (session.getAttribute("last_product_detail") == null ||session.getAttribute("last_product_detail") != session.getAttribute("current_product_detail")){
            

        //create hashmap
            if (users == null){

                users = new HashMap();

            }
        
        //the first user of this product
            else if (users.get(pid) == null ){

                   users.put(pid,1);
                   request.setAttribute("customers",1);
            }
        
        //add user number of the product
            else{
                int val;
                val = (Integer)users.get(pid);
                users.put(pid,val+1);
                request.setAttribute("customers",val+1);
            }
        // update the hashmap in context object
       
        servContext.setAttribute("users", users);
       
      
        
       //record the last product this user view
      
       
        }
     }
      protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //get the delete product id
        int delete_id;
        String delete_pid = request.getParameter("delete_id");
        if (delete_pid != null){
            delete_id = Integer.parseInt(delete_pid);

            //get hashmap
            ServletContext servContext =  getServletConfig().getServletContext();
            HttpSession session = request.getSession(true);
            HashMap users =  (HashMap) servContext.getAttribute("users");
        
            //check if hashmap is empty

            if ( (users != null)){
               
            //check if this product is a key in hashmap
                if (users.get(delete_id) != null){
                    
                    int v = (Integer) users.get(delete_id);
                    
                    //if customer viewing > 0
                    if (v != 0){
                        users.put(delete_id,v-1);
                        servContext.setAttribute("users", users);
                        session.setAttribute("last_product_detail",delete_id);

                    }

               }
            }
         }
       
          
      }
}
