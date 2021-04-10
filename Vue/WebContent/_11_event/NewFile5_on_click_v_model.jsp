<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head> <title>here</title></head>

<body>
<%--
 브라우저에서 지원하는 이벤트는 모두 사용할 수 있습니다.
 --%>
  <div id="app">
     <input v-bind:value="message" v-on:input="handelInput">
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
    		handelInput:function(event){
    			this.message = event.target.value
    			
    		}
    	}
    })
  </script>
</body>
</html>