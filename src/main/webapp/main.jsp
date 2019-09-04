<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <%@ include file="js_css.jsp" %>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Medical IoT Platform</title>
</head>
<body>
<%@ include file="header.jsp" %>

<div class="row">
    <div class="col-md-10 col-md-offset-1">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <h1 class="text-center login-title">Save investigation for a patient using his unique identifier</h1>
            <div class="account-wall">
                <form class="form-signin" method="post" action="sendInv">
                    <input type="text" class="form-control" id="uniqueId" name="uniqueId" placeholder="Patient Unique Id" required autofocus>
                    <input class="btn btn-lg btn-primary btn-block" type="submit" name="ekg" value="Save EKG">
                    <input class="btn btn-lg btn-primary btn-block" type="submit" name="xray" value="Save X-RAY">
                    <input class="btn btn-lg btn-primary btn-block" type="submit" name="eeg" value="Save EEG">
                </form>
            </div>
        </div>
    </div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>