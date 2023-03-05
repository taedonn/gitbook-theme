# main 브랜치로 접근
git checkout main

# gitbook 빌드
gitbook build

# gh-pages로 접근
git checkout gh-pages

# gh-pages에 모든 변경사항 스테이징
git add .

# gh-pages에 커밋
git commit -a -m "Update gitbook"

# gh-pages에 _book 파일 푸시
git subtree push --prefix _book origin gh-pages

# 다시 master 브랜치로 돌아온다.
git checkout main

# main에 스테이징된 파일 푸시
git push origin main