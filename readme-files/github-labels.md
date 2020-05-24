# Github Label 세팅

## Github 액세스 토큰 발급
[https://github.com/settings/tokens](https://github.com/settings/tokens)
- `Generate new token` 클릭
- 원하는 이름 입력
- `scopes`에서 repo 선택

## 실행
```sh
npx github-label-sync --access-token xxxxxx --labels labels.json github-account/repo-name
```