package com.myapp;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/nextToEducationForm")                                       // We use annotations for Servlet configuration and mapping. When client(browser) sends "/nextToEducationForm" url-pattern request, then PersonalInfoFormPageServlet class will be identified by Servlet Container through this annotation and executed.
public class PersonalInfoFormPageServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {                 // Overriding doPost() - This method is automatically triggered by the Container when the HTML form sends data using method="POST". We write our backend logic here to process the incoming data.

        String userName = request.getParameter("name");                       // Here we call getParameter() on HttpServletRequest object to extract the value of "name" field sent by browser. The argument "name" must exactly match the name attribute of input tag in HTML form. Browser sends data in key-value format like name=Saurabh, and this method retrieves only the value part.
        String userEmail = request.getParameter("email");                    // Similarly, this line extracts the value of "email" parameter from the HTTP request body.
        String userPhoneNo = request.getParameter("phone");

        HttpSession session = request.getSession();                        // Calling getSession() method to obtain HttpSession object. Servlet Container creates a separate session object for each user to maintain user-specific data across multiple requests. We call .getSession() to ask the Container for the user's specific "Storage Box."(Session object). If the user is new, Tomcat creates a new HttpSession object and assigns a unique JSESSIONID to link this user to their data.
        session.setAttribute("userName", userName);                     // Here we store the userName as a key-value pair inside the Session Object for specific user. Unlike 'request.setAttribute', data stored in the Session is not destroyed after this request; it stays alive so we can retrieve it in any other Servlet or JSP during the user's entire visit. (Remember that every user have their separate session object & for each user we store this data inside their specific session object).
        session.setAttribute("userEmail", userEmail);
        session.setAttribute("userPhoneNo", userPhoneNo);

        response.sendRedirect("educationFormPage.jsp");          // sendRedirect() tells browser to send a new request to educationFormPage.jsp. Here server sends 302 status code and Location header to browser. Now the servlet send response to browser with redirection instruction. That servlet response tells browser (servlet -> servlet container -> Web server -> browser) to send new request to "/educationFormPage". And browser receives this, changes its URL to "educationFormPage.jsp", and sends BRAND-NEW request to the server.
                                                                        // Note: Because it is a new request, the original 'HttpServletRequest' object is destroyed, but our data is safe because we stored it in the 'HttpSession' object which survives the redirect.
    }
}
