<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head> <title>here</title></head>

<body>
<%--
 키 장식자는 특정 키 코드 입력만 핸들러를 호출하게 만들어 줍니다.
 자주 사용되는 키 코드는 모두 별칭이 등록되어 있습니다.
 별칭)
 left : 화살표 왼쪽 키를 눌렀을 때
 right: 화살표 오른쪽 키를 눌렀을 때
 .ctrl : 컨트롤키를 눌렀을 때 
 다음은 엔터 키를 눌렀을 때 핸들러를 호출합니다.
 --%>
  <div id="app">
    <input v-on:keydown.13="handler('enter')">
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