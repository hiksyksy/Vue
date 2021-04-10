/*
 1. Vue 생성자 함수를 사용해서 Vue인스턴스를 생성합니다.
 2. 리턴 값은 루트 인스턴스입니다. 관례적으로 변수는 app 또는 vm(ViewModel)변수를 사용합니다.
 */

var app= new Vue({
	el:'#app',
	data:{
		list:['사과','바나나','딸기']
	}
});