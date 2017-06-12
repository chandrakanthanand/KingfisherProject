<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>


 <%@ include file= "header.jsp"%> 
 <%@ include file= "nav.jsp"%>
<!--
Lower Header Section 
--><body >
<div class="container">
<div id="gototop"> </div>
<header id="header">
<div class="row">
	<div class="span4">
	<h1>
	<a class="logo" href="index.jsp"><span></span> 
		<img src="${img}/logo-bootstrap-shoping-cart.png" alt="bootstrap sexy shop">
	</a>
	</h1>
	</div>
	<div class="span4">
	
	</div>
	<div class="span4 alignR">
	<p><br> <strong> Support (24/7) : 7204241401  </strong><br><br></p>
	 <a href="<c:url value="/viewcart"/>"    class="cart-button">
	<span class="btn btn-mini">${items} <span class="icon-shopping-cart"></span></span>
	
	<form  class="navbar-search pull-left">
			  <input type="text" placeholder="Search" class="search-query span2">
			</form>
	</div>
</div>
</header>

<!--
Navigation Bar Section 
-->
<div class="navbar">
	  <div class="navbar-inner">
		<div class="container">
		  <a data-target=".nav-collapse" data-toggle="collapse" class="btn btn-navbar">
		<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		  </a>
		  <div class="nav-collapse">
			<ul class="nav">
			  <li class="active"><a href="<c:url value="/"/>"><span class="icon-home"></span>HOME	</a></li>
			  <li class=""><a href="<c:url value="/allproducts"/>">PRODUCTS</a></li>
			  <c1:if test="${pageContext.request.userPrincipal.name!= null}">
		<security:authorize access="hasRole('ROLE_ADMIN')">
			  <li class=""><a href="<c:url value="/product"/>">ADD PRODUCT</a></li>
			  <li class=""><a href="<c:url value="/category"/>">ADD CATEGORY</a></li>
			   <li class=""><a href="<c:url value="/seller"/>">ADD SUPPLIER</a></li>
			 </security:authorize>
			 </c1:if>
			</ul>
			
			
			${msg}
					<c1:if test="${logout!=null}">${logout} 
					</c1:if>
					<c1:if test="${pageContext.request.userPrincipal.name== null}">
			<c1:url value="/j_spring_security_check"  var="a"/>
			<ul class="nav pull-right">
			<li class="dropdown">
				<a data-toggle="dropdown" class="dropdown-toggle" href=""><span class="icon-lock"></span> Login <b class="caret"></b></a></c1:if>
				<div class="dropdown-menu">
				<form:form class="form-horizontal loginFrm" action="${a}" method="post">

				  <div class="control-group">
					<input type="text" class="span2" id="inputEmail" placeholder="Email" name="j_username">
				  </div>
				  <div class="control-group">
					<input type="password" class="span2" id="inputPassword" placeholder="Password" name="j_password" >
				  </div>
				  <div class="control-group">
					<label class="checkbox"> 
					<input type="checkbox"> Remember me
					</label>
					<input type="submit" class="shopBtn btn-block" value="Sign in">
				  </div>
				</form:form>
				</div>
			</li>
			</ul>
		  </div>
		</div>
	  </div>
	</div>
<!-- 
Body Section 
-->
			

		<div class="span9">
    <ul class="breadcrumb">
    <li><a href="index.html">Home</a> <span class="divider">/</span></li>
    <li><a href="products.html">Items</a> <span class="divider">/</span></li>
    <li class="active">Preview</li>
    </ul>	
	
	<div class="well well-small">
	<div class="row-fluid">
			<div class="span5">
			<div id="myCarousel" class="carousel slide cntr">
                <div class="carousel-inner">
                  <div class="item active">
                   <img src="${img}/${product.getP_id()}.jpg" alt="bootstrap-ring"></a>
                  </div>
                  <div class="item">
                     <a href="#"> <img src="assets/img/b.jpg" alt="" style="width:100%"></a>
                  </div>
                  <div class="item">
                    <a href="#"> <img src="assets/img/e.jpg" alt="" style="width:100%"></a>
                  </div>
                </div>
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">‹</a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">›</a>
            </div>
			</div>
			<div class="span7">
				<h3>PRICE ${product.getPrice()}</h3>
				<hr class="soft"/>
				
				<form class="form-horizontal qtyFrm">
				  <div class="control-group">
					<label class="control-label"><span>${product.getP_Name() }</span></label>
					
				  </div>
<!-- 				 <div class="control-group"> -->
<%-- 					<label class="control-label"><span>${product.getDes()}</span></label> --%>
					
<!-- 				  </div> -->
				  
				  
			
				  
				  <button type="submit" class="shopBtn"><span class=" icon-shopping-cart"></span><a href="<c:url value="/addtocart/${product.getP_id()}"/>"> Add to cart</button>
		</a>		</form>
			</div>
			</div>
				<hr class="softn clr"/>


            
            
<a href="#" class="gotop"><i class="icon-double-angle-up"></i></a>
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/jquery.easing-1.3.min.js"></script>
    <script src="assets/js/jquery.scrollTo-1.4.3.1-min.js"></script>
    <script src="assets/js/shop.js"></script>
  </body>
</html>