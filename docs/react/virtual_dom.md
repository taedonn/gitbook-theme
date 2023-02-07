---
layout: default
title: 3. 가상 돔(Virtual DOM)
parent: React
nav_order: 3
---

# 3. 가상 돔(Virtual DOM)
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

- TOC
{:toc}

---

## 가상 돔(Virtual DOM)
{: .fs-8 }

리액트는 실제 브라우저 문서 구조가 아닌 `가상 돔`이라고 하는 가상의 문서 구조를 만들어 브라우저에 렌더링합니다. 리액트에서 `가상 돔`을 사용하는 이유는, `상태(State)`가 변했을 때 브라우저 전체가 아닌 기존의 DOM과 비교해서 달라진 부분만 변경하기 때문에 진짜 DOM과 비교했을 때 **메모리 사용량이 적고, 보안성이 높다.**{: .text-purple-000 }