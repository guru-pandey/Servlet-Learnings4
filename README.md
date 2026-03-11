# Session Tracking & Management in Java Servlets

A mini-project demonstrating how to maintain user state across multiple HTTP requests using the `HttpSession` API in Java Servlets and JSP.

## 🚀 Overview

HTTP is a stateless protocol, meaning the server forgets the user after every request. This project solves that problem by creating a multi-step form (Personal Info -> Education Details -> Review) where data is "remembered" using **Session Tracking**.



## 🛠️ Tech Stack

* **Java:** JDK 11 or higher
* **Servlet API:** Jakarta Servlet 5.0/6.0 (Tomcat 10+)
* **JSP:** JavaServer Pages for the UI
* **Server:** Apache Tomcat 10.1
* **Frontend:** HTML5 & CSS3

## 📂 Project Structure

* `personalInfoFormPage.jsp`: Step 1 - Collects Name, Email, and Phone.
* `PersonalInfoFormPageServlet.java`: Processes Step 1 and initializes the `HttpSession`.
* `educationFormPage.jsp`: Step 2 - Collects University and Degree.
* `EducationDetailsFormPageServlet.java`: Processes Step 2 and adds data to the existing session.
* `reviewPage.jsp`: Displays all stored session data for user review.
* `home.jsp`: Final landing page showing the persistent data.

---

## 💡 Key Concepts Explained

### 1. HttpSession Management
In both `PersonalInfoFormPageServlet` and `EducationDetailsFormPageServlet`, we use:
```java
HttpSession session = request.getSession();
session.setAttribute("key", value);
```
This stores data in a server-side "storage box" unique to each user, identified by a JSESSIONID cookie.
### 2. PRG Pattern (Post-Redirect-Get)
To prevent duplicate form submissions and handle navigation, the Servlets use:
```Java
response.sendRedirect("nextPage.jsp");
```
This tells the browser to make a brand-new GET request to the next page. While the HttpServletRequest object is destroyed during redirection, the HttpSession persists.
### 3. JSP Implicit Objects
In the .jsp files, we retrieve data directly using the implicit `session` object:
```Java
<%= session.getAttribute("userName") %>
```

## 🏃 How to Run
* Clone the Repository:
```Bash
git clone https://github.com/guru-pandey/Servlet-Learnings4.git
```
* **Import Project:** Open your favorite IDE (Eclipse, IntelliJ, or NetBeans) and import it as a Dynamic Web Project or Maven Project.
* **Server Setup:** Ensure Apache Tomcat 10 or 10.1 is configured in your IDE.
* **Deployment:** Right-click on the project. Select Run As > Run on Server.
* **Access:** Navigate to:
http://localhost:8080/Servlet-Learnings4/personalInfoFormPage.jsp

## 📝 Learning Outcomes
* Understanding the difference between Request Scope and Session Scope.
* Implementing Redirection (sendRedirect) vs Forwarding.
* Handling user-specific data storage in a multi-user environment.
* Mapping Servlets using @WebServlet annotations.
