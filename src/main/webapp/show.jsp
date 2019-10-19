<%-- 
    Document   : new
    Created on : Oct 10, 2019, 3:10:41 AM
    Author     : beto
--%>

<%@page import="java.util.Collections"%>
<%@page import="java.util.Collection"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Table</title>
        <style>
            table
            {
                border-collapse: collapse;
                margin-bottom: 10px;
            }
            td
            {
                text-align: center;
                width: 30px;
                height: 20px;
                
            }
            button
            {
                
                background-color:blue;
                border-radius: 10px;
            }
            
         </style>
    </head>
    <body style="">
       
        <%    
            String data="",all="";
            String tdWithStyle="<td style='border:1px solid black; background-color:blue'>*</td>";
            String tdWithOutStyle="<td style='border:1px solid black'>+</td>";
            ArrayList<String> cars = new ArrayList<String>();
            String brdr="style='border:1px solid black; background-color:blue'";
            int max=Integer.parseInt(request.getParameter("maxNumber"));
            if(max<=0)
            {
                out.println("Number should be bigger than 0");
            }
            
            else
            {
                
                for(int i=1 ; i<max+1 ;i++)
            {
                
                int counter=i;
                for(int j=0;j<max;j++)
                {
                    if(counter>0)
                    {
                        
                        data+=tdWithStyle; 
                        counter--;
                    }
                    else
                    {
                        data+=tdWithOutStyle;
                    }
                 
                }
                all+="<tr>"+data+"</tr>";
                cars.add("<tr>"+data+"</tr>");
                data="";
                
            }         
          Collections.reverse(cars);
          
          for(int i=1;i<cars.size();i++)
          {
              all+=cars.get(i);
          }
          out.println("<table>"+all+"</table>");
           }
         %>
         
         <form action="index.html">
             <button type="submit">Back</button>
         </form>
    </body>
</html>
