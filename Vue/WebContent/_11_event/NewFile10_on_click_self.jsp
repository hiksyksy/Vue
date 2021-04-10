<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head> <title>here</title></head>

<body>
<%--
 이벤트 장식자 : DOM이벤트의 기본적인 동작을 변경해 주는 장식자입니다.
 .self
 event.target 요소가 자기 자신일 때만 핸들러가 호출되게 합니다.
 사용은 모달 대화 상자의 배경 부분을 클릭해서 닫는 경우 등에 사용됩니다.
 --%>
  <div id="app">
    <div class="overlay" v-on:click.self="close">
    </div>
   </div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
    var app=new Vue({
    	el:'#app',
    	data :{
    		message:'Hello Vue.js'
    	},
    	methods:{
    		handler:function(comment){
    		 console.log(comment)
    			
    		}
    	}
    })
  </script>
</body>
</html>