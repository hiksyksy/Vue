<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
 <script>
 /*
    let welcom=(age<18)? function(){alert('age < 18')}: function(){alert("age >= 18")};
    };
 */
 let age = prompt("나이를 알려주세요.", 18);

 let welcome = (age < 18) ?   () => alert('age < 18') :   () => alert("age >= 18");

 welcome();
 </script>
</body>
</html>