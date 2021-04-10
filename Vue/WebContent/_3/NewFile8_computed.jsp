<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
  <div id="app-8">
  
  </div>
  <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
  <script>
  Vue.component('todo-item', {
	  props: ['todo'],
	  template: '<li>{{ todo.text }}</li>'
	})

	var app7 = new Vue({
	  el: '#app-8',
	  computed:{
		  computedMessage:function(){
			  return this.message + '!'  //함수로 인해 산출되는 데이터로 이 데이터를 '산출속성'이라고 합니다.
		  }
	  }
	})
  </script>
</body>
</html>