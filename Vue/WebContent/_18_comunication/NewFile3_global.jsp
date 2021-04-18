<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<!-- 
     아이디 속성은 부모값이 클래스는 추가되었습니다.
   <p id="parent" class="child parent">ChildComponent</p>
 -->
 <div id="app">
  <comp-child id="parent" class="parent"></comp-child>
 
</div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
  Vue.component('my-component',{
	  template:'<p><comp-child></comp-child></p>'
  })
  Vue.component('comp-child',{
	  template:'<p id="child" class="child">ChildComponent</p>'	 
  })
  new Vue({
	  el:"#app"
  })
  </script>
</body>
</html>