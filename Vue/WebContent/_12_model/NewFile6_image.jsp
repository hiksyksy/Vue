<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<style>
  img{width:50px}
</style>
</head>
<body>
<%--
 파일 타입에는 v-model 디렉티브를 사용할 수 없습니다.
 리액티브 데이터와 동기화 할 때 change 이벤트를 바인딩해서 사용합니다.
 (1) v-on:change="handleChange"
     change 이벤트가 발생하면 "handleChange" 핸들러 실행하라
 (2) <div v-if="preview">
      "preview"이 참이면 <img v-bind:src="preview"> 실행
            초기값이  preview:''이기 때문에 v-if="preview"은 거짓이라 
      <div v-if="preview"><img v-bind:src="preview"></div> 나타나지 않고 <!---->이 나타난다.
  (3) <img v-bind:src="preview">는 src속성에 preview값이 적용됩니다.  
 --%>
  <div id="app">
     <input type="file" v-on:change="handleChange">
     <div v-if="preview"><img v-bind:src="preview"></div>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
    var app=new Vue({
    	el:'#app',
    	data:{
    	   preview:''	
    	},
    	methods:{
    		handleChange:function(event){
    			var file=event.target.files[0]
    			if(file && file.type.match(/^image\/(png|jpeg)$/)){
    				this.preview = window.URL.createObjectURL(file)
    			}
    		}
    	}
    })
  </script>
</body>
</html>