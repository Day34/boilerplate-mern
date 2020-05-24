# Github SSH Key 등록 (Mac 기준)
* [GitHub 공식 매뉴얼](https://help.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh)

## [SSH Key 존재 여부 확인](https://help.github.com/en/github/authenticating-to-github/checking-for-existing-ssh-keys)
* SSH Key 확인하기
```
ls -al ~/.ssh
```
* 아래와 같은 파일 이름이 있다면 SSH Key가 존재하는 것
```
id_rsa.pub
id_ecdsa.pub
id_ed25519.pub
```
* 해당 파일을 사용해서 등록하려면 SSH Key 새로 생성하는 단계는 생략하고, ssh-agent에 등록하는 단계로 이동

## [SSH Key 새로 생성](https://help.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#generating-a-new-ssh-key)
* 새로운 Key 생성
```
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```
* 생성 과정 (그냥 다 Enter로 넘겨도 무방)
```
> Generating public/private rsa key pair.
> Enter a file in which to save the key (/Users/you/.ssh/id_rsa): [Press enter]
> Enter passphrase (empty for no passphrase): [Type a passphrase]
> Enter same passphrase again: [Type passphrase again]
```

## [SSH Key를 ssh-agent에 등록](https://help.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#adding-your-ssh-key-to-the-ssh-agent)
* ssh-agent 백그라운드에서 시작
```
eval "$(ssh-agent -s)"
```

* ssh config 파일 수정
```
vi ~/.ssh/config
```

* 아래 내용을 입력
```
Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_rsa
```

* ssh-agent에 추가
```
ssh-add -K ~/.ssh/id_rsa
```

## [SSH Key를 Github에 등록](https://help.github.com/en/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account)
* public key 복사
```
cat ~/.ssh/id_rsa.pub
```

* Github에 등록
```
Setting > SSH and GPG Keys > New SSH Key

Title : 원하는 이름
Key : 복사한 Key 입력

Add SSH Key
```

## [등록 잘 됐는지 확인하기](https://help.github.com/en/github/authenticating-to-github/testing-your-ssh-connection)
* SSH 접속 시도
```
ssh -T git@github.com
```

* 첫 접속 시 접속하겠냐고 묻는 질문
```
> The authenticity of host 'github.com (IP ADDRESS)' can't be established.
> RSA key fingerprint is 16:27:ac:a5:76:28:2d:36:63:1b:56:4d:eb:df:a6:48.
> Are you sure you want to continue connecting (yes/no)? yes
```

* 정상적으로 접속 되는 것 확인
```
> Hi username! You've successfully authenticated, but GitHub does not
> provide shell access.
```

* username에 등록 한 계정 이름이 나오면 성공