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
			  return this.message + '!'  //�Լ��� ���� ����Ǵ� �����ͷ� �� �����͸� '����Ӽ�'�̶�� �մϴ�.
		  }
	  }
	})
  </script>
</body>
</html>