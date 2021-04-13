<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%--
 1.필터란 문자 수를 반올림하거나 쉼표를 넣는 등의 텍스트 기반 변환 처리에 특화된 기능입니다.
 (1) 로컬로 등록 - this 사용하지 않습니다.
 (2) 전역에 등록
   
 2. 출력방법
 (1) Mustache로 사용하는 경우 
    {{대상 데이터 | 필터 이름}}
    => 필터이름의 매개변수에 대상 데이터가 전달됩니다.
    예){{ price | localeNum}}      
     localeNum: function (val) : val에는 대상 데이터가 전달됩니다. 즉 price값이  val에 전달됩니다.

 (2) v-bind로 사용하는 경우
    <div v-bind:id="대상 데이터 | 필터 이름"></div>     
 --%>
 <div id="app">
   {{ price | localeNum}}  
</div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
  new Vue({
	  el: '#app',
	  data: {
	    price: 19800
	  },
	  filters: {
	    localeNum: function (val) { //val에는 대상 데이터가 전달됩니다.
	      return val.toLocaleString()  //자바 스크립트에서 number형인 경우 3자리 마다 콤마를 출력해 줍니다.
	    }
	  }
	})
  </script>
</body>
</html>