<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<!-- 
  
 -->
 <div id="app">
  <comp-child v-for="item in list"
              v-bind:key="item.id"
              v-bind:name="item.name"
              v-bind:hp="item.hp"></comp-child>
 
</div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
  Vue.component('my-component',{
	  template:'<p><comp-child></comp-child></p>'
  })
   Vue.component('comp-child',{
	  template:'<li>{{name}} HP.{{hp}}</li>',
	  props:['name','hp']
  })
  new Vue({
	  el:"#app",
	  data:{
		  list:[
			  {id:1, name:'슬라임',hp:100},
			  {id:2, name:'고블린',hp:200},
			  {id:3, name:'드래곤',hp:500}
		  ]
	  }
  })
  </script>
</body>
</html>