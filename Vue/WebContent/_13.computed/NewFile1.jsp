<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%--
1. 산출 속성이란 처리를 포함하고 있는 데이터 입니다.
2. Mustache와 디렉티브의 값에 자바스크립트를 사용할 수 있기는 하지만 자바스크립트 식을 넣어 버리면 템플릿의 가독성이
     크게 떨어질 수 있습니다. 이때 산출 속성을 사용하면 코드의 가독성을 크게 향상할 수 있습니다.
3. 산출 속성 사용 방법
     산출 속성은 임의의 데이터를 리턴하는 함수를 computed옵션에 정의합니다.
   
 --%>
  <div id="app">
     <p>{{width}}의 절반은 {{halfWidth}}입니다.</p>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
    var app=new Vue({
    	el:'#app',
    	data:{
    	 width:800
    	},
    	computed:{
    		halfWidth: function(){
    			return this.width/2
    		}
    	}
    })
    console.log("=>" + app.halfWidth)
  </script>
</body>
</html>