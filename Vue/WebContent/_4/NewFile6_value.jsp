<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
  <div id="app-5">
  <!--  -->
  <p>{{ message.length>=10 ? '10글자이상':'10글자 미만' }}</p>
  <input v-model="message"><%--Vue는 또한 양식에 대한 입력과 앱 상태를 양방향으로 바인딩하는 v-model 디렉티브를 제공합니다. --%>
  <p>
     입력한 값이 value 속성에 그대로 출력되나요?(value="{{message}}")<br>
     <input type="text" value="{{message}}">
  </p>
  
  <p>
     입력한 값을 value 속성에 그대로 출력하기 위해  v-bind:value="message" 사용합니다.<br>
     <input type="text" v-bind:value="message">
  </p>
  
   <p>
     v-bind생략하고 value 앞에 :만 작성해도 됩니다.( :value="message")<br>
     <input type="text" :value="message">
  </p>
  
  <p>
    현재 데이터 전체의 상태를 JSON 형식으로 화면에 출력됩니다.<br>
    {{$data}}
  </p>
  
</div>
  <!-- 개발버전, 도움되는 콘솔 경고를 포함. -->
  <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
 <%--
  1. 마운트 : 배치할 요소와 애플리케이션을 연결하는 것을 의미합니다.
  2. el : 마운트할 요소를 작성합니다. 선택자 형태로 지정합니다.
  3. data :  애플리케이션에서 사용할 데이터를 나타내고 객체 또는 배열로 지정합니다.
  --%>
  <script>
  var app6 = new Vue({
	  el: '#app-5',  
	  data: {
	    message: '안녕하세요 Vue!'
	  }
	})
  </script>
</body>
</html>