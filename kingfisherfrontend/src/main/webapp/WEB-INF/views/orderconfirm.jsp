
<html>
<head>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
  <%@ include file= "header.jsp"%> 

 </head>
 <body>
  <%@ include file= "nav.jsp"%>
  <div class="container">
  <div class="well well-big" >
 
  

            <div class="row">
            <div class="span15">

                <div class="col-lg-8 col-lg-offset-2">
<center>
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-10 clearfix" id="checkout">

<!--                         <div class="box"> -->
                            <form method="post" action="shop-checkout4.html">
                                <ul class="nav nav-pills nav-justified">
                                    <li><a href="<c:url value="/previous"/>"></a><i class="fa fa-map-marker"></i><br>Billing Adress</a></li>
                                    <li class="active"><a href="<c:url value="/pay"/>"><i class="fa fa-money"></i><br>Confirm Your Order</a></li>
                                    <li class="disabled"><a href="<c:url value="/orderconfirmation"/>"><i class="fa fa-eye"></i><br>Shipment Address</a></li>
                                </ul>

<!--                                 <div class="container"> -->
<!--                                    <div class="row"> -->
                                       
<!--                                             <div class="box payment-method"> -->
											<center>
                                                <h4>Billing Address</h4>
                                                <table class="table" style="border: 1px solid black; border-collapse: collapse;">
                                               
		                                     <tr style="border: 1px solid black; border-collapse: collapse;"><td style="border: 1px solid black; border-collapse: collapse;">   <p>Email: </p></td>
		                                     <td style="border: 1px solid black; border-collapse: collapse;">   <p>${billing.getEmail() } </p></td></tr>
                                             <tr style="border: 1px solid black; border-collapse: collapse;padding: 15px">  <td style="border: 1px solid black; border-collapse: collapse;"> <p>Phone: </p></td>
                                             <td style="border: 1px solid black; border-collapse: collapse;"> <p>${billing.getPhone()} </p></td></tr>
                                              <tr style="border: 1px solid black; border-collapse: collapse;"> <td style="border: 1px solid black; border-collapse: collapse;"> <p>City: </p></td>
                                              <td style="border: 1px solid black; border-collapse: collapse;"> <p>${billing.getCity()} </p></td></tr>
                                                <tr style="border: 1px solid black; border-collapse: collapse;"><td style="border: 1px solid black; border-collapse: collapse;"><p>Country: </p></td>
                                                <td style="border: 1px solid black; border-collapse: collapse;"><p>${billing.getCountry()} </p></td></tr>
                                               <tr style="border: 1px solid black; border-collapse: collapse;"><td style="border: 1px solid black; border-collapse: collapse;"> <p>House Number: </p></td>
                                               <td style="border: 1px solid black; border-collapse: collapse;"> <p>${billing.getHouseno()} </p></td></tr>
                                                <tr style="border: 1px solid black; border-collapse: collapse;"><td style="border: 1px solid black; border-collapse: collapse;"><p>Pin Code :</p></td>
                                                <td style="border: 1px solid black; border-collapse: collapse;"><p>${billing.getPincode()}</p></td></tr>
                                                 <br></center>
                                           </table>
                                        </div>
                                        <div class="col-sm-6">
<!--                                             <div class="box payment-method"> -->
											<center>
                                                <h4>Shipment Address</h4>
                                               <table class="table" style="border: 1px solid black; border-collapse: collapse;">
                                               <tr style="border: 1px solid black; border-collapse: collapse;"><td style="border: 1px solid black; border-collapse: collapse;">Name:</td> <td style="border: 1px solid black; border-collapse: collapse;"><p>${shippingAddress.getFirstname()}  ${shippingAddress.getLastname()}.</p></td></tr>
                                                <tr style="border: 1px solid black; border-collapse: collapse;"><td style="border: 1px solid black; border-collapse: collapse;"><p>Email:</td><td style="border: 1px solid black; border-collapse: collapse;">${shippingAddress.getEmail()} .</p></td></tr>
                                               <tr style="border: 1px solid black; border-collapse: collapse;"><td style="border: 1px solid black; border-collapse: collapse;"> <p>Phone:</td><td style="border: 1px solid black; border-collapse: collapse;">${shippingAddress.getMono()} .</p></td></tr>
                                                <tr style="border: 1px solid black; border-collapse: collapse;"><td style="border: 1px solid black; border-collapse: collapse;"><p>City:</td><td style="border: 1px solid black; border-collapse: collapse;">${shippingAddress.getCity()} .</p></td></tr>
                                               <tr style="border: 1px solid black; border-collapse: collapse;"><td style="border: 1px solid black; border-collapse: collapse;"> <p>Country:</td><td style="border: 1px solid black; border-collapse: collapse;">${shippingAddress.getCountry()} .</p></td></tr>
                                               <tr style="border: 1px solid black; border-collapse: collapse;"><td style="border: 1px solid black; border-collapse: collapse;"> <p>House Number:</td><td style="border: 1px solid black; border-collapse: collapse;">${shippingAddress.getHouseno()} .</p></td></tr>
                                                <tr style="border: 1px solid black; border-collapse: collapse;"><td style="border: 1px solid black; border-collapse: collapse;"><p>Pin Code :</td><td style="border: 1px solid black; border-collapse: collapse;">${shippingAddress.getPincode()}</p></td></tr>
                                                
                                            
                                            </div>
                                        </div>
</center>
                                        
                                        </div>
                                    </div>
									
                                    <!-- /.row -->
									<div class="content">
									<div class="row">
									<div class="col-lg-8 col-lg-offset-2">
									<table style="border: 1px solid black" >
    <thead style="border: 1px solid black">
      <tr style="background-color: #eee">
      <th style="border: 1px solid black">Product Image</th>
        <th style="border: 1px solid black">Product Name</th>
<!--         <th>Description</th> -->
        <th style="border: 1px solid black">Category Name</th>
        <th style="border: 1px solid black">Seller Name</th>
        <th style="border: 1px solid black">Price</th>
      </tr>
    </thead>
    <tbody>
   
    <c1:if test="${prot!=null}">
      <tr>
        <td style="border: 1px solid black"><img src="<c:url value='/resource/images/${prot.getP_id()}.jpg'/>" width=150px height=200px></td>
        <td style="border: 1px solid black">${prot.getP_Name()}</td>
<%--         <td>${product.getDes()}</td> --%>
        <td style="border: 1px solid black">${prot.getCategory().getCat_name()}</td>
        <td style="border: 1px solid black">${prot.getSeller().getName()}</td>
        <td style="border: 1px solid black">${prot.getPrice()}</td>
      </tr>
      </c1:if>
    <c1:if test="${prot==null}">
     <c1:forEach items="${cartItems}" var="c1">
      <tr>
        <td style="border: 1px solid black"><img src=""></td>
        <td style="border: 1px solid black">${c1.getProduct().getP_Name()}</td>
<%--         <td>${c1.getproduct.getDes()}</td> --%>
        <td style="border: 1px solid black">${c1.getProduct().getCategory().getCat_name()}</td>
        <td style="border: 1px solid black">${c1.getProduct().getSeller().getName()}</td>
        <td style="border: 1px solid black">${c1.getProduct().getPrice()}</td>
      </tr>
      </c1:forEach>
      </c1:if>
   

  </tbody>
 </table>
     <p calss="pull-left">Total price=Rs${prot.getPrice()}</p>
			<h2> Order will Be deliverde to You with in 7 busisness days</h2>						
			</div>
									</div>
									</div>
                                <div class="box-footer">
                                         <div class="pull-left">
                                        <a href="<c:url value="/previous"/>" class="btn btn-default"><i class="fa fa-chevron-left"></i>previous</a>
                                        </div>
                                         <div class="pull-right">
                                        <a href="<c:url value="/pay"/>"  class="btn btn-template-main"><i class="fa fa-chevron-right">Pay</i></a>
                                        </button>
                                        </div>
                                     </div>
                                </div>
                                <!-- /.content -->
                                
                                

    </div>

    



</body>

</html>