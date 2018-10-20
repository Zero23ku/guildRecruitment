<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
    <head>
        <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />
    </head>
    <body>


    <div class="container">

        <div class="starter-template">
            <h1>Spring Boot Web JSP Example</h1>
            <h2>Messageeee: ${guildInfo}</h2>
            <h1>aaaaaaaaa ${test}</h1>
            <br>
            <p>
                ${guildProgression}
            </p>
        </div>

    </div>


    </body>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <script>
        $(document).ready(function(){
            var test = ${guildInfo};
            var test2 = ${guildProgression};
            console.log(test);
            console.log(test2)
        });
    </script>

</html>