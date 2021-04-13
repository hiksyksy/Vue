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
 
 사용자 정의 디렉티브 옵션으로 다음과 같은 훅을 사용할 수 있습니다.
 1. bind : 디렉티브가 처음 요소와 연결될 때
 2. inserted : 연결된 요소가 부모 Node에 삽입될 때
 3. update : 연결된 요소를 내포하고 있는 컴포넌트의 VNode가 변경되었을 때
 4. componentUpdate : 내포하고 있는 컴포넌트와 자식 컴포넌트의 VNode가 변경되었을 때
 5. unbind : 연결되어 있는 요소로 부터 디렉티브가 제거될 때    
 --%>
 <div id="app">
  <input v-example>
</div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
  Vue.directive('example', {
	  bind: function (el, binding) {
	    console.log('v-example bind')
	  },
	  inserted: function (el, binding) {
	    console.log('v-example inserted')
	  },
	  update: function (el, binding) {
	    console.log('v-example update')
	  },
	  componentUpdated: function (el, binding) {
	    console.log('v-example componentUpdated')
	  },
	  unbind: function (el, binding) {
	    console.log('v-example unbind')
	  }
	})
  new Vue({
	  el: '#app'	 
	})
  </script>
</body>
</html>