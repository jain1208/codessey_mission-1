# Codyssey 미션 1

## 1. 프로젝트 개요

이번 미션에서는 PowerShell 터미널과 Docker를 활용하여 기본적인 파일 관리와 컨테이너 환경을 실습하였다.

실습 내용은 다음과 같다.

- PowerShell을 이용한 파일 및 폴더 관리
- Docker Desktop 설치
- Hello World 컨테이너 실행
- Ubuntu 컨테이너 실행
- Dockerfile 작성
- Nginx 기반 Docker 이미지 생성
- 웹 서버 실행 및 localhost 접속 확인
- GitHub 저장소 생성 및 프로젝트 관리

---

# 2. 실행 환경

| 항목 | 내용 |
|------|------|
| 운영체제 | macOS |
| 터미널 | PowerShell 7 |
| Docker | Docker Desktop 29.6.2 |
| Base Image | nginx:alpine |
| 웹 브라우저 | localhost:8080 |

---

# 3. PowerShell 터미널 실습

## 수행 체크리스트

- 현재 위치 확인
- 파일 및 폴더 목록 확인
- 숨김 파일 포함 목록 확인
- 폴더 생성
- 폴더 이동
- 빈 파일 생성
- 파일 내용 작성
- 파일 내용 확인
- 파일 복사
- 파일 이름 변경
- 파일 이동
- 파일 삭제

---

## 현재 위치 확인

```powershell
Get-Location
```

실행 결과

```
/Users/onyoosfolder/Documents/codyssey-mission1
```

---

## 파일 및 폴더 목록 확인

```powershell
Get-ChildItem
```

숨김 파일 포함

```powershell
Get-ChildItem -Force
```

---

## 폴더 생성

```powershell
New-Item -ItemType Directory -Name practice
```

---

## 폴더 이동

```powershell
Set-Location practice
```

---

## 빈 파일 생성

```powershell
New-Item -ItemType File -Name empty.txt
```

---

## 파일 내용 작성

```powershell
"Codyssey Mission 1 PowerShell Practice" | Set-Content hello.txt
```

파일 내용 확인

```powershell
Get-Content hello.txt
```

실행 결과

```
Codyssey Mission 1 PowerShell Practice
```

---

## 파일 복사

```powershell
Copy-Item hello.txt hello-copy.txt
```

---

## 파일 이름 변경

```powershell
Rename-Item hello-copy.txt renamed.txt
```

---

## 파일 이동

```powershell
Move-Item renamed.txt backup
```

---

## 파일 삭제

```powershell
Remove-Item delete-me.txt
```

---

### 실습 결과

PowerShell을 이용하여 파일 생성, 복사, 이동, 이름 변경 및 삭제 과정을 실습하였다.

---

# 4. Docker 실습

## Docker 설치 확인

```bash
docker --version
```

실행 결과

```
Docker version 29.6.2
```

---

## Docker 정보 확인

```bash
docker info
```

확인 내용

- Docker Desktop
- Linux Container
- Architecture : aarch64
- CPUs : 8
- Memory : 7.75GiB

---

## Hello World 실행

```bash
docker run hello-world
```

Docker가 정상적으로 설치되고 실행되는 것을 확인하였다.

---

## 이미지 목록 확인

```bash
docker images
```

---

## 컨테이너 목록 확인

실행 중인 컨테이너

```bash
docker ps
```

전체 컨테이너

```bash
docker ps -a
```

---

## Ubuntu 컨테이너 실행

```bash
docker run -it --name ubuntu-test ubuntu bash
```

컨테이너 내부 명령

```bash
ls
echo "Hello from Ubuntu"
pwd
exit
```

Ubuntu 컨테이너가 정상적으로 실행되는 것을 확인하였다.

---

## Dockerfile 작성

```dockerfile
FROM nginx:alpine

LABEL org.opencontainers.image.title="codyssey-mission1"

COPY site/ /usr/share/nginx/html/
```

---

## Docker 이미지 생성

```bash
docker build -t codyssey-mission1 .
```

Dockerfile을 이용하여 이미지를 생성하였다.

---

## 웹 컨테이너 실행

```bash
docker run -d -p 8080:80 --name codyssey-web codyssey-mission1
```

---

## 웹 접속 확인

브라우저에서 확인

```
http://localhost:8080
```

웹 페이지가 정상적으로 출력되는 것을 확인하였다.

---

# 5. 프로젝트 구조

```text
codyssey-mission1
├── Dockerfile
├── README.md
├── terminal-log.txt
├── docker-log.txt
├── setup-docker.sh
├── practice
│   ├── empty.txt
│   ├── hello.txt
│   ├── hello-copy.txt
│   ├── renamed.txt
│   └── backup
├── site
│   └── index.html
└── screenshots
```

---

# 6. 실행 로그

PowerShell 수행 로그

```
terminal-log.txt
```

Docker 수행 로그

```
docker-log.txt
```

---

# 7. GitHub 저장소

GitHub 저장소를 생성하여 프로젝트를 관리하였다.

저장소 주소

```
https://github.com/jain1208/codessey_mission-1
```

<img width="1276" height="982" alt="image" src="https://github.com/user-attachments/assets/e8bcc613-c3bd-4d6b-9642-76b98aff34c6" />

---

# 8. 실습 결과

이번 미션을 통해 PowerShell을 이용한 파일 및 폴더 관리 방법을 익혔으며, Docker를 이용하여 컨테이너 생성, 이미지 빌드, 웹 서버 실행 과정을 실습하였다.

또한 Dockerfile을 이용하여 Nginx 기반의 정적 웹 페이지를 배포하고, GitHub를 이용하여 프로젝트를 관리하는 방법을 경험하였다.
