<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>增删改查</title>
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
		<div v-if="show">
		<input type="button" @click="toAdd" value="新增">
			<table>
				<tr>
					<td>编号</td>
					<td>姓名</td>
					<td>年龄</td>
					<td>性别</td>
					<td>操作</td>
				</tr>
				<tr v-for="(user,index) in users">
					<td>{{index}}</td>
					<td>{{user.name}}</td>
					<td>{{user.age}}</td>
					<td>{{user.sex==1?'男':'女'}}</td>
					<td>
						<a @click="toEdit(user)">修改</a>
						<a @click="del(index)">删除</a>
					</td>
				</tr>
			</table>
		</div>
		<div v-if="!show">
			姓名：<input v-model="user.name"><br>
			年龄：<input v-model="user.age"><br>
			性别： <input type="radio" value="1" v-model="user.sex">男
				  <input type="radio" value="0" v-model="user.sex">女<br>
			<button @click="Add" v-if="isEdit">添加</button>
			<button @click="Update" v-if="!isEdit">修改</button>
			<button @click="back">返回</button>
		</div>
	</div>
</body>
<script type="text/javascript">

	var app=new Vue({
		el:"#app",
		//属性
		data:{
			user:{},
			show:true,
			isEdit:true,
			users:[
			       	{name:'李四',age:'18',sex:'1'},
			       	{name:'张三',age:'19',sex:'0'},
			       	{name:'王五',age:'21',sex:'0'},
			       	{name:'赵六',age:'12',sex:'1'}
			       ]
		},
		methods:{
			toAdd(){
				this.show=false;
				this.isEdit=true;
			},
			back(){
				this.show=true;
			},
			Add(){
				this.users.push(this.user);
				this.show=true;
			},
			toEdit(user){
				this.user=user;
				this.show=false;
				this.isEdit=false;
			},
			Update(){
				this.show=true;
			},
			del(index){
				this.users.splice(index,1);
			}
		}
	})
</script>
</html>