---
layout: default
title: JSX(JavaScript XML)
nav_order: 2
---

# JSX(JavaScript XML)
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

- TOC
{:toc}

---

## JSX란?
{: .fs-8 }

JSX는 React의 개발 목적인 **모든 HTML 코드를 하나의 JS파일에 넣어서 컴포넌트화**시키는 것을 실현하기 위해 개발된 문법입니다. JSX는 React의 개발을 위해 개발된 문법이기 때문에, React와 마찬가지로 공식적인 자바스크립트 문법은 아닙니다.

JSX는 HTML 코드를 마치 XML을 코딩하는 것처럼 JS 파일에 넣을 수 있게 만들어 별도의 HTML 파일을 호출할 필요가 없어, React의 핵심이라고 할 수 있는 **컴포넌트의 독립성**을 유지시키기에 적합한 문법입니다.

&nbsp;

## JSX 문법
{: .fs-8 }

### 1. 카멜 케이스(Camel Case) 네이밍 규칙을 사용합니다.
JSX에서 자바스크립트 문법을 사용하려면 {}를 사용해야하기 때문에, 스타일을 적용할 때도 객체 형태로 적용해야합니다. 그렇기 때문에 HTML 네이밍 규칙 대신 카멜 케이스 네이밍 규칙을 사용합니다.

```
// ex) background-color => backgroundColor
// ex) font-size => fontSize

// 스타일을 변수에 저장해서 사용할 때
function App() {
    const style = {
        backgroundColor: "green",
        fontSize: "12px"
    }
    return (
        <div style={style}>Hello, DevBot</div>
    );
}

// 스타일을 HTML 코드 내부에 사용할 때
function App() {
    return (
        <div style={backgroundColor,"green"}>Hello, DevBot</div>
    );
}
```

| HTML           | JSX                  | 
|:---------------|:---------------------| 
| `class`        | `className`          | 
| `for`          | `htmlFor`            | 
| `checked`      | `defaultChecked`     | 

&nbsp;

### 2. DOM 트리 구조는 반드시 하나의 부모 요소가 감싸는 형태여야 합니다.
React의 가상 돔(Virtual DOM)에서 컴포넌트(Component)의 변화를 효율적으로 비교할 수 있도록 컴포넌트 내부는 하나의 DOM 트리 구조로 이루어져야 한다는 규칙이 있습니다.

에러 케이스
{: .fs-4 }

```
// Failed to compile
// parsing error : adjacent JSX elements be wrapped in an enclosing tag
// Did you want a JSX fragment <>...</>?

function App() {
    return (
        <div>Hello</div>
        <div>I am Tae Lee</div>
    );
}
```

정상 케이스
{: .fs-4 }

```
function App() {
    return (
        <>
            <div>Hello</div>
            <div>I am Tae Lee</div>
        </>
    );
}
```

&nbsp;

### 3. JSX 내부에서도 자바스크립트 표현식을 사용할 수 있습니다.
자바스크립트 표현식을 사용하려면, 작성하고 있는 JSX 내부에서 자바스크립트 코드를 {}로 감싸주기만 하면 됩니다. 개발자가 JSX를 작성하면, 리엑트 엔진이 JSX를 기존 자바스크립트 문법으로 해석해 줍니다. 이러한 방식을 "선언형 화면 기술"이라고 합니다.

```
function App() {
    const name = "DevBot";
    return (
        <>
            <div>Hello, I am {name}</div>
        </>
    );
}
```

&nbsp;

### 4. if문(for문) 대신 삼항 연산자(조건부 연산자)를 사용합니다.
if문과 for문은 자바스크립트 표현식이 아니기 때문에, JSX 내부 자바스크립트 표현식에서 사용할 수 없습니다. if문과 for문이 자바스크립트 표현식이 아닌 이유는, **표현식은 그 자체로 값을 가지거나, 어떤 것에 값을 할당하는 것**이어야 되는데, 예를 들어, '변수가 3보다 클 때 특정 함수를 실행'이라는 if문을 선언했을 때, '변수가 3보다 크다'는 것 자체가 어떤 값이 될 수 없기 때문에, if문과 for문은 자바스크립트 표현식이 아닙니다.

JSX 외부에서 사용
{: .fs-4 }

```
function App() {
    let name = "";
    const loginYN;
    if (loginYN == "Y") { intro = <div>Tae Lee 입니다.</div> }
    else { intro = <div>비회원 입니다.</div> }
    return (
        <div>{intro}</div>  
    );
}
```

JSX 내부에서 사용
{: .fs-4 }

```
function App() {
    const loginYN;
    return (
        <div>
            { loginYN == "Y" ? 
            ( <div>Tae Lee 입니다.</div> ) : 
            ( <div>비회원 입니다.</div> )}
        </div>
    );
}
```

연산자 사용
{: .fs-4 }

```
// 조건이 만족되지 않을 경우 아무것도 노출되지 않는다.

function App() {
    const loginYN;
    return (
        <div>
            { loginYN == "Y" && <div>이태호 입니다.</div> }
        </div>
    );
}
```

즉시실행함수 사용
{: .fs-4 }

```
function App() {
    const loginYN;
    return (
        <div>
            {(() => {
                if (loginYN == "Y") {return (<div>Tae Lee 입니다.</div>)}
                else { return (<div>비회원 입니다.</div>) }
            })()}
        </div>);
}
```

&nbsp;

### 4. JSX 내부에서 주석 사용 방법
자바스크립트 주석 표현 방식과 동일하게 표기합니다. 자바스크립트 표현 방식을 따라가기 때문에 겉을 {}로 감싸줘야 합니다.

한줄일 때
{: .fs-4 }

```
function App() {
    return (
        <>
            {/* 주석 내용 여기 */}
        </>
    );
}
```

두줄 이상일 때
{: .fs-4 }

```
function App() {
    return (
        <>
            {
                // 주석 내용 여기
                // 주석 내용 여기
            }
        </>
    );
}
```

&nbsp;

## Reference
- [JSX란? (정의,장점,문법)](https://goddaehee.tistory.com/296)