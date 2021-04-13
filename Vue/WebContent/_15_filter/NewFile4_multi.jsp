<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%--
 여러 개의 필터를 파이프로 연결하면 메서드 체인처럼 작동합니다.
 {{데이터 | 필터1 | 필터2}}
  데이터를  필터1의 매개변수에 전달하고 결과값을 필터2의 매개변수로 사용합니다.  
 --%>
 <div id="app">
   180도는  {{ 180 | radian | round }} 라디안입니다.
</div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
  new Vue({
	  el: '#app',
	  filters: {
	    // 소수점 이하 두 번째 자리까지 끊는 필터
	    round: function (val) {
	      return Math.round(val * 100) / 100
	    },
	    // 도 단위를 라디안 단위로 변환하는 필터
	    radian: function (val) {
	      return val * Math.PI / 180
	    }
	  }
	})
  </script>
</body>
</html>