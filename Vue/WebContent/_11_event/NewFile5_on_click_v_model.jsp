<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>v-for 리터럴 이용한 출력</title>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<body>
<!--
 브라우저에서 지원하는 이벤트는 모두 사용할 수 있습니다.
 -->
  <div id="app">
     <input v-bind:value="message" v-on:input="handelInput">
     {{message}}
  </div>
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