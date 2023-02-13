---
layout: default
title: 5. 컴포넌트
parent: 리액트 입문하기
nav_order: 5
---

# 5. 컴포넌트
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

- TOC
{:toc}

---

## 컴포넌트?
{: .fs-8 }

> 리액트에게 화면에 표현하고 싶은 게 무엇인지 우리는 컴포넌트를 통해 알려줍니다. 리액트는 데이터가 변경될 때 컴포넌트를 효율적으로 업데이트하고 다시 렌더링합니다.

- 리액트를 사용하면 `컴포넌트`라는 재사용가능한 UI 파편을 통해 복잡한 앱을 효율적으로 만들 수 있습니다.

- `컴포넌트`는 **재활용 가능한 UI 구성 단위**{: .text-purple-000 }입니다. UI가 재활용 가능하다는 것은 리액트의 큰 장점 중 하나이며, 서비스의 유지보수 측면에서 뛰어나고 페이지의 구성을 한눈에 파악할 수 있습니다.

&nbsp;

### 컴포넌트 단위 개발 (Component Based Development)
{: .fs-6 }

**리액트는 컴포넌트 단위로 개발해야 합니다.**{: .text-purple-000 } 컴포넌트는 사용자 입장에서는 HTML 요소와 크게 다르지 않습니다. 예를 들어, `<img/>` 태그나 `<button></button>` 태그와 같은 기능을 리액트 컴포넌트로 만든다고 했을 때, 우리는 `props`라는 속성을 사용해서 해당 기능을 구현할 수 있습니다.

&nbsp;

**구현할 HTML 요소 :**{: .text-grey-dk-200 }

```html
<div>Hello, Devbot</div>
```

&nbsp;

**App.js :**{: .text-grey-dk-200 }

index.html에 넣을 컴포넌트

```js
import React from 'react';
import Hello from './Hello';

function App() {
        return (
                <Hello/>
        );
}
```

&nbsp;

코드 상단의

```js
import Hello from './Hello';
```

이 코드는 Hello라는 이름의 컴포넌트를 불러오겠다는 뜻입니다. Hello라는 컴포넌트를 생성하지 않았을 경우 당연하게도 아무것도 뜨지 않습니다.

&nbsp;

**Hello.js :**{: .text-grey-dk-200 }

App.js에 넣을 컴포넌트

```js
import React from 'react';

function Hello() {
        return (
                <div>Hello, Devbot</div>
        );
}

export default Hello;
```

&nbsp;

코드 하단의

```js
export default Hello;
```

이 코드는 Hello라는 이름의 컴포넌트를 내보내겠다는 뜻입니다. 이렇게 해주면 외부에서 Hello 컴포넌트를 불러와서 사용할 수 있습니다.

&nbsp;

## Reference
{: .fs-8 }

- [[React] React 기본 개념](https://velog.io/@kim-jaemin420/React-%EA%B8%B0%EB%B3%B8-%EA%B0%9C%EB%85%90)

&nbsp;

<script src="https://utteranc.es/client.js"
        repo="xxdevbosa/blog"
        issue-term="pathname"
        label="blog"
        theme="github-light"
        crossorigin="anonymous"
        async>
</script>