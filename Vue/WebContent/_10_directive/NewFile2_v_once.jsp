<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%--
  v-pre 디렉티브 : 탬플릿 컴파일 생략하기
  자식 컴포넌트를 포함한 내부의 HTML을 컴파일하지 않고 정적 콘텐츠로 다룰 때 사용합니다.
  
  <div id="app"><a href="list">Hello안녕하세요 Vue!</a></div>
  
  한 번만 렌더링된 후 message 속성이 변경되어도 DOM은 변경되지 않습니다.
 --%>
  <div id="app">
    <a v-bind:href="url" v-once>Hello{{message}}</a>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
  var app = new Vue({
	  el: '#app',
	  data: {
	    message: '안녕하세요 Vue!',
	    url:"list"
	  }
	})
  </script>
</body>
</html>