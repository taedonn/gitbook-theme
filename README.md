# GitBook Theme

Live Demo : https://gitbook.taedonn.com

[![Node Version](https://img.shields.io/badge/featured%20on-Node%20%4016.13.2-%2368a063)](#) [![NPM Version](https://img.shields.io/badge/featured%20on-NPM%20%408.1.2-%23cc3534)](#) [![Gitbook Version](https://img.shields.io/badge/featured%20on-gitbook--cli%20%402.1.2-%23333333)](#)

&nbsp;

### About This Template

[GitHub 레포지토리 바로가기](https://gitbook.taedonn.com)

이 템플릿은 Gitbook에서 만든 대표적인 블로그 템플릿 중 하나인 GitBook Theme을 커스터마이징한 템플릿입니다.

&nbsp;

### About GitBook

[GitBook 바로가기](https://www.gitbook.com/explore)

GitBook Theme은 GitBook에서 만든 대표적인 블로그 템플릿 중 하나입니다. GitBook은 티스토리와 유사한 블로그 플랫폼으로, GitHub과 연동해 사용할 수 있어 주로 개발자들이 개발 서적을 집필하는데 자주 사용됩니다.

&nbsp;

### gitbook-cli

GitBook은 `gitbook-cli`라는 오픈소스 패키지를 제공하고 있습니다. `gitbook-cli`는 Markdown으로 집필된 언어를 html로 빌드해주는 역할을 하고, 로컬에서 온라인에 서비스되는 것과 동일하게 GitBook을 사용할 수 있게 해줍니다.

&nbsp;

📌 gitbook-cli 설치하기

```
npm install -g gitbook-cli@2.1.2
```

&nbsp;

📌 나머지 dependencies 설치하기

```
npm install gitbook
```

&nbsp;

📌 로컬에서 실행하기 (localhost:4000으로 실행)

```
gitbook serve
```

&nbsp;

📌 로컬에서 빌드하기

```
gitbook build
```

&nbsp;

### gitbook-cli @2.1.2

이 템플릿은 `gitbook-cli 2.1.2` 버전을 사용합니다. 최신 버전이 아닌 2.1.2 버전을 사용하는 이유는, 23.02.11 기준 최신 gitbook-cli에서 버그 픽스가 안된 `graceful-fs`를 그대로 사용해, 로컬에서 빌드 시 오류가 발생하기 때문입니다.

&nbsp;

### License

이 소스의 모든 저작권은 [GitBook](https://www.gitbook.com/explore)에 있습니다. GitBook Theme은 MIT License의 저작권 보호 방식을 따릅니다.

&nbsp;