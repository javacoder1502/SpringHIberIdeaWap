<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<c:forEach items="${contentDesc}" var="contentDesc">

	<section class="col-md-4 col-xs-4">
		<section class="left-pre">
			<a
				href="<c:url value= "/download?content_name=${contentDesc.content_prv}&cat_type=${content_type}" />"
				style="box-shadow: none;"> <img
				src="<c:url value="/resources/img-wap/9.jpg"  />" />

			</a>
		</section>
	</section>

</c:forEach>
