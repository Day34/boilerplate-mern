# 사전 요구 사항
* [git](https://git-scm.com/download/mac)
* [docker](https://docs.docker.com/docker-for-mac/install/)
* [docker-compose](https://docs.docker.com/compose/install/#install-compose-on-macos)
* [nodejs](https://nodejs.org/ko/download/)
* [yarn](https://classic.yarnpkg.com/en/docs/install/#mac-stable)

# Github 저장소 세팅
* [이슈 Label 세팅](readme-files/github-labels.md)
* [SSH Key 등록](readme-files/github-ssh-key.md)

# 처음 시작한다면
* 환경 변수 파일 복사 및 서브 모듈 초기화
```
./init.sh
```

# 서비스 시작하기
## 도커 컨테이너 시작
```sh
./start.sh
```

# 서비스 종료하기
* 도커 컨테이너 종료
* 옵션
  * Kill & Remove : 현재 실행 중인 컨테이너 종료 및 삭제
  * Remove Images : 현재 실행 중인 컨테이너 종료 및 삭제. 그리고 다운 받은 모든 이미지 삭제
  * Prune : 현재 중지 된 모든 컨테이너, 사용 안하는 이미지, 네트워크, 볼륨 그리고 빌드 캐시 삭제
  * Quit : 아무것도 안 함
`control + c` 를 눌러서 명령 줄로 이동한 후 아래 명령 실행
```sh
./stop.sh
```

# 초기 세팅

# 에러 해결