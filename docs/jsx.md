---
layout: default
title: JSX(JavaScript XML)
nav_order: 2
---

# JSX(JavaScript XML)
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

## JSX란?
JSX는 React의 개발 목적인 **모든 HTML 코드를 하나의 JS파일에 넣어서 컴포넌트화**시키는 것을 실현하기 위해 개발된 문법이다.

JSX는 HTML 코드를 마치 XML을 코딩하는 것처럼 JS 파일에 넣을 수 있게 만들어 별도의 HTML 파일을 호출할 필요 없이 **컴포넌트의 독립성**을 유지시키기에 적합한 문법이다.

## JSX 문법

### 1. JSX는 카멜 케이스(Camel Case) 네이밍 규칙을 사용한다.
JSX에서 자바스크립트 문법을 사용하려면 {}를 사용해야하기 때문에, 스타일을 적용할 때도 객체 형태로 적용해야한다. 그렇기 때문에 HTML 네이밍 규칙 대신 카멜 케이스 네이밍 규칙을 사용한다.

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
        <div style={style}>Hello, Bosa</div>
    );
}

// 스타일을 HTML 코드 내부에 사용할 때
function App() {
    return (
        <div style={{backgroundColor:"green", fontSize:"12px"}}>
            Hello Bosa
        </div>
    )
}
```