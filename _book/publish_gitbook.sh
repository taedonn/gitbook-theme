# main 브랜치로 접근
git checkout main

# gitbook 의존 파일을 설치하고 gitbook 빌드를 돌린다.
gitbook build

# gh-pages로 접근
git checkout gh-pages

# gh-pages에 스테이징
git add .

# gh-pages에 커밋
git commit -a -m "Update gitbook"

# gh-pages 브랜치에 _book 파일 푸시
git subtree push --prefix _book origin gh-pages

# 다시 master 브랜치로 돌아온다.
git checkout main

# main에 스테이징된 파일 푸시
git push origin main