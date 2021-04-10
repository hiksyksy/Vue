<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%--
 입력 양식의 값 또는 선택 값을 데이터와 동기화하는 양방향 데이터 바인딩을 실시할 때 v-model 디렉티브를 사용합니다.
IME 입력 확정 : 윈도우 환경에서 한국어, 일본어, 중국어 처럼 IME 입력 확정 처리가 필요한 경우,
             입력 확정되기 전까지 데이터를 변경하지 않습니다. 여기서 IME 입력 확정 처리는 'o','ㅏ','ㄴ'을 입력해서
             '안'을 입력하는 형태로 사용되는데 '안'이 확정되어 입력되는 것을 IME 입력확정이라고 합니다.
 --%>
  <div id="app">
     <input v-model="message">
        <p>{{message}}</p>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
  <script>
    var app=new Vue({
    	el:'#app',
    	data:{
    		
    	message:'Hello!'
    	}
    })
  </script>
</body>
</html>