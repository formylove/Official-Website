<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<fmt:setBundle basename="config" var="conf" />
<script type="text/javascript">
baseUrl='<spring:eval expression="@propertyConfigurer.getProperty('baseUrl')" />';
</script>
<base href='<spring:eval expression="@propertyConfigurer.getProperty('baseUrl')" />'/>
<link rel="stylesheet" href="css/nav.css">
<link rel="stylesheet" href="css/footer.css">
<script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
<script src="js/main.js"></script>
<link href="img/favicon.ico" rel="shortcut icon" >