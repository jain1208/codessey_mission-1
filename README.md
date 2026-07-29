# Codyssey 미션 1

## 1. 프로젝트 개요

PowerShell 터미널을 사용하여 파일과 폴더를 생성하고,
복사하고, 이동하고, 이름을 변경하고, 삭제하는 방법을 실습하였다.

## 2. 실행 환경

- 운영체제: macOS (Mac)
- 터미널: PowerShell
- Shell: PowerShell

## 3. 수행 체크리스트

- [x] 현재 위치 확인
- [x] 파일과 폴더 목록 확인
- [x] 숨김 파일 포함 목록 확인
- [x] 폴더 이동
- [x] 폴더 생성
- [x] 빈 파일 생성
- [x] 파일 복사
- [x] 파일 이름 변경
- [x] 파일 이동
- [x] 파일 삭제
- [x] 파일 내용 확인

## 4. 현재 위치 확인

현재 작업 중인 폴더의 위치를 확인하였다.

```powershell
Get-Location
```

실행 결과:

```text
여기에 내 컴퓨터에서 나온 결과를 입력한다.
```

## 5. 목록 확인

현재 폴더의 파일과 폴더 목록을 확인하였다.

```powershell
Get-ChildItem
```

숨김 파일을 포함한 목록도 확인하였다.

```powershell
Get-ChildItem -Force
```

## 6. 폴더 생성 및 이동

`practice` 폴더를 생성하였다.

```powershell
New-Item -ItemType Directory -Name practice
```

생성한 폴더로 이동하였다.

```powershell
Set-Location practice
```

## 7. 빈 파일 생성

`empty.txt`라는 빈 파일을 생성하였다.

```powershell
New-Item -ItemType File -Name empty.txt
```

## 8. 파일 내용 작성 및 확인

`hello.txt` 파일에 문장을 저장하였다.

```powershell
"Codyssey Mission 1 PowerShell Practice" | Set-Content hello.txt
```

파일 내용을 확인하였다.

```powershell
Get-Content hello.txt
```

실행 결과:

```text
Codyssey Mission 1 PowerShell Practice
```

## 9. 파일 복사

`hello.txt`를 `hello-copy.txt`로 복사하였다.

```powershell
Copy-Item hello.txt hello-copy.txt
```

## 10. 파일 이름 변경

`hello-copy.txt` 파일의 이름을 `renamed.txt`로 변경하였다.

```powershell
Rename-Item hello-copy.txt renamed.txt
```

## 11. 파일 이동

`renamed.txt` 파일을 `backup` 폴더로 이동하였다.

```powershell
Move-Item renamed.txt backup
```

## 12. 파일 삭제

실습용 파일을 삭제하였다.

```powershell
Remove-Item delete-me.txt
```

## 13. 실습 결과

PowerShell 명령어를 사용하여 파일과 폴더를 직접 관리하는 방법을 익혔다.
