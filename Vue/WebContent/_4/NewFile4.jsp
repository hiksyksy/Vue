<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
  <div id="app" >
    <p>{{message.value}}</p>
    <p>{{message.value.length}}</p>
    <p>{{list[2]}}</p>
    <p>{{list[num]}}</p> <!--  속성을 조합해서 사용하고 있습니다. -->
  </div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
    var app=new Vue({
    	el:'#app',
    	data:{
    		//객체 데이터
    		message:{
    			value:'Hello Vue.js!'
    		},
    	    
            //배열 데이터
    	    list:['사과','바나나','딸기'],
    	
    	    //다른 데이터를 사용해서 list서 값을 추출하기 위한 요소
    	    num:1
    	} //data end
    })
    
  </script>
</body>
</html>