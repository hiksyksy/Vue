<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head> <title>here</title></head>
<body>
<%--
 인라인 메서드 핸들러의 식에서는 이벤트 객체 또는 사용자 정의 이벤트 매개변수를 $event라는 변수이으로 사용할 수 없습니다.
 error ? => 아직 완성하지 못함
 --%>
  <div id="app">
     <button v-on:click="handleClick($event,item)">클릭</button>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
    var app=new Vue({
    	el:'#app',
    	methods:{
    		handleClick:function(event,item){
    			alert(event.data)
    		}
    	}
    })
  </script>
</body>
</html>