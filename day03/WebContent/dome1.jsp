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
		const 	计算属性
	-->
<body>
	<div id="app">
		v-text:<span v-text="name"></span><br>
		v-html:<span v-html="name"></span><br>
		<input type="checkbox" value="java" v-model="lang">java<br>
		<input type="checkbox" value="ios" v-model="lang">ios<br>
		<input type="checkbox" value="php" v-model="lang">php<br>
		您选择的语言是{{lang.join(",")}}<br>
		<input type="text" v-on:keyup.13="submit">
		<div v-for="(user,index) in users" v-if="user.sex=='女'">
			{{index}}-{{user.name}}-{{user.sex}}-{{user.age}}
		</div>
		<div v-for="(value,key) in user">
			{{key}}:{{value}}
		</div>
		<button @click="show=!show">点击切换</button>
		<div v-if="show">你好</div>
		<div v-show="show">你好</div>
		<br>
		<!-- {{new Date(birthday).getFullYear()+"-"+new Date(birthday).getMonth()+"-"+new Date(birthday).getDay()}}
		 -->{{birth}}
	</div>
</body>
<script type="text/javascript">
	var app=new Vue({
		el:"#app",
		data:{
			name:"<h1>我是刘德华</h1>",
			lang:[],
			users:[
			     {name:'白凝冰',sex:'女',age:'18'},
			     {name:'黑楼兰',sex:'女',age:'19'},
			     {name:'凤九歌',sex:'男',age:'24'},
			     {name:'柳贯一',sex:'男',age:'21'},
			     {name:'梦求真',sex:'男',age:'20'},
			     
			       ],
			user:{name:'柳贯一',sex:'男',age:'21'},
		    show:true,
		    birthday:153564657765
		},
		methods:{
			submit(){
				alert("你回车了！");
			},
			/* birth(){
				return new Date(this.birthday).getFullYear()+"-"+new Date(this.birthday).getMonth()+"-"+new Date(this.birthday).getDay();
			} */
		},
		computed:{
			birth(){
				//const修饰的变量不能改变，var修改的可以被改变
				const d=new Date(this.birthday);
				return d.getFullYear()+"-"+d.getMonth()+"-"+d.getDay();
			}
		}
	})
</script>
</html>