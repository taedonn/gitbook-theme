## 가상 DOM 알아보기

DOM은 **D**ocument **O**bject **M**odel의 약자다. DOM은 `HTML 요소`를 `객체(Object)`로 만들어 브라우저가 문서 구조에 접근하는 것을 돕는 역할을 한다. 

> 한마디로 DOM은 문서의 모든 요소를 정의하고, 각 요소에 접근하는 방법을 제공한다.

![virtual_dom_1](/images/virtual_dom_1.png)<br>
(출처 : https://www.freecodecamp.org/news/what-is-dom-in-javascript/)

&nbsp;

### DOM을 렌더링하는 과정

1. 브라우저는 서버가 보내준 HTML 파일을 해석(Parsing)해 `DOM 트리`를 만든다.
2. 브라우저는 서버가 보내준 CSS 파일을 해석(Parsing)해 `CSSOM 트리`를 만든다.
3. DOM 트리와 CSSOM 트리를 결합한 `렌더트리`를 만든다.
4. 렌더트리로 각 객체의 위치와 크기를 계산한 `레이아웃`을 만든다.
5. 레이아웃이 완성되면 요소를 실제 화면에 구현한다.

&nbsp;

### DOM의 문제점

- 새로운 요청이나 변경사항이 있을 때마다 전체를 다시 렌더링한다.
- 매번 전체를 렌더링 하기 때문에, `레이아웃`의 양이 많을 경우 렌더링 속도가 눈에띄게 느려진다.

&nbsp;

## 가상 DOM

가상 DOM은 주로 `React`, `Vue`, `Elm` 등에서 사용되고, 실제 브라우저의 DOM이 아닌 가상의 DOM을 만들어 브라우저에 렌더링한다.

&nbsp;

### 리액트에서 가상 DOM을 사용하는 이유

`상태(State)`가 변했을 때 브라우저 전체가 아닌 기존의 DOM과 달라진 부분만 변경하기 때문이다.

![virtual_dom_2](/images/virtual_dom_2.png)<br>
(출처 : https://brocoders.com/blog/vue-vs-react/)

이런 방식을 **Diffing 방식**이라고 하는데, 필요한 부분만 교체해 **불필요한 업데이트를 줄이고, 렌더링 속도를 올려준다.**

&nbsp;

### 가상 DOM을 렌더링하는 과정

1. `상태(State)`가 바뀌면 UI를 가상 DOM에 렌더링한다.
2. 가상 DOM끼리 비교한다.
3. 바뀐 부분만 실제 DOM에 렌더링한다.

&nbsp;

### 가상 DOM의 단점

가상 DOM은 대부분의 경우 실제 DOM보다 빠르지만, 항상 빠른것은 아니다. 조그만 변화에도 반응하기 때문에 최적화가 되어있지 않으면 오히려 실제 DOM보다 느려질수도 있다. 이런 현상을 `오버헤드`가 크다라고 한다. 가성비가 안맞는다는 뜻이다. 예를 들어 껌 하나를 사러 멀리 떨어진 마트를 갔을 때 오버헤드가 크다는 표현을 쓸 수 있다. 결과에 비해 들이는 노력이 너무 크기 때문이다. 이런 현상을 방지하기위해 리액트에서는 `shouldComponentUpdate`나 `useCallback`같은 함수를 써서 최적화를 한다.

&nbsp;

## Reference

- [[React] 가상 돔(Virtual DOM) 이해하기](https://devbirdfeet.tistory.com/219)
- [[React] DOM의 개념](http://www.tcpschool.com/javascript/js_dom_concept)

&nbsp;