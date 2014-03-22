<!DOCUMENT HTML>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
	<meta charset="utf-8">
		<link rel="stylesheet" type="text/css" href="../css/main.css">
		<link rel="stylesheet" type="text/css" href="../css/createuser.css">
		<title>Create user.</title>
	</head>
	<body>
	<div id="layer-1">
        <form id="create"  action="/save" method="post">
	<div id="layer-2">
        <input type="hidden" name="oldEmail" value="${user.email}"/>
	 <input id="input-1" type="text" name="login" value="${user.email}">
 	 <input id="input-2" type="text" name="password" value="${user.password}">
 	 <input id="input-3" type="text" name="firstName" value="${user.firstName}">
	 <input id="input-4" type="text" name="lastName" value="${user.lastName}">
	 <p id="radio-1"><input type="radio" id="input-5" value="rad1">Admin<Br>
   <input type="radio" id="input-5" value="rad2"> User<Br></p>
	 <p id="text-1">Login :</p>
	 <p id="text-2">Password :</p>
	 <p id="text-3">First Name :</p>
	 <p id="text-4">Last Name :</p>
	 <p id="text-5">Role :</p>
	</div>
            <div id="layer-4">

                <form id="button-all" method="post" action="/save">
                    <button id="button-2" type="submit" name="button">Back</button>
                </form id="button-all" method="post" action="/save">
            <button id="button-3" type="submit" name="button">Save</button>
                </div>
        </form>
	</div>
  
	</body>
</html>