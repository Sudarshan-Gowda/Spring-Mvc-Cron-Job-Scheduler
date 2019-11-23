<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cron Job</title>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<link rel="icon"
	href="<c:url value="/resources/images/sudarshan-logo.png"/>" />
<link rel="shortcut icon"
	href="<c:url value="/resources/images/ico/favicon.ico"/>"
	type="image/x-icon">

<style type="text/css">
.page-title {
	font-family: 'Open Sans', sans-serif;
	font-style: normal;
	font-weight: 600;
	font-size: 24px;
	color: #4C4C4C;
}

.sub-title {
	font-family: 'Open Sans', sans-serif;
	font-style: normal;
	font-weight: 400;
	font-size: 20px;
	color: #4C4C4C;
}

.content-desc {
	font-family: 'Open Sans', sans-serif;
	font-style: normal;
	font-weight: 200;
	font-size: 14px;
	color: #4c4c4cbf;
}

.mt-1 {
	margin-top: 1rem !important;
}

.mb-2, .my-2 {
	margin-bottom: 0.5rem !important;
}

#customers {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#customers td, #customers th {
	border: 1px solid #ddd;
	padding: 8px;
}

#customers tr:nth-child(even) {
	background-color: #f2f2f2;
}

#customers tr:hover {
	background-color: #ddd;
}

#customers th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	background-color: #4CAF50;
	color: white;
}
</style>

</head>

<body>
	<div id="fullpage">
		<div class="header">

			<%@include file="../views/common/welcome-header.jspf"%>

		</div>

		<div>
			<%@include file="../views/common/message.jspf"%>
		</div>




		<div class="container">
			<div class="row">
				<div class="col-6 mt-4">
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">

							<li class="breadcrumb-item" style="color: blue;">Basic
								Example of Cron Job Scheduler in Java</li>
						</ol>
					</nav>
				</div>

				<div class="col-1"></div>
			</div>
		</div>

		<div class="container">
			<div class="row">

				<div class="col-7">
					<div class="page-title">Cron Job Configuration Details:</div>
				</div>

				<div class="col-12" style="margin-top: 20px;">
					<div>
						<div class="sub-title">Introduction</div>
						<div class="content-desc">
							<p>Cron enables user to schedule task to run periodically at
								specified date/time. It a great tool which reduces the lot of
								process that needs to be done by human</p>
						</div>
					</div>

					<div style="margin-top: 30px;">
						<div class="sub-title">Configuration</div>
						<div class="content-desc">
							<p>
								Let's understand the cron expression; it consists of six fields:
								<br>
								<code class="bash plain">&lt;second&gt; &lt;minute&gt;
									&lt;hour&gt; &lt;day-of-month&gt; &lt;month&gt;
									&lt;day-of-week&gt; &lt;year&gt;</code>
							</p>
							<p></p>
						</div>
					</div>


					<div style="margin-top: 30px;">
						<div class="sub-title">Cron Expression</div>
						<div class="content-desc">
							<p>Let us see some examples of cron expression by using the
								fields and specials characters combinations:</p>

							<table id="customers">
								<thead>
									<tr>
										<th>Description</th>
										<th>Expression</th>
									<tr>
								</thead>
								<tbody>
									<tr>
										<td>To Run Every Second:</td>
										<td>* * * * * ?</td>
									<tr>
									<tr>
										<td>To Run Every 5 Seconds:</td>
										<td>*/5 * * * * ?</td>
									<tr>
									<tr>
										<td>To Run Every Minute:</td>
										<td>0 * * * * ?</td>
									<tr>
									<tr>
										<td>At 12:00 pm (noon) every day:</td>
										<td>0 0 12 * * ?</td>
									<tr>
									<tr>
										<td>At 11:00 pm mid night every day:</td>
										<td>0 0 23 * * ?</td>
									<tr>
									<tr>
										<td>Every minute starting at 1 pm and ending on 1:05 pm,
											every day:</td>
										<td>0 0-5 13 * * ?</td>
									<tr>
								</tbody>
							</table>

						</div>
					</div>

				</div>

			</div>
		</div>


		<div class="container" style="margin-top: 50px;">
			<div class="row">

				<div class="col-7">
					<div class="page-title">View the Cron running details:</div>
				</div>

				<div id="fileDnDiv" class="col-12 row" style="margin-top: 25px;">

					<div class="col-12">
						<div class="border-bottom mt-1 mb-2"></div>
					</div>

					<div class="col-sm-12">
						<a href="${pageContext.request.contextPath}/refresh"
							class="btn btn-info">Refresh</a>
					</div>

					<ul>
						<c:forEach var="log" items="${getCronLog}" varStatus="loop">
							<li>${log.value}</li>
						</c:forEach>
					</ul>

				</div>


			</div>
		</div>


		<div>
			<div class="col-lg-12 col-sm-12 col-xs-12 copyrights">
				<%@include file="../views/login-footer.jsp"%>
			</div>
		</div>

	</div>

</body>
</html>