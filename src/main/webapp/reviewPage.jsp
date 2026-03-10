<html>

<body>

<!-- This page shows all details entered by user in previous forms before final submission -->
<!-- All user data is retrieved from HttpSession object using session.getAttribute() method -->
<!-- session is JSP implicit object automatically available in JSP pages -->

<div class="review-box">

    <h2> Review Your Details, Before Proceed... </h2>

    <h3> User Name: <%= session.getAttribute("userName") %> </h3>                     <!-- session.getAttribute("userName") fetches value stored inside HttpSession object -->  <!-- In previous servlet we stored it like: session.setAttribute("userName", value) -->       <!-- Here JSP retrieves that value and prints it on screen -->

    <h3> User Email: <%= session.getAttribute("userEmail") %> </h3>                   <!-- session.getAttribute("userEmail") retrieves user's email stored earlier in session -->

    <h3> User Phone Number: <%= session.getAttribute("userPhoneNo") %> </h3>          <!-- session.getAttribute("userPhoneNo") retrieves user's phone number stored in session -->

    <h3> User University: <%= session.getAttribute("universityName") %> </h3>         <!-- session.getAttribute("universityName") retrieves university name entered by user in Education Form -->

    <h3> User Degree: <%= session.getAttribute("degree") %> </h3>                     <!-- session.getAttribute("degree") retrieves user's degree entered in Education Form -->

    <a href="home.jsp">Submit & Go to Home Page</a>                                     <!-- When user clicks this link, browser sends HTTP GET request to /Home -->   <!-- "/Home" is URL-pattern mapped with Home Servlet in web application -->   <!-- Browser URL example: http://localhost:8080/Servlet-Learnings4/Home -->  <!-- After clicking this link user will be redirected to Home Page -->

</div>

</body>






<!-- All the below code inside head tag is for page title and styling & designing the review page -->
<head>
    <title>Review Details Page</title>

    <style>

        body {
            background-color: #f2f2f2;
            font-family: Arial, sans-serif;
        }

        .review-box {
            width: 450px;               /* Makes review box bigger */
            margin: 120px auto;         /* Center the box on page */
            padding: 40px;              /* Space inside the box */
            background-color: white;
            border-radius: 10px;
            box-shadow: 0px 0px 15px gray;
            text-align: center;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            width: 100%;
            height: 50px;
            line-height: 50px;
            font-size: 18px;
            text-decoration: none;
            background-color: blue;
            color: white;
            border-radius: 5px;
        }

        a:hover {
            background-color: darkblue;
        }

    </style>

</head>

</html>