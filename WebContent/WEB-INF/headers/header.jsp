<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page pageEncoding="utf-8"%>



<section class="lang-view">
	<ul>
		<li><a href=${content_type}?lang=en style="display: inline;">English |</a></li>
		<li><a href=${content_type}?lang=hi style="display: inline;">हिंदी  |</a></li>
		<li><a href=${content_type}?lang=gu style="display: inline;">ગુજરાતી  |</a></li>
		<li><a href=${content_type}?lang=ta style="display: inline;">தமிழ் |</a></li>
		<li><a href=${content_type}?lang=te style="display: inline;">తెలుగు |</a></li>
		<li><a href=${content_type}?lang=kn style="display: inline;">ಕನ್ನಡ |</a></li>
		<li><a href=${content_type}?lang=ml style="display: inline;">മലയാളം |</a></li>
		<li><a href=${content_type}?lang=mr style="display: inline;">मराठी |</a></li>
		<li><a href=${content_type}?lang=bn style="display: inline;">বাঙালি |</a></li>
		<li><a href=${content_type}?lang=pa style="display: inline;">ਪੰਜਾਬੀ  |</a></li>
		<li><a href=${content_type}?lang=ur style="display: inline;">اردو </a></li>
   </ul>

</section>
<section class="search-engine">
	<section class="col-md-2 col-xs-2"></section>
	<section class="col-md-8 col-xs-8">
		<section class="search_area">
			<form class="navbar-form" role="search" method="post"
				action="search.jsp" name="search_form"
				onsubmit="return validateSearch()">
				<center>
					<div class="form-group">
						<input type="text" class="form-control sear" placeholder="Search"
							name="users_keyword">
						<button type="submit" class="btn btn-default sear_btn">
							<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
						</button>
					</div>
				</center>
			</form>
		</section>
	</section>
	<section class="col-md-2 col-xs-2"></section>
</section>
<section class="nav-area">
	<ul class="navi navbar">
		<li id="home"><a href="index" class="one" style="color: #fff;">
				<span><spring:message code="Home" /></span>
		</a></li>
		<li id="img"><a href="Wallpaper" class="one" style="color: #fff;">
				<span> <spring:message code="Wallpaper" />
			</span>

		</a></li>
		<li id="vid"><a href="Video" class="one" style="color: #fff;">
				<span> <spring:message code="Video" />
			</span>

		</a></li>
		<li id="anim"><a href="Animation" class="one"
			style="color: #fff;"> <span> <spring:message code="Animation" />
			</span>

		</a></li>
		<li id="game"><a href="Game" class="one" style="color: #fff;">
				<span> <spring:message code="Game" />
			</span>

		</a></li>

	</ul>
</section>
<section class="row">
	<div class="twPc-div">
		<a class="twPc-bg twPc-block"></a>
		
		
		<a class="twPc-avatarLink">

<img  class="twPc-avatarImg" src="<c:url value="/resources/img-wap/${content_type}.png"  />" />

</a>

		<div class="twPc-divUser">
			<section class="row">
				<section class="col-md-6 col-xs-4">
					<div class="twPc-divName">
						<a href="#">  <spring:message code="${content_type}" /></a>

					</div>
				</section>



				<div style="padding: 10px;">
					<input type="text" hidden="true" id="content_type"
						value="${content_type}">
                      <form:select path="lang_choose_option">
						<form:options items="${lang_choose_option}" />
					</form:select>
                    </div>


			</section>
		</div>