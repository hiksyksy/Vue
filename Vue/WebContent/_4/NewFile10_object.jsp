<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%-- 객체 데이터 전달하기 예제 입니다. 
 
     class 속성은 값이 겹치는 경우 그 대로 추가 되었지만 
     style 속성은 값이 겹치는 경우 바인드 된 스타일이 적용되었습니다.
    <div id="app-5">
          <p class="child">Text</p> 
          <p style="color: red; background-color: lightgray;">Text</p>
    </div>
 --%>
  <div id="app-5">
    <p v-bind:class="classObject">Text</p>
    <p v-bind:style="styleObject">Text</p>
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
	    classObject:{
	    	child:true,
	    	'is-active':false
	    },//classObject
	    styleObject:{
	    	color:'red',
	    	backgroundColor:'lightgray'
	    }
	    
	  }
	})
  </script>
</body>
</html>