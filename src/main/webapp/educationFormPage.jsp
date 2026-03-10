<html>
<body>

<form action="nextToReviewPage" method="post">                             <!-- action="nextToReviewPage" → "nextToReviewPage" is the URL-pattern of Servlet. When user clicks submit button, browser sends HTTP POST request to http://localhost:8080/Servlet-Learnings4/nextToReviewPage--> <!-- "Servlet-Learnings4" is Context Path (Project name) and "/nextToReviewPage" is mapped with Servlet class (like MyServlet) --> <!-- method="post" tells browser to send form data inside HTTP POST request body, so request will be handled inside doPost() method -->

    Enter Your University Name: <input type="text" name="university">            <!-- name="university" is Parameter name (key). Whatever user types here, browser sends it as key-value pair like university=MGKVP university -->  <!-- In Servlet, we retrieve this value using request.getParameter("university") -->
    <br>

    Enter Your Degree: <input type="text" name="degree">          <!-- name="degree" is Parameter name (key). Whatever user types here, browser sends it as key-value pair like degree=BCA -->  <!-- In Servlet, we retrieve this value using request.getParameter("degree") -->
    <br>                                                         <!-- <br> tag for break current line and change line -->


    <input type="submit" value="Next">                                 <!-- When user clicks Next button: Browser collects all input data, creates HTTP POST request and sends it to /nextToExperienceForm servlet URL -->  <!-- Tomcat(as web server) receives that request and send it to Tomcat(as servlet-container). Now tomcat(as servlet-container) receives request, creates HttpServletRequest and HttpServletResponse objects and calls doPost() method of mapped Servlet -->

</form>


<!-- All the below code is for styling & designing the form-->
<head>
    <title>Education Details Form Page</title>

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
