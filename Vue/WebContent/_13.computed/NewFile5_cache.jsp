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
2. 산출 속성은 리액티브 데이터를 기반으로 결과를 캐시합니다.
3. 캐시의 트리거가 되는 것은 리액티브 데이터 뿐입니다.
4. 예로 산출 속성이 사용하는 Math.random()은 리액티브 데이터가 아니므로 몇 번을 실행해도 같은 숫자가 리턴됩니다.
 --%>
  <div id="app">
    <ol>
      <li>{{computedData}}</li>
    </ol>
    <ol>
      <li>{{methodsData}}</li>
    </ol>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
    var app=new Vue({
    	el:'#app',
    	computed:{
    		computedData:function(){
    			return Math.random()
    		}
    	},
    	methods:{
    		methodsData:function(){
    		return Math.random()
    		}
    	}
    })
  </script>
</body>
</html>