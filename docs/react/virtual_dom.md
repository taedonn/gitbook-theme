---
layout: default
title: 3. 가상 DOM(Virtual DOM)
parent: React
nav_order: 3
---

# 3. 가상 DOM(Virtual DOM)
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

- TOC
{:toc}

---

## 가상 DOM
{: .fs-8 }

리액트는 실제 브라우저 문서 구조가 아닌 `가상 DOM`이라고 하는 가상의 문서 구조를 만들어 브라우저에 렌더링합니다. 가상 DOM은 주로 `React`, `Vue`, `Elm` 등에서 사용되며, 가상 DOM이라는 이름처럼, 실제 스크린에 랜더링하는 것이 아니기 때문에 DOM을 직접 업데이트하는 것보다 상대적으로 빠릅니다.

&nbsp;

### 가상 돔을 사용하는 이유는 무엇일까요?
{: .fs-6 }

리액트에서 `가상 DOM`을 사용하는 이유는, `상태(State)`가 변했을 때 브라우저 전체가 아닌 기존의 DOM과 비교해서 달라진 부분만 변경하기 때문입니다.

![virtual_dom_1](../../assets/images/virtual_dom_1.png)

이러한 방식은 이전 UI 상태를 메모리에 유지한 체, 변경될 UI의 최소집합을 계산하여 필요한 부분만 교체하여 **불필요한 업데이트를 줄이고, 렌더링 속도를 올려줍니다.**{: .text-purple-000 }

&nbsp;

### DOM VS Virtual DOM
{: .fs-6 }

|             | `DOM`                | `Virtual DOM`  |
|:------------|:---------------------|:---------------|
| 업데이트      | 느리다                 | 빠르다           |