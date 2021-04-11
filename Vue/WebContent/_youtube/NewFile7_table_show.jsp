<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
	<%--
	(1) v-for="(item,index) in options"
	    options 배열이 갖고 있는 요소 하나씩 접근해서 item 변수에 담습니다.
	       첫번째 item은 {v:"S", t:"Seoul"}이고 v속성에 접근하기 위해 item.v로 사용합니다.
	(2) :value="item.v" 
	      뷰에서 정의된 options 배열의 값을 하나씩 저장하는 변수 item에서 v속성의 값을
	     적용합니다. value앞에 콜론을 사용해서 "item.v"이 적용되도록 합니다. 콜론이 없으면 value에는 "item.v"라는 문자열이 적용됩니다.
	     
	 (3) v-model="region"를 select 엘리먼트에 작성해서 우리가 기본으로 선택할 option을 적용할 수 있습니다.
	     이전 코드 
	     <select>
	       <option value="S">Seoul</option>
	       <option value="J" selected>Jeju</option>
	       <option value="B">Busan</option>
	     </select>

 --%>
 <div class="container">
	<div id="app">
		<h1>{{title1}}</h1>
		<input type="text" v-model="title1" >
		<button type="button" @click="getData">getData</button>
		<button type="button" @click="setData">setData</button>
		<p>
		<table class="table">
		  <tr v-for="(item,index) in options" :key="index" >
		    <td>{{item.v}}</td>
		    <td>{{item.t}}</td>
		  </tr>
		</table>
		
	</div>
</div>  	
	<script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
	<script>
    var app=new Vue({
    	el:'#app',
    	data:{
    			title1:"개발자의 품격",
    			title2:"Seoul",
    			input1:"abcd",
    			options:[
    				{v:"S", t:"Seoul"},
    				{v:"J", t:"Jeju"},
    				{v:"B", t:"Busan"},
    			],
    			region:"J"		
    			
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