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
    
    <ul> 
        <li>1</li> 
        <li>2</li> 
        <li>3</li> 
        <li>4</li> 
    </ul>
=>
   <ul> 
        <li>2</li> 
        <li>3</li> 
        <li>4</li> 
    </ul>

Vue.js는 
Vue는 위의 예제의 동작은

<li>1</li>에서 <li>2</li>로 수정
<li>2</li>에서 <li>3</li>로 수정
<li>3</li>에서 <li>4</li>로 수정
<li>4</li> 제거

이렇게 됩니다.


<!-- 변경 전 --> 
  <ul> 
     <li key="1">1</li> 
     <li key="2">2</li> 
     <li key="3">3</li> 
     <li key="4">4</li> 
   </ul>
=> <li key="1">1</li>만 제거

key를 사용하면 key를 추적하여 key가 서로 매칭되는 노드를 업데이트 하게 됩니다. 
위의 예제의 동작은 <li key="1">1</li> 제거 로 1번만 업데이트 하면 됩니다.
주의점) (1) key는 모두 중복되지 않은 값을 사용합니다. 같은 값을 지정하면 의미가 없습니다.
       (2) 같은 부모 요소 내 키가 중복되면 안됩니다. 오류가 발생합니다.
 --%>
  <div id="app">
    <ul>
      <li v-for="item in list" v-bind:key="item.id">
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