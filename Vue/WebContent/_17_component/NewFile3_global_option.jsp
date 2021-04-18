<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>

 <div id="app">
   <my-component></my-component>
</div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
  Vue.component('my-component',{
	  template:'<p>MyComponent-global</p>',
	  data:function(){  //데이터는 객체를 리턴하는 함수로 지정합니다.
		                //여러 컴포넌트 인스턴스들이 같은 객체를 참조해서 상태가 공유되는 것을 회피하기 위함입니다.
		  return {
		  message:'Hello Vue.js'
	  }
	  },
	  methods:{
		  //메서드, computed, watcher의 정의 방법은 루트 생성자 객체와 같습니다.
	  }
  })
  new Vue({
	  el:"#app"
  })
  </script>
</body>
</html>