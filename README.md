# GitBook Theme

Live Demo : https://taedonn.github.io/gitbook-theme/

[![Node Version](https://img.shields.io/badge/featured%20on-Node%20%4020.10.0-%2368a063)](#) [![NPM Version](https://img.shields.io/badge/featured%20on-NPM%20%4010.2.3-%23cc3534)](#) [![Gitbook Version](https://img.shields.io/badge/featured%20on-gitbook--cli%20%402.1.2-%23333333)](#)

&nbsp;

### About This Template

[GitHub 레포지토리 바로가기](https://github.com/taedonn/gitbook-theme)

이 템플릿은 Gitbook의 대표적인 블로그 템플릿 중 하나인 GitBook Theme입니다.

&nbsp;

### About GitBook

[GitBook 바로가기](https://www.gitbook.com/explore)

GitBook은 티스토리와 유사한 블로그 플랫폼으로, GitHub과 연동해 사용할 수 있어 주로 개발자들이 개발 서적을 집필하는데 자주 사용됩니다.

&nbsp;

### gitbook-cli

이 템플릿은 `gitbook-cli`라는 오픈소스 패키지를 사용하고 있습니다. `gitbook-cli`는 Markdown으로 집필된 언어를 html로 빌드해주는 역할을 하고, 로컬에서 온라인에 서비스되는 것과 동일하게 GitBook을 사용할 수 있게 해줍니다. gitbook-cli는 더 이상 업데이트를 하지 않겠다고 선언한 레거시 패키지이기 때문에, 최신 노드 버전에서 호환이 되지 않을 수 있습니다.
>node 16.13.2 버전 기준으로 파일 수정 시 미리보기가 바로 업데이트 됐지만, 이후 버전에서는 미리보기가 바로 업데이트 되지 않는 걸 확인했습니다. 사용하는데 불편함이 있다면, 노드 버전을 16.X로 변경 후 사용해 주세요.

&nbsp;

#### 패키지 설치

레포지토리를 복사한 후 아래 커멘드를 순서대로 입력하면 패키지 설치가 완료됩니다.

📌 gitbook-cli 설치하기

```bash
npm i -g gitbook-cli@2.1.2
```

📌 dependencies 설치하기

```bash
npm install
```

📌 gitbook, gitbook plugin 설치하기

```bash
gitbook install
```

&nbsp;

#### 로컬에서 실행

📌 localhost:4000으로 실행

```bash
gitbook serve
# 또는
npm start
```

&nbsp;

### gitbook-cli @2.1.2

이 템플릿은 `gitbook-cli 2.1.2` 버전을 사용합니다. 최신 버전이 아닌 2.1.2 버전을 사용하는 이유는, 23.02.11 기준 최신 gitbook-cli에서 버그 픽스가 안된 `graceful-fs`를 그대로 사용해, 로컬에서 빌드 시 오류가 발생하기 때문입니다.

&nbsp;

### License

이 소스의 모든 저작권은 [GitBook](https://www.gitbook.com/explore)에 있습니다. GitBook Theme은 MIT License의 저작권 보호 방식을 따릅니다.

&nbsp;