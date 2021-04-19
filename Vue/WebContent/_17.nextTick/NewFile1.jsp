<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>

	<div id="app">
		<button v-on:click="list.push(list.length+1)">추가</button>
		<ul ref="list">
			<li v-for="item in list">{{item}}</li>
		</ul>

	</div>
	<script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
	<script>
  
  new Vue({
	  el: '#app',
	  data:{
		  list:[]
	  },
	  watch:{
		  list:function(){
		       console.log('기본 출력:', this.$refs.list.offsetHeight)
		       
		       this.$nextTick(function(){
		    	   console.log('nextTick:', this.$refs.list.offsetHeight)
		       })
		  }//list
	  }//watch
	})
  </script>
</body>
</html>