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
 var fruit = [1, 2, 3];

 document.write(Math.max(...fruit)+"<br>")//alert(Math.max(1,2,3)) 의미
 
 let data = [
	    {
	        name: 'Henry',
	        age: 20,
	        job: 'store clerk'
	    },
	    {
	        name: 'Juliet',
	        age: 18,
	        job: 'student'
	    },
	    {
	        name: 'Luna',
	        age: 47,
	        job: 'CEO'
	    }
 ]
	    

	    let names = data.map((person) => {
	        return person.name
	    });
	    let ages = data.map((person) => {
	        return Math.max(person.age)
	    });
	     
	    document.write(names)
	    document.write(ages)
 </script>
</body>
</html>