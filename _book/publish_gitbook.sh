# gitbook 의존 파일을 설치하고 gitbook 빌드를 돌린다.
gitbook build

# gitbook build로 생긴 _book폴더 아래 모든 정보를 현재 위치로 가져온다.
cp -R _book/* .

# 커밋
git commit -a -m "Update docs"

# gh-pages 브랜치에 PUSH!
git push origin gh-pages

# 다시 master 브랜치로 돌아온다.
git checkout master