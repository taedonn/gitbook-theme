## 개발 환경 세팅하기

리액트를 시작하는 방법은 두가지가 있다. `create-react-app`을 사용해 새 프로젝트를 만들거나, 기존 프로젝트에 리액트를 추가하는 것이다.

하지만 리액트를 설치하기전에, 먼저 `Node.js`라는 프로그램을 설치해야한다.

&nbsp;

## Node.js 알아보기

노드는 Chrome V8 JavaScript 엔진으로 빌드된 자바스크립트 런타임이다. 쉽게 말하면 노드는 **자바스크립트를 브라우저없이 컴퓨터에서 실행할 수 있게 하는 자바스크립트 실행기**다.

 &nbsp;

### 노드의 대표적인 특징

- 자바스크립트 런타임 (JavaScript Runtime)
- 이벤트 기반 프로그래밍 (Event-Driven Programming)
- 논블로킹 (Non-Blocking)
- 싱글 스레드 (Single Thread)

&nbsp;

### 자바스크립트 런타임

런타임은 **특정 언어를 실행할 수 있는 환경**을 뜻한다. 대표적인 자바스크립트 런타임은 `Chrome`, `Safafi`같은 웹 브라우저들이다.

&nbsp;

### 이벤트 기반 프로그래밍

이벤트 기반 프로그래밍은 이벤트가 발생하면 뭘 할지 미리 등록하고, 순서대로 실행하는 프로그래밍 방식이다. 노드는 이벤트가 끝날때까지 이벤트 처리를 위한 작업을 반복하는데, 이걸 `이벤트 루프`라고 한다.

![dev_setting_1](/images/dev_setting_1.png)<br>
(출처 : https://umbum.dev/913)

&nbsp;

### 논 블로킹

논 블로킹은 **비동기 방식으로 이벤트를 처리**한다는 뜻이다. 비동기는 이전 작업이 완료될때가지 대기하지않고 동시에 작업을 수행한다.

![dev_setting_2](/images/dev_setting_2.png)<br>
(출처 : https://velog.io/@dorazi/Asynchronous-VS-Synchronous)

&nbsp;

### 동기적 처리 예시

input

```js
console.log("1st");
console.log("2nd");
console.log("3rd");
```

output

```console
1st
2nd
3rd
```

&nbsp;

### 비동기적 처리 예시

input

```js
console.log("1st");
setTimeout(() => {
    console.log("2nd");
},0);
console.log("3rd");
```

output

```console
1st
3rd
2nd
```

&nbsp;

`setTimeout()` 함수의 지연시간이 0이기 때문에 1st, 2nd, 3rd 순으로 찍힐거라 예상하겠지만, 의외로 1st, 3rd, 2nd가 찍혔다. 이유는 **비동기적 코드는 동기적 코드가 전부 실행되고나면 실행되기 때문**이다.

&nbsp;