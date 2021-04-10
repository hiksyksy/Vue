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
    <div id="app">
      <ul><li>
            ID.1 슬라임 HP.100    
      </li><li>
            ID.2 고블린 HP.200    
      </li><li>
            ID.3 드래곤 HP.500    
      </li></ul>
    </div>
    
    형식) <li v-for="각 요소를 할당할 변수 이름 in 반복 대상 배열 또는 객체">
 --%>
  <div id="app">
    <ul>
      <li v-for="item in list">
            ID.{{item.id}} {{item.name}} HP.{{item.hp}}    
      </li>
    </ul>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
    var app=new Vue({
    	el:'#app',
    	data:{
    		list:[
    			{id:1, name:'슬라임',hp:100},
    			{id:2, name:'고블린',hp:200},
    			{id:3, name:'드래곤',hp:500}
    		]
    	}
    })
  </script>
</body>
</html>