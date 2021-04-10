<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%-- class 속성은 값이 겹치는 경우 그 대로 추가 되었지만 
     style 속성은 값이 겹치는 경우 바인드 된 스타일이 적용되었습니다.
    <div id="app-5">
        <p class="child child is-active">Text</p> 
        <p style="color: red; background-color: lightgray;">Text</p>
        <p style="color: red; background-color: lightgray;">Text</p>
    </div>
 --%>
  <div id="app-5">
    <p class="child" v-bind:class="{child:isChild, 'is-active':isActive}">Text</p>
    <p style="color:blue" v-bind:style="{color:textColor, backgroundColor:bgColor}">Text</p>
    <p  v-bind:style="{color:textColor, backgroundColor:bgColor}"  style="color:blue">Text</p>
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
	    isChild:true, //false이면 클래스 속성값이 나타나지 않습니다.
	    isActive:true, //true이면 클래스 속성값이 나타납니다.
	    textColor:'red',
	    bgColor:'lightgray'
	  }
	})
  </script>
</body>
</html>