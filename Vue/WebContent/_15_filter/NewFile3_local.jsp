<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%--
 1.필터란 문자 수를 반올림하거나 쉼표를 넣는 등의 텍스트 기반 변환 처리에 특화된 기능입니다.
 (1) 로컬로 등록 - this 사용하지 않습니다.
 (2) 전역에 등록
   
 2. 출력방법
 (1) Mustache로 사용하는 경우
    {{대상 데이터 | 필터 이름}}
 (2) v-bind로 사용하는 경우
    <div v-bind:id="대상 데이터 | 필터 이름"></div>     
 --%>
 <div id="app">
   {{ message | filter(foo,100)}}  
</div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
  new Vue({
	  el: '#app',
	  data: {
	    message: "사랑합니다.",
	    foo:"많이"
	  },
	  filters: {
	    filter: function (message, foo, num) { // message | filter(foo,100) 에서
	    	                                   // function()의 첫번째 매개변수에는 대상데이터,
	    	                                   //두번째 매개변수에는 필터이름에 작성한 첫번째 매개변수
	    	                                   //세번째 매개변수에는 필터이름에 작성한 두번째 매개변수가 전달됩니다.
           console.log(message,foo,num)
	    }
	  }
	})
  </script>
</body>
</html>