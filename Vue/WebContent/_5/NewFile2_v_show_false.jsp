<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>v-if</title>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
</head>
<body>

  <div id="app">
    <div v-if="ok">v-if 조건으로 출력하기:false이면 주석으로 나타납니다.</div>
    <div v-show="ok">v-show 조건으로 출력하기</div>
  </div>
  <script>
    var app=new Vue({
    	el:'#app',
    	data:{
    		ok:false
    	}
    })
  </script>
</body>
</html>