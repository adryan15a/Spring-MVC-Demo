<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Registration Form</title>
</head>
<body>
	<form:form action="processForm" modelAttribute="student">
	
	First name:<form:input path="firstName"/>
	
	<br><br>
	
	Last name:<form:input path="lastName"/>
	
	<br><br>
	
	Country: 
	<form:select path="country"> 
	     <form:options items="${theCountryOptions}" />
	</form:select>
	<br><br>
	
	Favorite Language:
        
        <form:radiobuttons path="favoriteLanguage" items="${student.favoriteLanguageOptions}"  />
		
	<br><br>
	
	Operating Systems:
	
	Linux<form:checkbox path="operatingSystem" value="Linux"/>
	Mac OS<form:checkbox path="operatingSystem" value="Mac OS"/>
	Windows<form:checkbox path="operatingSystem" value="Windows"/>
	
	
	<br><br>
	
	<input type="submit" value="Submit"/>
	
	</form:form>





</body>
</html>