# FOR INTERNAL USE

# FE 2주

디스코드에 아주 좋은 질문이 올라왔었는데....

<details><summary>Chapters</summary>

- [8장 함수]()
- [9장 객체]()
- [10장 배열의 다양한 기능]()
- [11장 버그와 오류에 대처하는 방법]()
- [12장 정규 표현식]()
- [13장 웹 브라우저의 객체]()
- [14장 문서 제어]()
- [15장 이벤트 처리]()

</details>


### 8장 함수

1. 함수를 정의하는 방법은 네가지가 있다.

	함수 선언문으로 

	- 함수 선언문으로 정의하는 방법
		```js
		function square(x){return x*x;}
		```

		가장 기본적인 함수 선언 방법이었다.

	- 함수 리터럴로 정의하는 방법
		```js
		var square = function(x){return x*x;};
		```

		기존에 알던 무명함수의 개념이었다.

	- Function 생성자로 정의하는 방법
		```js
		var square = new Fuction("x","return x*x");
		```

	- **화살표 함수 표현식으로 정의하는 방법**
		```js
		var square = x => x*x;
		```
		ECMAScript 6부터 추가된 요소로 뒤에서 설명한다고 한다.
	
	2. 일반적으로 익명 함수를 실행할때는
		```js
		var f = function(){...};
		f();
		```
		과 같이 실행하나 
		```js
		(function(){...}());
		```
		과 같이 익명함수를 정의하는 동시에 실행할 수 도 있다.
	
	3. 함수 정의식에 작성된 인자 개수보다 인수를 적게 전달하면 생략된 오류가 나지는 않고 인자는 undefined가 된다. 만약 초기값을 설정해서 인수를 생략하고 싶다면
		```js
		function multiply(a,b){
			b=b||1;	//b의 초기값을 1로 설정
			return a*b;
		}
		```
		와 같이 작성할 수 있다. 여기서 `||`는 왼쪽이 true일 경우 왼쪽 값을 반환한다.

	4. 함수에서 사용할 수 있는 arguments 변수가 있어서 인자에 접근할 수 있다.
	
	여기까지 읽어보니 파이썬에 있는 가변인자 이런 기능은 없는것 같다.

	그 뒤 8.5 프로그램의 평가와 실행 과정은 솔직히 너무 어렵고 추상적인 개념들이라서 실습도 하고 조금 자바스크립트에 익숙해진 다음에 좀 다시 방문해야 될 것 같다. 

	일단 핵심이 되는 단어 위주로 정리하겠다.
	
	- 자바스크립트 엔진(인터프리터 같은거인듯)은 Executable Code(실행 가능한 코드)를 만나면 그 코드를 Evaluation(평가) 해서 Execution Context로 만듬
	- Executable Code의 유형
		- 전역 코드 : Window 객체 아래에 정의된 함수
		- 함수 코드 : 함수를 말함
		- eval 코드 : eval 함수를 말함 / 위 두가지 코드와 다르게 [Lexical Environment](#lexical-environment)과 별도의 동적 환경에서 실행되므로 이 책에서는 설명을 하지 않는다고 한다
	
	5. Execution Context(실행 문맥)의 정보는 여러개의 컴포넌트가 나누어 관리하는데 그중 가장 중요한 컴포넌트에는
		
		- Lexical Environment Component
		- Variable Environemnt Component
		- This Binding Component : 함수를 호출한 객체의 참조가 저장되는 곳 / 

		가 있다.

		위 두개는 Lexical Environment type Component이므로 동일하게 취급해도 크게 무리가 없다고 한다.

	일단 정리는 여기까지 하고 클로저 이후 내용부터 이어가야징

	6. 

