
<html>
<head>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
  <%@ include file= "header.jsp"%> 

 </head>
 <body>
  <%@ include file= "nav.jsp"%>
  
  <div class="well well-big" >
 
  <div class="container">

            <div class="row">

                <div class="col-lg-8 col-lg-offset-2">

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <center><h1 style="color:white">Thank You For Order</h1></center>
	  <div class="content">
									<center> <div class="row">
									<div class="col-lg-8 col-lg-offset-2">
<!-- 									<table style="border: 1px solid black" > -->
<!--     <thead style="border: 1px solid black"> -->
<!--       <tr style="background-color: #eee"> -->
<!--       <th style="border: 1px solid black">Product Image</th> -->
<!--         <th style="border: 1px solid black">Product Name</th> -->
<!-- <!--         <th>Description</th> --> 
<!--         <th style="border: 1px solid black">Category Name</th> -->
<!--         <th style="border: 1px solid black">Seller Name</th> -->
<!--         <th style="border: 1px solid black">Price</th> -->
<!--       </tr> -->
<!--     </thead> -->
<!--     <tbody> -->
   
<%-- <%--     <c1:if test="${prot!=null}"> --%> 
<!--       <tr> -->
<%--         <td style="border: 1px solid black"><img src="<c:url value='/resource/images/${prot.getP_id()}.jpg'/>" width=150px height=200px></td> --%>
<%--         <td style="border: 1px solid black">${prot.getP_Name()}</td> --%>
<%-- <%--         <td>${product.getDes()}</td> --%> 
<%--         <td style="border: 1px solid black">${prot.getCategory().getCat_name()}</td> --%>
<%--         <td style="border: 1px solid black">${prot.getSeller().getName()}</td> --%>
<%--         <td style="border: 1px solid black">${prot.getPrice()}</td> --%>
<!--       </tr> -->
<%-- <%--       </c1:if> --%> 
<!--   </div> -->
<!--   </div> -->
</center></nav>
<marquee><h4>  <a href="<c:url value="/allproducts"/>">Cart More</a> </h4></marquee>
           
 
    </tbody>
</body>
</html>