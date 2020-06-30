<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
		<input type="text" v-model="message"><br>
		<con></con>
		<con></con>
		<con></con>
	</div>
</body>
<script type="text/javascript">

	Vue.component("con",{
		template:'<button v-on:click="count++">你点了我{{count}}次，我记住了.</button>',
		//方法，这个方法必须有返回值
		data(){
			return {
				count : 0
			}
		}
	})
	const counter={
		template:'<button v-on:click="count++">你点了我{{count}}次，我记住了!</button>',
		//方法，这个方法必须有返回值
		data(){
			return {
				count : 0
			}
		}	
	}
	
	var app=new Vue({
		el:"#app",
		//属性
		data:{
			message:''
		},
		watch:{
			message(newVal,oldValue){
				console.log(newVal,oldValue);
			}
		}
		
	})
</script>
</html>