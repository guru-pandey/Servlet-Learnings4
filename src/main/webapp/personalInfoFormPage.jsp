<html>
<body>

<form action="nextToEducationForm" method="post">                       <!-- action="nextToEducationForm" → "nextToEducationForm" is the URL-pattern of Servlet. When user clicks submit button, browser sends HTTP POST request to http://localhost:8080/Servlet-Learnings4/nextToEducationForm --> <!-- "Servlet-Learnings4" is Context Path (Project name) and "/nextToEducationForm" is mapped with Servlet class (like MyServlet) --> <!-- method="post" tells browser to send form data inside HTTP POST request body, so request will be handled inside doPost() method -->

    Enter Your Name: <input type="text" name="name">

    Enter Your Email: <input type="text" name="email">          <!-- name="email" is Parameter name (key). Whatever user types here, browser sends it as key-value pair like email=saurabh@gmail.com -->  <!-- In Servlet, we retrieve this value using request.getParameter("email") -->
    <br>                                                         <!-- <br> tag for break current line and change line -->


    Enter Your Phone Number: <input type="text" name="phone">         <!-- name="phone" is another parameter name (key). If user enters 9118382938, browser sends password=9118382938 -->  <!-- In Servlet, we retrieve it using request.getParameter("password") -->
    <br>

    <input type="submit" value="Next">                                 <!-- When user clicks Next button: Browser collects all input data, creates HTTP POST request and sends it to /nextToSecondPage URL -->  <!-- Tomcat(as web server) receives that request and send it to Tomcat(as servlet-container). Now tomcat(as servlet-container) receives request, creates HttpServletRequest and HttpServletResponse objects and calls doPost() method of mapped Servlet -->

</form>


<!-- All the below code is for styling & designing the form-->
<head>
    <title>Personal Info Form Page</title>

    <style>

        body {
            background-color: #f2f2f2;
            font-family: Arial, sans-serif;
        }

        form {
            width: 450px;               /* Makes form bigger */
            margin: 120px auto;         /* Center the form */
            padding: 40px;              /* Space inside form */
            background-color: white;
            border-radius: 10px;
            box-shadow: 0px 0px 15px gray;
        }

        input[type="text"] {
            width: 100%;                /* Full width input */
            height: 45px;               /* Bigger input box */
            font-size: 18px;            /* Bigger text */
            margin-bottom: 20px;
            padding-left: 10px;
        }

        input[type="password"] {
            width: 100%;                /* Full width input */
            height: 45px;               /* Bigger input box */
            font-size: 18px;            /* Bigger text */
            margin-bottom: 20px;
            padding-left: 10px;
        }

        input[type="submit"] {
            width: 100%;
            height: 50px;
            font-size: 18px;
            background-color: blue;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: darkblue;
        }

    </style>

</head>
</body>
</html>
