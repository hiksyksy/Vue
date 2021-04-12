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
 .stop : event.stopPropagation()을 호출합니다. - 버블링을 막습니다.
 http://localhost:8088/Vue/_11_event/NewFile7_on_click_stop.jsp#top
 =>해쉬는 막지 않았습니다.
 
 <a href="#top" v-on:click.prevent="handler('div3')">div3(같은 페이지의 앵커 이동 금지)</a>
 =>해쉬 막았습니다.
 --%>
  <div id="app">
     <div v-on:click="handler('div1')">
       div1(콘솔 확인)
       <p>
         <a href="#top" v-on:click="handler('div2')">div2 div1 (버블링 현상)</a>
        </p>
        <p> 
       <a href="#top" v-on:click.stop="handler('div2')">div2(버블링 막음 :#나타남)</a>
       </p>
       <p> 
       <a href="#top" v-on:click.prevent="handler('div3')">div3(같은 페이지의 앵커 이동 금지)</a>
       </p>
     </div>
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