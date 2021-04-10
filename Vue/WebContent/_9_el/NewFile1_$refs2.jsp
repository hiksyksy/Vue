<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%--
 $el과 $refs는 가상 DOM을 사용하지 않으므로 렌더링 최적화를 실시하지 않습니다. 
 따라서 조작이 발생할 때마다 다시 렌더링되므로 자주 변경되는 DOM변경에는 사용하기 적합하지 않습니다.
다음과 같이 $refs를 사용해서 DOM을 조작한 경우에도 데이터에 변경 사항이 있으면 가상 DOM이 다시 만들어지는 과정에서
$refs의 참조가 변경됩니다. 
1. 처음에는 show:true -> 화면에 0이 나타납니다.
2. Count up을 클릭합니다. -> 화면에 0에서 1씩 증가된 값이 나타납니다.
3. 표시/비표시를 누르면 display=!display 문장에 의해 display값은 true->false로 값이 변경되고
   v-if="display"이 거짓이라 숫자가 표시되지 않습니다. 
4. 다시    표시/비표시 버튼을 클릭하면 display값은 false->true로 값이 변경되고 
    v-if="display"이 참이라 숫자가 0으로 표시됩니다.
5. 직접 DOM을 사용해 텍스트를 변경한 것은 가상 DOM에 영향이 없기 때문에 다시 0으로 돌아옵니다.    
 --%>
  <div id="app">
    <button v-on:click="handleClick">Count up</button>
    <button v-on:click="display=!display">표시/비표시</button>
    <span ref="count" v-if="display">0</span>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
    var app=new Vue({
    	el:'#app',
    	data:{
    		display:true
    	},
    	methods:{
    		handleClick(){
    			var count=this.$refs.count;
    			if(count){
    				count.innerText = parseInt(count.innerText,10)+1
    			}
    		}
    	}
    })
  </script>
</body>
</html>