<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>组件通讯</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/vue.js"></script>
</head>
<!-- 	v-model	双向绑定
		v-for	循环
		v-if	判断
		v-show	展示
		computed计算属性
	-->
<body>
	<div id="app">
		<!-- v-bind -->
		<con :李四="msg"></con>
	</div>
</body>
<script type="text/javascript">
	//全局组件
	Vue.component("con",{
		template:'<h1>{{李四}}</h1>',
		props:['李四']
		
	})
	
	
	var app=new Vue({
		el:"#app",
		//属性
		data:{
			msg:'刘德华'
		}
	})
</script>
</html>