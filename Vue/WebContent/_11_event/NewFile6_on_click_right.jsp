<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head> <title>here</title></head>

<body>
<%--
 이벤트 장식자 : DOM이벤트의 기본적인 동작을 변경해 주는 장식자입니다.
 .left  : 마우스 왼쪽 버튼 클릭했을 때 핸들러를 호출합니다.
 .right  : 마우스 오른쪽 버튼 클릭했을 때 핸들러를 호출합니다.
 .prevent : event.preventDefault()를 호출합니다.
 --%>
  <div id="app">
     <div v-on:click.right="handler">마우스 오른쪽 버튼 클릭하면 컨텍스트 메뉴가 나타납니다.</div><br>
     <div v-on:click.right.prevent="handler">마우스 오른쪽을 클릭해도 컨텍스트 메뉴가  나타나지 않습니다.</div>
     {{message}}
  </div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
    var app=new Vue({
    	el:'#app',
    	data :{
    		message:'Hello Vue.js'
    	},
    	methods:{
    		handler:function(event){
    		 console.log(event)
    			
    		}
    	}
    })
  </script>
</body>
</html>