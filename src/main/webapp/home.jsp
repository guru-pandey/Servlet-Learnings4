<html>

<body>

<!-- This page acts as Home Page after user submits their details -->
<!-- It shows a welcome message along with all information stored inside HttpSession -->
<!-- All data displayed here is retrieved from HttpSession object using session.getAttribute() method -->
<!-- session is a JSP implicit object which is automatically available in JSP pages -->

<div class="details-box">

    <h2> Welcome <%= session.getAttribute("userName") %> </h2>                                    <!-- session.getAttribute("userName") retrieves user's name stored earlier in HttpSession -->   <!-- In previous servlet we stored this value using session.setAttribute("userName", value) -->   <!-- JSP retrieves the stored value and prints it inside HTML -->

    <h3> Here's Your Details </h3>                                                      <!-- This heading simply tells user that below are the details stored in session -->

    <h3> Your Name: <%= session.getAttribute("userName") %> </h3>                       <!-- session.getAttribute("userName") fetches value stored inside HttpSession object -->  <!-- In previous servlet we stored it like: session.setAttribute("userName", value) -->  <!-- Here JSP retrieves that value and prints it on screen -->

    <h3> Your Email: <%= session.getAttribute("userEmail") %> </h3>                     <!-- session.getAttribute("userEmail") retrieves user's email stored earlier in session -->

    <h3> Your Phone Number: <%= session.getAttribute("userPhoneNo") %> </h3>            <!-- session.getAttribute("userPhoneNo") retrieves user's phone number stored in session -->

    <h3> Your University: <%= session.getAttribute("universityName") %> </h3>           <!-- session.getAttribute("universityName") retrieves university name entered by user in Education Form -->

    <h3> Your Degree: <%= session.getAttribute("degree") %> </h3>                        <!-- session.getAttribute("degree") retrieves user's degree entered in Education Form -->


</div>
</body>

<!-- All the below code inside head tag is for page title and styling & designing the welcome details page -->
<head>
    <title>Home Page</title>

    <style>

        body {
            background-color: #f2f2f2;
            font-family: Arial, sans-serif;
        }

        .details-box {
            width: 450px;               /* Makes details box bigger */
            margin: 120px auto;         /* Center the box on page */
            padding: 40px;              /* Space inside the box */
            background-color: white;
            border-radius: 10px;
            box-shadow: 0px 0px 15px gray;
            text-align: center;
        }

    </style>

</head>

</html>