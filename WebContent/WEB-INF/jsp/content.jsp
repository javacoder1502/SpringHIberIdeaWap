<%@ page pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>


<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="<c:url value="/resources/css-wap/bootstrap.css"  />"
	rel="stylesheet" type="text/css">
<link href="<c:url value="/resources/css-wap/hover.css" />"
	rel="stylesheet" type="text/css">
<link href="<c:url value="/resources/css-wap/style.css" />"
	rel="stylesheet" type="text/css">
<title>wap-55556</title>
</head>

<body>
	<section class="container">
		<section class="contest_area">

			<jsp:include page="/WEB-INF/headers/header.jsp" />

			<jsp:include page="/WEB-INF/headers/cat_list.jsp" />


			<section class="port">
				<section class="row">

					<div id="wait">

						<c:forEach items="${contentDesc}" var="contentDesc">

							<section class="col-md-4 col-xs-4">
								<section class="left-pre">
									<a
										href="<c:url value= "/download?content_name=${contentDesc.content_prv}&cat_type=${content_type}" />"
										style="box-shadow: none;"> 
										
										 <img src="<c:url value="../m4u/CMS/Preview/${contentDesc.content_prv}" />"/> 

									</a>
								</section>
							</section>


						</c:forEach>

					</div>

				</section>

			</section>
		
			
			
			<section class="footer">
			<spring:message code="Copyright@2016" />
				
			</section>
		</section>
	</section>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="<c:url value="/resources/js-wap/bootstrap.js" />"
		type="text/javascript"></script>
</body>
</html>
