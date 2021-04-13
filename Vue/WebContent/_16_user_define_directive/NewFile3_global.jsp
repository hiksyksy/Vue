<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%--
 1. 사용자 정의 디렉티브란 v-bind처럼 디렉티브를 직접 만들 수 있게 해주는 기능입니다.
    기본적으로 요소 또는 속성은 데이터 바인딩으로 조작할 수 있지만 DOM API를 사용하고 싶을 수도 있습니다.
    이런 경우에 사용자 정의 데렉티브를 사용하면 상태를 감시하면서 직접 DOM을 조작할 수 있습니다.
 2. 사용자 정의 디렉티브에서 받게 되는 요소는 $el 또는 $refs와 같은 가상 DOM이 아니므로 랜더링 최적화가 따로 들어가지 않습니다.
 따라서 기본적인 데이터 바인딩만으로 표현할 수 없는 부분에만 사용하기 바랍니다. 
 
 3. 사용자 정의 디렉티브는 v-로 시작합니다.
 
 input에 포커스를 줍니다.       
 --%>
 <div id="app">
  <input v-focus>
</div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
  Vue.directive('focus',{ //전역에 등록해서 어느 컴포넌트든 사용할 수 있도록 합니다.
	  inserted:function(el){
		  el.focus()
	  }
  })
  new Vue({
	  el: '#app'	 
	})
  </script>
</body>
</html>