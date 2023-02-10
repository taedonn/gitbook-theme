---
layout: default
title: 컴포넌트
parent: React
nav_order: 4
---

# 컴포넌트
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

- TOC
{:toc}

---

## React란?
{: .fs-8 }

리액트는 페이스북에서 만든 자바스크립트 기반의 라이브러리입니다. `컴포넌트`라고 하는 독립적인 UI 파편을 만들고, 만들어진 컴포넌트를 조합하여 하나의 View를 만드는 `선언형 프로그래밍` 방식을 채택하고 있다는게 리액트의 대표적인 특징 중 하나입니다.

리액트 공식문서는 리액트를 다음과 같이 설명하고 있습니다.

> 리액트는 사용자 인터페이스를 구축하기 위한(for building composable UI) 선언적이고 효율적이며 유연한 자바스크립트 라이브러리입니다. '컴포넌트'라고 불리는 작고 고립된 코드의 파편을 이용하여 복잡한 UI를 구성하도록 돕습니다.

&nbsp;

## 리액트의 특징

### 1. 단방향 데이터 흐름 (Unidirectional Data Flow)
{: .fs-6 }

리액트는 Reactive한 단방향의 데이터 흐름을 가지고 있습니다. Reactive하다는 것은 `상태(State)`가 바뀌면 뷰도 업데이트된다는 것이며, 단방향 데이터 흐름(Unidirectional Data Flow)은 한 방향으로 데이터가 흐른다는 것입니다. 리액트에서 데이터는 `상위 컴포넌트(Parent)`에서 `하위 컴포넌트(Children)`로 흐르는데, 이 데이터를 리액트에서는 `props`라고 지칭합니다.

양방향 데이터 바인딩을 하게 되면 단기적으로 개발 비용이 줄어들 수는 있지만, **장기적으로는 데이터의 흐름이 더 복잡해지고 이해하기 어려워져 개발 비용이 증가**{: .text-purple-000 }하게 됩니다. 그렇기 때문에 리액트는 `상위 컴포넌트`에서 `하위 컴포넌트`로만 데이터가 흐르는 단방향 데이트 흐름을 채택해 사용하고 있습니다.

&nbsp;

### 2. JSX (JavaScript XML)
{: .fs-6 }

`JSX`는 페이스북에서 정의한 XML과 비슷한 자바스크립트 확장 문법입니다. JSX라고 하면 템플릿 언어를 떠올릴 수 있지만, 템플릿 언어와 다르게 자바스크립트의 모든 기능을 사용할 수 있습니다. 또한 JSX의 사용은 권장 사항일 뿐, 자바스크립트만을 사용해 리액트 컴포넌트를 구현할수도 있습니다.

그렇지만 JSX는 HTML 코드를 마치 XML을 코딩하는 것처럼 JS 파일에 넣을 수 있게 만들어 별도의 HTML 파일 호출 없이 하나의 JS 파일로 하나의 컴포넌트를 구현할 수 있어, **리액트의 개발 목적인 컴포넌트의 독립성 유지에 최적회되어 있는 문법**{: .text-purple-000 }입니다.

&nbsp;

### 3. 가상 DOM (Virtual DOM)
{: .fs-6 }

데이터가 변경될 때 변경된 부분만 리렌더링하여 새로고침하지 않아도 변경된 내용을 확인할 수 있는게 리액트의 큰 특징 중 하나인데, 이건 데이터가 변경될 때마다 **가상 DOM과 기존 DOM을 비교하여 다른 부분만 교체하는 Diffing 방식을 사용**{: .text-purple-000 }하기 때문입니다.

&nbsp;

## 리액트는 컴포넌트를 사용합니다.
{: .fs-6 }

> 리액트에게 화면에 표현하고 싶은 게 무엇인지 우리는 컴포넌트를 통해 알려줍니다. 리액트는 데이터가 변경될 때 컴포넌트를 효율적으로 업데이트하고 다시 렌더링합니다.

- 리액트를 사용하면 `컴포넌트`라는 재사용가능한 UI 파편을 통해 복잡한 앱을 효율적으로 만들 수 있습니다.

- `컴포넌트`는 **재활용 가능한 UI 구성 단위**{: .text-purple-000 }입니다. UI가 재활용 가능하다는 것은 리액트의 큰 장점 중 하나이며, 서비스의 유지보수 측면에서 뛰어나고 페이지의 구성을 한눈에 파악할 수 있습니다.

&nbsp;

## Reference
{: .fs-8 }

- [[React] React 기본 개념](https://velog.io/@kim-jaemin420/React-%EA%B8%B0%EB%B3%B8-%EA%B0%9C%EB%85%90)
- [[React] 리액트를 처음부터 배워보자. - 01.React.js란 무엇인가?](https://medium.com/crossplatformkorea/)
- [[React] 안녕, 리액트(Hello, React)](https://blog.gaerae.com/2016/04/hello-react.html)

&nbsp;

<script src="https://utteranc.es/client.js"
        repo="xxdevbosa/blog"
        issue-term="pathname"
        label="blog"
        theme="github-light"
        crossorigin="anonymous"
        async>
</script>