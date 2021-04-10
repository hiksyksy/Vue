<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
  <div id="app-9">
  
  </div>
  <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
 <%-- 라이프 사이클 : Vue.js의 기상과 취침까지의 일정한 사이클을 나타냅니다.
          이러한 라이프 사이클을 미리 등록해서 적절한 시기에 자동으로 호출하는 것을 Hook(훅)이라고 합니다. 
      Vue 인스턴스가 생성되고 데이터 감시 등의 리액티브 시스템과 관련된 초기화가 끝났을 때   created 메서드가 자동으로 호출됩니다.  
          --%>
  <script>
	var app9 = new Vue({
	  el: '#app-9',
	  created: function(){
		  //이 인스턴스의 생성과 초기화가 종료되었을 때
		  //아직 DOM이 구축되지 않은 상태로 인스턴스 자신을 나타내응 this에는 접근할 수 있지만  getElementById() 등을 사용한 DOM 접근은 불가능합니다.
		  console.log('created')
	  }
	})
  </script>
</body>
</html>