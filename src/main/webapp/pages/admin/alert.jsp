<%--
  Created by IntelliJ IDEA.
  User: Pc
  Date: 2/10/2023
  Time: 12:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<body>
<div class="alert alert-primary alert-dismissible show fade">
    <div class="alert-body">
        <button class="close" data-dismiss="alert">
            <span>&times;</span>
        </button>
        ${cateModel.message}
    </div>
</div>

<script>
    iziToast.success({
        title: 'Hello, world!',
        message: 'This ' + ${cateModel.message} + 'iziToast',
        position: 'topRight'
    });
</script>


<c:set var = "salary" scope = "session" value = "${2000*2}"/>
<c:out value = "${salary}"/>
<h2>Hello World!</h2>
</body>