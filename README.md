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


<Terminal-log.txt>

PowerShell transcript start
Start time: 20260728222201
Username: gim-on-yuui-MacBookAir\onyoosfolder
RunAs User: gim-on-yuui-MacBookAir\onyoosfolder
Configuration Name: 
Machine: gim-on-yuui-MacBookAir (Unix 15.6.1)
Host Application: /usr/local/microsoft/powershell/7/pwsh.dll
Process ID: 28036
PSVersion: 7.6.4
PSEdition: Core
GitCommitId: 7.6.4
OS: macOS 15.6.1
Platform: Unix
PSCompatibleVersions: 1.0, 2.0, 3.0, 4.0, 5.0, 5.1, 6.0, 7.0
PSRemotingProtocolVersion: 2.4
SerializationVersion: 1.1.0.1
WSManStackVersion: 3.0
**********************
Transcript started, output file is terminal-log.txt
PS /Users/onyoosfolder/Documents/codyssey-mission1> Get-Location

Path
----
/Users/onyoosfolder/Documents/codyssey-mission1

PS /Users/onyoosfolder/Documents/codyssey-mission1> Get-ChildItem

    Directory: /Users/onyoosfolder/Documents/codyssey-mission1

UnixMode         User Group         LastWriteTime         Size Name
--------         ---- -----         -------------         ---- ----
drwxr-xr-x onyoosfold staff      2026. 7. 28. 22:          160 practice
                   er                          20
-rw-r--r-- onyoosfold staff      2026. 7. 28. 22:          747 terminal-log.txt
                   er                          22

PS /Users/onyoosfolder/Documents/codyssey-mission1> Get-ChildItem -Force

    Directory: /Users/onyoosfolder/Documents/codyssey-mission1

UnixMode         User Group         LastWriteTime         Size Name
--------         ---- -----         -------------         ---- ----
drwxr-xr-x onyoosfold staff      2026. 7. 28. 22:          160 practice
                   er                          20
-rw-r--r-- onyoosfold staff      2026. 7. 28. 22:            0 hidden.txt
                   er                          08
-rw-r--r-- onyoosfold staff      2026. 7. 28. 22:         1267 terminal-log.txt
                   er                          22

PS /Users/onyoosfolder/Documents/codyssey-mission1> New-Item -ItemType File -Name hidden.txt
New-Item: The file '/Users/onyoosfolder/Documents/codyssey-mission1/hidden.txt' already exists.
New-Item: The file '/Users/onyoosfolder/Documents/codyssey-mission1/hidden.txt' already exists.
PS /Users/onyoosfolder/Documents/codyssey-mission1> (Get-Item hidden.txt).Attributes = "Hidden"
Get-Item: Could not find item /Users/onyoosfolder/Documents/codyssey-mission1/hidden.txt.
Get-Item: Could not find item /Users/onyoosfolder/Documents/codyssey-mission1/hidden.txt.
InvalidOperation: The property 'Attributes' cannot be found on this object. Verify that the property exists and can be set.
InvalidOperation: The property 'Attributes' cannot be found on this object. Verify that the property exists and can be set.
PS /Users/onyoosfolder/Documents/codyssey-mission1> Get-ChildItem

    Directory: /Users/onyoosfolder/Documents/codyssey-mission1

UnixMode         User Group         LastWriteTime         Size Name
--------         ---- -----         -------------         ---- ----
drwxr-xr-x onyoosfold staff      2026. 7. 28. 22:          160 practice
                   er                          20
-rw-r--r-- onyoosfold staff      2026. 7. 28. 22:         2727 terminal-log.txt
                   er                          22

PS /Users/onyoosfolder/Documents/codyssey-mission1> Get-ChildItem -Force

    Directory: /Users/onyoosfolder/Documents/codyssey-mission1

UnixMode         User Group         LastWriteTime         Size Name
--------         ---- -----         -------------         ---- ----
drwxr-xr-x onyoosfold staff      2026. 7. 28. 22:          160 practice
                   er                          20
-rw-r--r-- onyoosfold staff      2026. 7. 28. 22:            0 hidden.txt
                   er                          08
-rw-r--r-- onyoosfold staff      2026. 7. 28. 22:         3247 terminal-log.txt
                   er                          22

PS /Users/onyoosfolder/Documents/codyssey-mission1> New-Item -ItemType Directory -Name practice
New-Item: An item with the specified name /Users/onyoosfolder/Documents/codyssey-mission1/practice already exists.
New-Item: An item with the specified name /Users/onyoosfolder/Documents/codyssey-mission1/practice already exists.
PS /Users/onyoosfolder/Documents/codyssey-mission1> Get-ChildItem

    Directory: /Users/onyoosfolder/Documents/codyssey-mission1

UnixMode         User Group         LastWriteTime         Size Name
--------         ---- -----         -------------         ---- ----
drwxr-xr-x onyoosfold staff      2026. 7. 28. 22:          160 practice
                   er                          20
-rw-r--r-- onyoosfold staff      2026. 7. 28. 22:         4224 terminal-log.txt
                   er                          22

PS /Users/onyoosfolder/Documents/codyssey-mission1> cd practice
PS /Users/onyoosfolder/Documents/codyssey-mission1/practice> Get-Location

Path
----
/Users/onyoosfolder/Documents/codyssey-mission1/practice

PS /Users/onyoosfolder/Documents/codyssey-mission1/practice> New-Item -ItemType File -Name empty.txt
New-Item: The file '/Users/onyoosfolder/Documents/codyssey-mission1/practice/empty.txt' already exists.
New-Item: The file '/Users/onyoosfolder/Documents/codyssey-mission1/practice/empty.txt' already exists.
PS /Users/onyoosfolder/Documents/codyssey-mission1/practice> "Codyssey Mission 1 PowerShell Practice" | Set-Content hello.txt
PS /Users/onyoosfolder/Documents/codyssey-mission1/practice> Get-ChildItem

    Directory: /Users/onyoosfolder/Documents/codyssey-mission1/practice

UnixMode         User Group         LastWriteTime         Size Name
--------         ---- -----         -------------         ---- ----
drwxr-xr-x onyoosfold staff      2026. 7. 28. 22:           96 backup
                   er                          18
-rw-r--r-- onyoosfold staff      2026. 7. 28. 22:            0 empty.txt
                   er                          12
-rw-r--r-- onyoosfold staff      2026. 7. 28. 22:           39 hello.txt
                   er                          22

PS /Users/onyoosfolder/Documents/codyssey-mission1/practice> Get-Content hello.txt
Codyssey Mission 1 PowerShell Practice
PS /Users/onyoosfolder/Documents/codyssey-mission1/practice> Get-Content empty.txt
PS /Users/onyoosfolder/Documents/codyssey-mission1/practice> Copy-Item hello.txt hello-copy.txt
PS /Users/onyoosfolder/Documents/codyssey-mission1/practice> Get-ChildItem

    Directory: /Users/onyoosfolder/Documents/codyssey-mission1/practice

UnixMode         User Group         LastWriteTime         Size Name
--------         ---- -----         -------------         ---- ----
drwxr-xr-x onyoosfold staff      2026. 7. 28. 22:           96 backup
                   er                          18
-rw-r--r-- onyoosfold staff      2026. 7. 28. 22:            0 empty.txt
                   er                          12
-rw-r--r-- onyoosfold staff      2026. 7. 28. 22:           39 hello-copy.txt
                   er                          22
-rw-r--r-- onyoosfold staff      2026. 7. 28. 22:           39 hello.txt
                   er                          22

PS /Users/onyoosfolder/Documents/codyssey-mission1/practice> Get-Content hello-copy.txt
Codyssey Mission 1 PowerShell Practice
PS /Users/onyoosfolder/Documents/codyssey-mission1/practice> Rename-Item hello-copy.txt renamed.txt
PS /Users/onyoosfolder/Documents/codyssey-mission1/practice> Get-ChildItem

    Directory: /Users/onyoosfolder/Documents/codyssey-mission1/practice

UnixMode         User Group         LastWriteTime         Size Name
--------         ---- -----         -------------         ---- ----
drwxr-xr-x onyoosfold staff      2026. 7. 28. 22:           96 backup
                   er                          18
-rw-r--r-- onyoosfold staff      2026. 7. 28. 22:            0 empty.txt
                   er                          12
-rw-r--r-- onyoosfold staff      2026. 7. 28. 22:           39 hello.txt
                   er                          22
-rw-r--r-- onyoosfold staff      2026. 7. 28. 22:           39 renamed.txt
                   er                          22

PS /Users/onyoosfolder/Documents/codyssey-mission1/practice> Get-Content renamed.txt
Codyssey Mission 1 PowerShell Practice
PS /Users/onyoosfolder/Documents/codyssey-mission1/practice> New-Item -ItemType Directory -Name backup
New-Item: An item with the specified name /Users/onyoosfolder/Documents/codyssey-mission1/practice/backup already exists.
New-Item: An item with the specified name /Users/onyoosfolder/Documents/codyssey-mission1/practice/backup already exists.
PS /Users/onyoosfolder/Documents/codyssey-mission1/practice> Move-Item renamed.txt backup
Move-Item: The file '/Users/onyoosfolder/Documents/codyssey-mission1/practice/backup/renamed.txt' already exists.
Move-Item: The file '/Users/onyoosfolder/Documents/codyssey-mission1/practice/backup/renamed.txt' already exists.
PS /Users/onyoosfolder/Documents/codyssey-mission1/practice> Get-ChildItem

    Directory: /Users/onyoosfolder/Documents/codyssey-mission1/practice

UnixMode         User Group         LastWriteTime         Size Name
--------         ---- -----         -------------         ---- ----
drwxr-xr-x onyoosfold staff      2026. 7. 28. 22:           96 backup
                   er                          18
-rw-r--r-- onyoosfold staff      2026. 7. 28. 22:            0 empty.txt
                   er                          12
-rw-r--r-- onyoosfold staff      2026. 7. 28. 22:           39 hello.txt
                   er                          22
-rw-r--r-- onyoosfold staff      2026. 7. 28. 22:           39 renamed.txt
                   er                          22

PS /Users/onyoosfolder/Documents/codyssey-mission1/practice> Get-ChildItem backup

    Directory: /Users/onyoosfolder/Documents/codyssey-mission1/practice/backup

UnixMode         User Group         LastWriteTime         Size Name
--------         ---- -----         -------------         ---- ----
-rw-r--r-- onyoosfold staff      2026. 7. 28. 22:           39 renamed.txt
                   er                          12

PS /Users/onyoosfolder/Documents/codyssey-mission1/practice> Get-Content backup\renamed.txt
Codyssey Mission 1 PowerShell Practice
PS /Users/onyoosfolder/Documents/codyssey-mission1/practice> New-Item -ItemType File -Name delete-me.txt

    Directory: /Users/onyoosfolder/Documents/codyssey-mission1/practice

UnixMode         User Group         LastWriteTime         Size Name
--------         ---- -----         -------------         ---- ----
-rw-r--r-- onyoosfold staff      2026. 7. 28. 22:            0 delete-me.txt
                   er                          22

PS /Users/onyoosfolder/Documents/codyssey-mission1/practice> Get-ChildItem

    Directory: /Users/onyoosfolder/Documents/codyssey-mission1/practice

UnixMode         User Group         LastWriteTime         Size Name
--------         ---- -----         -------------         ---- ----
drwxr-xr-x onyoosfold staff      2026. 7. 28. 22:           96 backup
                   er                          18
-rw-r--r-- onyoosfold staff      2026. 7. 28. 22:            0 delete-me.txt
                   er                          22
-rw-r--r-- onyoosfold staff      2026. 7. 28. 22:            0 empty.txt
                   er                          12
-rw-r--r-- onyoosfold staff      2026. 7. 28. 22:           39 hello.txt
                   er                          22
-rw-r--r-- onyoosfold staff      2026. 7. 28. 22:           39 renamed.txt
                   er                          22

PS /Users/onyoosfolder/Documents/codyssey-mission1/practice> Remove-Item delete-me.txt
PS /Users/onyoosfolder/Documents/codyssey-mission1/practice> Get-ChildItem

    Directory: /Users/onyoosfolder/Documents/codyssey-mission1/practice

UnixMode         User Group         LastWriteTime         Size Name
--------         ---- -----         -------------         ---- ----
drwxr-xr-x onyoosfold staff      2026. 7. 28. 22:           96 backup
                   er                          18
-rw-r--r-- onyoosfold staff      2026. 7. 28. 22:            0 empty.txt
                   er                          12
-rw-r--r-- onyoosfold staff      2026. 7. 28. 22:           39 hello.txt
                   er                          22
-rw-r--r-- onyoosfold staff      2026. 7. 28. 22:           39 renamed.txt
                   er                          22

PS /Users/onyoosfolder/Documents/codyssey-mission1/practice> New-Item -ItemType Directory -Name delete-folder

    Directory: /Users/onyoosfolder/Documents/codyssey-mission1/practice

UnixMode         User Group         LastWriteTime         Size Name
--------         ---- -----         -------------         ---- ----
drwxr-xr-x onyoosfold staff      2026. 7. 28. 22:           64 delete-folder
                   er                          22

PS /Users/onyoosfolder/Documents/codyssey-mission1/practice> Get-ChildItem

    Directory: /Users/onyoosfolder/Documents/codyssey-mission1/practice

UnixMode         User Group         LastWriteTime         Size Name
--------         ---- -----         -------------         ---- ----
drwxr-xr-x onyoosfold staff      2026. 7. 28. 22:           96 backup
                   er                          18
drwxr-xr-x onyoosfold staff      2026. 7. 28. 22:           64 delete-folder
                   er                          22
-rw-r--r-- onyoosfold staff      2026. 7. 28. 22:            0 empty.txt
                   er                          12
-rw-r--r-- onyoosfold staff      2026. 7. 28. 22:           39 hello.txt
                   er                          22
-rw-r--r-- onyoosfold staff      2026. 7. 28. 22:           39 renamed.txt
                   er                          22

PS /Users/onyoosfolder/Documents/codyssey-mission1/practice> Remove-Item delete-folder
PS /Users/onyoosfolder/Documents/codyssey-mission1/practice> Get-ChildItem

    Directory: /Users/onyoosfolder/Documents/codyssey-mission1/practice

UnixMode         User Group         LastWriteTime         Size Name
--------         ---- -----         -------------         ---- ----
drwxr-xr-x onyoosfold staff      2026. 7. 28. 22:           96 backup
                   er                          18
-rw-r--r-- onyoosfold staff      2026. 7. 28. 22:            0 empty.txt
                   er                          12
-rw-r--r-- onyoosfold staff      2026. 7. 28. 22:           39 hello.txt
                   er                          22
-rw-r--r-- onyoosfold staff      2026. 7. 28. 22:           39 renamed.txt
                   er                          22

PS /Users/onyoosfolder/Documents/codyssey-mission1/practice> Get-Location

Path
----
/Users/onyoosfolder/Documents/codyssey-mission1/practice

PS /Users/onyoosfolder/Documents/codyssey-mission1/practice> Get-ChildItem -Recurse -Force

    Directory: /Users/onyoosfolder/Documents/codyssey-mission1/practice

UnixMode         User Group         LastWriteTime         Size Name
--------         ---- -----         -------------         ---- ----
drwxr-xr-x onyoosfold staff      2026. 7. 28. 22:           96 backup
                   er                          18
-rw-r--r-- onyoosfold staff      2026. 7. 28. 22:            0 empty.txt
                   er                          12
-rw-r--r-- onyoosfold staff      2026. 7. 28. 22:           39 hello.txt
                   er                          22
-rw-r--r-- onyoosfold staff      2026. 7. 28. 22:           39 renamed.txt
                   er                          22

    Directory: /Users/onyoosfolder/Documents/codyssey-mission1/practice/backup

UnixMode         User Group         LastWriteTime         Size Name
--------         ---- -----         -------------         ---- ----
-rw-r--r-- onyoosfold staff      2026. 7. 28. 22:           39 renamed.txt
                   er                          12

PS /Users/onyoosfolder/Documents/codyssey-mission1/practice> cd ..
PS /Users/onyoosfolder/Documents/codyssey-mission1> Stop-Transcript
**********************
PowerShell transcript end
End time: 20260728222201
**********************
