<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<script type="text/javascript">

function showContentBycatNameAndContentType(cat_type)
{
//                var date1 = document.getElementById("date-pick").value;
  var content_type = document.getElementById('content_type').value;
    document.getElementById("wait").innerHTML = "Please Wait....";
    var xmlhttp;

    if (window.XMLHttpRequest)
    {
        xmlhttp = new XMLHttpRequest();
    }
    else
    {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function ()
    {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
        {
            document.getElementById("wait").innerHTML = xmlhttp.responseText;
        }
    }
    xmlhttp.open("GET", "allCatAjax?cat=" + cat_type + "&content_type=" + content_type, true);
    xmlhttp.send();
}
</script>

<input id="content_type" name="content_type" type="hidden" value="${content_type}"/>


<section id="wall-head">
	<div style="margin: auto; max-width: 150px; width: 100%;">
	
	
	
		<select style="width: 100%; padding: 5px;" onchange="showContentBycatNameAndContentType(this.value)">
			<c:forEach items="${contentCat}" var="contentCat">
				<option value="${contentCat.cat_name}">
				<spring:message code="${contentCat.cat_name}" /></option>
			</c:forEach>

		</select>

	</div>

	</div>

</section>