<%@ page language="java" isELIgnored="false" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String root = request.getContextPath();
	String openid ;
	openid = request.getParameter("openid");
	if(openid == null){
		openid = (String)request.getAttribute("openid");
	}
%>
<html ng-app="app">
<head>
<meta charset="UTF-8">
<base href="<%=root%>/teacher/bind/bind.jsp"/>
<jsp:include page="../../static/base.jsp"></jsp:include>
<title>教职工微信绑定中心</title>
<script type="text/javascript" src="js/controller.js"></script>
<script type="text/javascript" src="js/service.js"></script>
</head>
<body ng-controller="controller">
<div class="container">
	<div class="row">
	<p ><h3 class="text-center">教职工个人信息绑定</h3></p>
	<div class="center-block col-md-12">
		<img src="<%=root%>/teacher/images/bind.png"  class="img-thumbnail img-responsive"  style="max-height: 300px;margin: 0 auto;display: block;">
		<br />
		<form name="bindform" class="form-horizontal">
		  <div class="form-group">
		    <div class="col-md-12">
		    	<input type="hidden" name="openid" ng-model="user.openid" ng-init="user.openid='<%=openid%>'" >
		        <input type="text" class="form-control" name="username" placeholder="职工号" ng-model="user.username" required>
		    </div>
		  </div>
		  <div class="form-group">
		    <div class="col-md-12">
		      <input type="password" class="form-control" name="password" ng-model="user.password" placeholder="登录密码" required>
		    </div>
		  </div>
		  <div ng-show="(!bindform.username.$valid && !bindform.username.$pristine) || (!bindform.password.$valid && !bindform.password.$pristine)" class="form-group">
		    <div class="col-md-12">
		     	<div class="bg-danger text-danger small" style="padding:10px 15px;">
					<div ng-show="!bindform.username.$valid && !bindform.username.$pristine" >* 职工号不能为空</div>
					<div ng-show="!bindform.password.$valid && !bindform.password.$pristine">* 密码不能为空</div> 
				</div>
		    </div>
		  </div>
		  <div class="form-group" ng-show="binding_goingon">
		    <div class="col-md-12">
		      <div class="bg-warning text-warning" style="padding:8px 15px;">
				<span>
					<i class="fa fa-spinner fa-spin"></i>
				</span> 绑定中...
			  </div>
		    </div>
		  </div>
		  <div class="form-group">
		    <div class="col-md-12">
		  		<input type="submit" ng-hide="binding_goingon || binding_success" class="btn btn-success btn-block" ng-disabled="!bindform.$valid" ng-click="submit(user)" value="绑定" >
		    </div>
		  </div>
		</form>
	</div>
	</div>
</div>
</body>
</html>