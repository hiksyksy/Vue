<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<%--
	watch : 특정 데이터를 주시하고 있다가 변경이 되면 처리하고 싶은 일을 작성합니다.
	
	new Vue({
  // ...
  watch: {
    감시할 데이터: function (새로운 값, 이전 값) {
      // value가 변화했을 때 하고 싶은 처리
    },
    'item.value': function (newVal, oldVal) {
      // 객체의 속성도 감시할 수 있음
    }
  }
})
 --%>
	<div id="app">
		<h1>{{title1}}</h1>
		<input type="text" v-model="title1">
		<button type="button" @click="getData">getData</button>
		<button type="button" @click="setData">setData</button>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
	<script>
    var app=new Vue({
    	el:'#app',
    	data:{
    			title1:"개발자의 품격",
    			title2:"Seoul",
    			input1:"abcd"
    	},
    	watch:{
    		title1 :  //data 속성의 title1이 변경되면 작동합니다.
    		        function(newVla, oldVal){
    		   console.log("watch:" + this.title1)	
    		}
    	},
    	methods:{
    		getData(){
    			alert(this.title1)
    		},
    		setData(){
    			this.title1='1234'
    		}
    	},
    		beforeCreate(){
    			console.log("beforeCreate")
    		},
    		created(){
    			//DB에서 데이터를 가져오는 코드를 작성
    			console.log("created : " + this.title1)
    		},
    		beforeMount(){
    			console.log("beforeMount")
    		},
    		mounted(){
    			console.log("mounted")
    		},
    		beforeUpdate(){
    			console.log("beforeUpdate")
    		},
    		updated(){
    			console.log("updated")
    		},
    		beforeDestroy(){
    			console.log("beforeDestroy")
    		},
    		destroyed(){
    			console.log("destroyed")
    		}
    	
    })
  </script>
</body>
</html>