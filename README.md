![venom](https://capsule-render.vercel.app/api?type=venom&height=200&text=한화시스템%20SW%20CAMP%204기%202조&fontSize=40&color=100:ff7f00,100:87ceeb&stroke=ffffff)

---
<a href = "https://demianstudio.notion.site/2-OH-JO-e87da7c22c564501ac72fbbf0f6915f4?pvs=4"><img src="https://img.shields.io/badge/팀 Notion-ffffff?style=flat&logo=Notion&logoColor=black" /></a>

#### 🌱 TEAM
[😎곽윤경](https://github.com/noctesilente)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[😶‍🌫️김규린](https://github.com/kyulin-Kim)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[🦄박경덕](https://github.com/DemianStudio)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[🎸이기연](https://github.com/Leegiyeon)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[💩이현우](https://github.com/daersh)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[😺임원재](https://github.com/moomint8)

---

#### 🚀 Use Tech
![Ubuntu](https://img.shields.io/badge/ubuntu-orange?style=for-the-badge&logo=ubuntu)
![linux](https://img.shields.io/badge/linux-black?style=for-the-badge&logo=linux)
![mariadb](https://img.shields.io/badge/mariadb-gray?style=for-the-badge&logo=mariadb)
### 🗓️ 전체 프로젝트 일정
<details> 
<summary>프로젝트 일정 : 2024년 01월 02일 ~ 2024년 01월 09일(WBS)</summary>
  <div align="center">
    <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/2308712b-988b-49a9-bfb9-a2245533f958" alt="">
    <p align="center">WBS</p>
  </div>

</details>


---
# 📌 목차
- [1. 프로젝트 개요](#1-프로젝트-개요)
  + [프로젝트 시나리오](#프로젝트-시나리오)
  + [클라우드 활용 현황 및 기대에 대한 시각 자료](#클라우드-활용-현황-및-기대에-대한-시각-자료)
- [2. 요구사항 정의](#2-요구사항-정의)
  + [📖 시나리오](#-시나리오)
  + [📘 시스템(기능명세)](#-시스템기능명세)
  + [✅ 요구사항 정의서](#-요구사항-정의서)
- [3. DB 모델링 및 개선과정](#3-DB-모델링-및-개선과정)
  * [📌 목표](#-목표)
  * [🚀 진행과정](#-진행과정)
- [4. Ubuntu 리눅스에 mariadb 서버 구축](#4-ubuntu-리눅스에-mariadb-서버-구축)
  + [Virtual Box / Ubuntu Linux 실행하여 Replication 서버 구축](#virtual-box--ubuntu-linux-실행하여-replication-서버-구축)
  + [master 환경 설정 단계](#master-환경-설정-단계)
  + [slave 환경 설정 단계](#slave-환경-설정-단계)
  + [slave에서 INSERT 이벤트 방지를 위한 설정](#slave에서-insert-이벤트-방지를-위한-설정)
  + [구축된 Server 정보](#구축된-server-정보)
- [5. 테스트 설계 및 진행](#5-테스트-설계-및-진행)
  + [🖥️ ️테스트 결과](#%EF%B8%8F-%EF%B8%8F테스트-결과)
- [6. 📚 회고](#-회고)

---

# 1. 프로젝트 개요

<p align="center">
    <img src="https://github.com/DemianStudio/DataBase/assets/122339395/d4a7bcb4-e5e6-493c-91bb-eba0426068e3" style="width:100%; height:100%;" />
</p>

---

### 프로젝트 시나리오
**[설정 상황]**
> **CLOUDY**라는 기업은 고객이 데이터를 다양하게 활용할 수 있도록 IT 인프라 기획 및 구축을 도와주는 기업이다.
> 
> **UniVerse**라는 프로젝트명으로 고객(대학)에게 클라우드 서버 기반 대학 통합 관리 시스템을 설계하여 구축하는 서비스를 제공하려고 한다.

**[요구 사항]**
> 고객(대학)은 기존 통합 관리 시스템에서 누적된 학생 데이터를 활용하여 다양하고 학생들이 필요한 맞춤형 서비스를 제공하고자 한다.

**[한계]**
> 고객(대학)이 요구된 서비스를 온프레미스 서버 형태로 제공하려면 맞춤형 서비스를 직접 구축해야한다.
 
**[솔루션]**
> 타 기업의 클라우드 서비스를 기반으로 클라우드 서버를 구축함으로써, 타 기업에서 제공하는 다양한 클라우드 서비스를 이용할 수 있도록 한다.


---
### 클라우드 활용 현황 및 기대에 대한 시각 자료
<div align="center">
<img src="https://image.samsungsds.com/kr/insights/2023_cloud_trends_img01.jpg?queryString=20231030024258" alt="">
<p align="ceneter">[그림 1] 클라우드 활용 현황과 전망</p>
<p align="ceneter">출처 - 2023년 국내 클라우드 컴퓨팅 도입 현황 조사 및 전망 | 인사이트리포트 | 삼성SDS</p>
</div>

<br/>

<div align="center" style="border:1px solid black">
<img src="https://image.samsungsds.com/kr/insights/2023_cloud_trends_img03.jpg?queryString=20231030024258" alt="">
<p align="ceneter">[그림 2] 클라우드에 대한 기대효과의 변화</p>
<p align="ceneter">출처 - 2023년 국내 클라우드 컴퓨팅 도입 현황 조사 및 전망 | 인사이트리포트 | 삼성SDS</p>
</div>
<br/>

---

## 2. 요구사항 정의
### 📖 시나리오

대학 통합 관리 시스템은 학생이 수강 관리, 출결 관리, 학적 조회, 대여 서비스 관리, 건물의 정보를 관리한다.
> ### 학생
>1. 학생은 학교에서 발급해준 학번과 PW로 **로그인**이 가능하다.
>2. 학생은 학번을 제외한 **개인정보(PW, 주소 등) 수정**이 가능하다.
>3. 학생은 PW를 분실하였을 경우, 학생 인증을 통해 **재설정** 가능하다.
>4. 학생은 수강 신청 기간에 **수강을 신청**할 수 있다.
>5. 학생은 **기자재 대여 / 강의실 대관**이 가능하다.
>6. 학생은 본인의 **학적을 조회**할 수 있다.
>7. 학생은 수강 신청 기간 이전에 원하는 강의를 **장바구니에 미리 담을** 수 있다.
>8. 학생은 수강하고자 하는 **강의를 신청**할 수 있다.(중복)
>9. 학생은 학과의 **커리큘럼을 조회**할 수 있다.
>10. 학생은 수강 중인 강의 **출석을 조회**할 수 있다.
>11. 학생은 자신의 **수강 중인 과목을 조회**할 수 있다.
>12. 학생은 **교수의 정보(이력, 교수실, 연구실, 논문 등)를 조회**할 수 있다.


> ### 교수
>1. 교수는 학교에서 발급해준 ID와 PW로 **로그인**이 가능하다.
>2. PW를 분실하였을 경우, **재설정** 가능하다.
>3. 교수는 **기자재 대여 / 강의실 대관**이 가능하다.
>4. 교수는 자신의 정보(이력, 교수실, 연구실, 논문 등)를 **열람하고 수정**할 수 있다.
>5. 교수는 자신의 **강의를 등록**할 수 있다.
>6. 교수는 자신의 강의를 수강하는 학생의 **출결을 관리**할 수 있다.
>7. 교수는 자신의 강의를 수강하는 학생의 **성적을 결정**할 수 있다.
>8. 교수는 **학생의 정보를 조회**할 수 있다.



> ### 확장 가능 기능
>1. 사용자는 시스템에서 제공하는 **실내 혼잡도 정보를 강의실 별로 조회**할 수 있다.
>2. 사용자는 시스템을 통해 **교내 셔틀버스의 실시간 위치를 조회**할 수 있다.
>3. 사용자는 시스템을 통해 **멘토링에 참여**할 수 있다.
>4. 멘토링에 참여하는 사용자는 해당 **멘토링을 운영하고 관리**할 수 있다.

---


### 📘 시스템(기능명세)

>### 1. 정보 관리
>- 시스템은 학생 정보, 교수 정보, 과목, 강의의 정보를 관리한다.
>### 2. 대여, 대관 관리
>- 시스템은 대여, 대관에 관한 기자재, 대여, 대관 정보를 관리한다.
>### 3. 수강신청 관리
>- 시스템은 수강신청에서 장바구니를 통해 담긴 강좌를 관리한다.
>- 시스템은 수강신청에서 수강 과목 인원을 관리하여 제한 인원을 초과하지 않도록 한다.
>### 4. 출결 관리
>- 시스템은 한 강의에 해당하는 학생들의 출결 정보를 교수에게 제공하고, 학생은 자신의 출결정보만 조회할 수 있다.
>### 5. 실내혼잡도 제공
>- 시스템에서 교내 시설 내 혼잡도 정보를 수신하여 사용자가 특정 장소에 대한 혼잡도 정보를 조회할 수 있다.
>### 6. 교내 셔틀 실시간 위치 제공
>- 시스템에서 교내 셔틀버스에 대한 실시간 위치정보를 수신하여 사용자가 해당 정보를 조회할 수 있다.
>### 7. 학생들 멘토링
>- 방학 기간 중 학생들이 원하는 멘토링 주제와 계획을 학교에 인가 받으면 학교 강의처럼 학기 중 정한 요일, 시간대에 지정된 강의실에서 멘토링을 진행할 수 있다. 이 멘토링은 지도 교수가 지정되며 완료 후 학점 또는 수료증을 제공한다.

---

### ✅ 요구사항 정의서
  <div align="cneter">
    <img src="https://github.com/DemianStudio/DataBase/assets/122339395/e787425d-72c2-4380-a919-b965428216ea" alt="">
    <p align="center">요구사항정의서</p>
  </div>

---

# 3. DB 모델링 및 개선과정

## 📌 **목표**

1. 정규화 이전 ERD
2. 정규화 이후 ERD 및 UPDATE 내용
3. 최종 검토 및 개선

## 🚀 진행과정

### 1. **정규화 이전 ERD**

  <div align="cneter">
    <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/3a3997d4-4495-436e-bec8-5ff967ae2f69"/>
    <p align="center">정규화 이전 ERD</p>
  </div>



  <details>
  <summary>정규화 이전 테이블 정의서</summary>
  <div align="cneter">
    <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/bb9fa74c-03df-4d6b-9492-f8476ef80db5"/>
    <p align="center">정규화 이전 테이블 정의서</p>
  </div>
 </details>



---

### 2. **정규화 이후 ERD**

  <div align="cneter">
    <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/d4a7dd77-d840-47fd-8cc8-a29550e014d6"/>
    <p align="center">정규화 이후 ERD</p>
  </div>

***UPDATE 내용***
> ### 기자재 카테고리
>- 기자재의 종류(노트북, 모니터, 등)를 관리하기 위해 카테고리 테이블 추가

> ### 과목 / 강의
>- 과목 테이블에 있는 전공여부 컬럼을 강의 컬럼으로 이동
>- 같은 과목에 대해 과에 따라 전공/비전공 여부가 나뉠 수 있다고 판단하여 변경

> ### 이수강의
>- 이수년도 추가
   >  - 강의가 폐쇄되거나 강의명이 변경되는 등의 사유가 발생해도 해당 학생이 강의를 이수했다는 기록을 남겨야 하므로 이수년도 추가

> ### 출석부
>- 결석 여부 → 출석 여부
   >  - 좀 더 직관적으로 이해하기 위해 컬럼명 변경

<br/>  

  <details>
  <summary>정규화 이후 테이블 정의서</summary>
  <div align="cneter">
    <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/02adfb88-0ff1-4d75-9ad9-8999e0fd7cb6"/>
    <p align="center">정규화 이후 테이블 정의서</p>
  </div>
 </details>


---

### 3. 최종 검토 및 개선


<div align="center">
  <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/760f487b-f0cb-44af-ba8a-f395800bd37a" alt="">
    <p align="center">논리 모델</p>
</div>

<div align="center">
  <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/023345b8-ed35-4043-90fe-4a48d5342d26" alt="">
    <p align="center">물리 모델</p>
</div>



### 반정규화 과정
***학생***
> **학적 테이블 분리**
>- 학생의 데이터를 필요로 하는 이수강의, 출석부, 대여, 대관, 등 대부분의 테이블은 학생의 학번, 이름만 필요로 함.
>- 나머지 학적 테이블에 담긴 정보들의 경우 학적 조회 시 외에는 거의 필요로 하지 않고 학적 조회 시 해당 내용들이 통합적으로 요구됨.

### 개선 사항

***강의***
>**교수(FK), 강의실(FK) not null → null able**
>- 사이버 강의의 경우 진행하는 강사님이 학교 소속이 아니기 때문에 교수 DB에 존재하지 않고, 강의실 또한 존재하지 않으므로 개선

***출석부***
> **날짜를 추가해 학번, 강의코드, 날짜 세 개로 복합키 구성**
>  - 학번, 강의코드로만 복합키를 형성하는 경우 한 튜플 당 날짜 컬럼에 여러 날짜가 들어가야 하므로 개선
     ***이수강의***
     > **강의코드를 추가해 학번, 강의코드 두 개로 복합키 구성**
> - 한 학번 당 강의를 하나만 수강 가능하거나 한 튜플 당 강의코드에 여러 값이 들어가야 하므로 개선

***기자재, 건물, 교수, 학생***

> **XXX 사진 → XXX_이미지_경로로 컬럼명 변경**
>  - 실제 운영 시 이미지의 URL 또는 서버에 저장된 상대 경로를 저장할 예정이므로 직관적이게 이름을 개선

***과목***

> **커리큘럼코드(FK) not null → null able**
>- 일부 교양, 등 커리큘럼에 포함되지 않는 과목도 있으므로 개선

***교수***

> **학과코드(FK) not null → null able**
>  - 교양을 담당하는 교수나 시간 강사, 등은 학과가 존재하지 않을 수 있으므로 개선

***수강신청, 장바구니, 수강가능학과***

> **강의코드(FK)를 추가해 학번, 강의코드 두 개로 복합키 구성**
> - 학번으로만 강의코드를 구성한 경우 한 학생이 하나의 강의에 대한 요청이 가능하거나, 강의코드 튜플에 여러 값이 들어가야 하므로 개선

***데이터 타입 기입***

> **각 컬럼에 적합한 데이터 TYPE 지정**
>  - VARCHAR 의 경우 다음 조건을 따름

| 컬럼 종류 | 크기 |
  | --- | --- |
| 이름 | VARCHAR(50) |
| 사유,설명 | VARCHAR(1000) |
| 이미지 | VARCHAR(200) |
| 주소 | VARCHAR(300) |
| 국적 | VARCHAR(10) |
| 이메일 | VARCHAR(100) |
| 10글자 미만 짧은 문자열 | VARCHAR(30) |
| 비번 | VARCHAR(100) |
| 강의평가 | VARCHAR(3000) |
<br/>

***NULL 여부 모든 컬럼 지정***

>**NULL 여부가 지정되지 않은 컬럼에 대해 NULL 여부 지정**

***컬럼명 수정***

> - **컬럼명에 테이블명이 중복된 경우 테이블명 생략**
> - **직관적이지 않은 컬럼명의 경우 직관적으로 수정**
> - **많이 사용되는 약어만 한정하여 약어 사용**

<br/>



  <details>
  <summary>최종 테이블 정의서</summary>
  <div align="cneter">
    <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/1d901583-c90c-4a0d-9841-3b45d507bc1e"/>
    <p align="center">최종 테이블 정의서</p>
  </div>
 </details>

---
# 4. Ubuntu 리눅스에 mariadb 서버 구축


### Virtual Box / Ubuntu Linux 실행하여 Replication 서버 구축


> -Master(INSERT, UPDATE, DELETE)\
> -Slave(SELECT)



### master 환경 설정 단계
1. `master` mariaDB 설정 파일 수정
  - 1.1 주석 처리 된 `log_bin, expire_logs_days, max_binlog_size` 항목 주석 제거
  - `bind-adress = 0.0.0.0` 으로 수정
  - Write and Quit
2. mariaDB 재 시작
3. `slave`에서 접속 할 계정 권한 설정
4. `master`의 status에서 file과 position 정보 조회

### slave 환경 설정 단계

1. `slave` mariaDB 설정 파일 수정
  - 아래로 스크롤하여 `[mysqld]` 하단에 `server-id = n` , `relay_log = mysql-relay-bin`, `log_slave_updates = 1` , `read_only = 1` 를 작성 `n` 은 상황에 따라 변경
2. mariaDB 재 시작
3. `slave` 멈추기
4. `change master to master_host = ‘master IP주소’, master_port = 3306, master_user = ‘master’, master_password = ‘master’, master_log_file = ‘master의 file’, master_log_pos=’master 의 position’;`작성
5. `slave` 시작
6. `show slave status \G;`로 slave 상태 확인

### slave에서 INSERT 이벤트 방지를 위한 설정

- `slave` 서버의 `read-only` 옵션 적용 관련

```sql
-- slave 서버에서 slave의 root계정으로 root를 제외한 계정의 user 유저 권한 삭제
update mysql.user set super_priv='N' where user <> 'root';
flush privileges;

-- HeidiSQL에 slave가 접속중이라면 HeidiSQL에서 접속 해제 후 다시 접속 
```
<div align="center">
<img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/32d5e6d9-9b02-4bd3-9723-ab2f9d0b81c3"/>
<p align="center">READ ONLY</p>
</div>


### 구축된 Server 정보
<div align="center">
<img src = "https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/df3b67c0-ea47-41ef-a0cf-f4fc187426e6"/>
<p align="center">구축된 서버 정보</p>
</div>

> ### master_univdb
>- HOST IP: 192.168.0.37
>- Port: 3306

> ### slave_univdb(Replication)
>- HOST IP: 192.168.0.48
>- Port: 3306

---
# 5. 테스트 설계 및 진행
<div align="center">
<img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/0dd09fd8-4306-46cb-bf3f-c9009d24d390"/>
<p align="center">사용자 기반 기능 단위 테스트 정의서</p>
</div>

<div align="center">
<img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/c130899a-5be4-4c29-afc7-8c2dce64875a"/>
<p align="center">테스트 케이스</p>
</div>

## 🖥️ ️테스트 결과

[![GitHub open issues](https://img.shields.io/github/issues/beyond-sw-camp/be04-1st-CLOUDY-UniVerse)](https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/issues)

[![GitHub close issues](https://img.shields.io/github/issues-closed/beyond-sw-camp/be04-1st-CLOUDY-UniVerse)](https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/issues?q=is%3Aissue+is%3Aclosed)

### _Query TEST_
<details>
<summary>#ISSUE_개인정보 조회</summary>
<div>
<figure align="center"> 
  <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/8b72fb8d-811a-46fa-abe4-f7bf3cf58109"/>
    <p>학생이 학번이랑 비밀번호 조회</p>
 </figure>
  <figure align="center"> 
<img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/9253ce7a-4695-430f-80fe-5670fe1630be"/>
    <p>교수가 본인 ID와 비밀번호 조회</p>
 </figure>
</div>
</details>


<details>
<summary>#ISSUE_학과 조회</summary>
<div>
<figure align="center"> 
  <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/83965ac3-ebca-4378-88b5-3422619e0104"/>
  <p>학생이 자신이 속한 학과 정보 조회</p>
  <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/3eaf53a0-623d-46a4-ab32-ff98acbf1aa5"/>
  <p>교수가 자신이 속한 학과 정보 조회</p>
 </figure>
</div>
</details>



<details>
<summary>#ISSUE_교수 조회</summary>
<div>
<figure align="center"> 
  <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/1ee46db9-07fa-4e5f-9cf2-f0bc93b3a2b5"/>
    <p>교수 조회</p>
 </figure>
</div>
</details>


<details>
<summary>#ISSUE_학적 조회</summary>
<div>
<figure align="center"> 
  <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/b72b0c1b-656d-4d68-90c8-61c53e15efe6"/>
  <p>학생이 개인의 학적 정보를 조회</p>
 </figure>
</div>
</details>

<details>
<summary>#ISSUE_성적 조회</summary>
<div>
<figure align="center"> 
  <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/3b075293-aef3-402f-bf7a-3695e05189b8"/>
    <p>성적 조회</p>
 </figure>
</div>
</details>

<details>
<summary>#ISSUE_커리큘럼 조회</summary>
<div>
<figure align="center"> 
  <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/85955338-503c-4342-9109-5c6dcf9d26b8"/>
  <p>학생이 자신의 커리큘럼 맞게 이수해야 하는 강의를 조회</p>
 </figure>
</div>
</details>

<details>
<summary>#ISSUE_수강 신청</summary>
<div>
<figure align="center"> 
  <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/4ea16777-f927-4d92-ae49-4149be29ab3c"/>
  <p>수강 신청 목록 조회</p>
    <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/6125afc2-bf69-4e53-8931-91a099889ce3"/>
  <p>수강 신청 추가 가능한 강의 조회</p>
 </figure>
</div>
</details>

<details>
<summary>#ISSUE_강의 장바구니 조회</summary>
<div>
<figure align="center"> 
  <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/57cdac15-eb03-401e-99ed-73cec9e24bbc"/>
  <p>강의 장바구니 조회</p>
    <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/c0ffc75e-14bf-4c7a-8c7a-719e13a075d3"/>
  <p>추가 가능한 강의 조회</p>
 </figure>
</div>
</details>

<details>
<summary>#ISSUE_수강 내역</summary>
<div>
<figure align="center"> 
  <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/f59029ea-14a9-436a-bcf5-2483d3682391"/>
  <p>수강중인 강의 조회</p>
    <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/a4465394-ed30-45fe-bc8a-cec1e7594ca3"/>
  <p>수강완료한 강의 조회</p>
 </figure>
</div>
</details>

<details>
<summary>#ISSUE_강의 조회</summary>
<div>
<figure align="center"> 
  <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/5a208eac-567c-444b-827f-5db51b838066"/>
  <p>강의 조회</p>
 </figure>
</div>
</details>

<details>
<summary>#ISSUE_수강생 조회</summary>
<div>
<figure align="center"> 
  <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/ab064610-f570-4e41-b86c-2af5b1cf3b1c"/>
  <p>수강생 조회</p>
 </figure>
</div>
</details>

<details>
<summary>#ISSUE_담당 학생 조회</summary>
<div>
<figure align="center"> 
  <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/506f0cb0-4c96-41d3-a4a2-85a9ed8ad3b1"/>
    <p>담당 학생 조회</p>
 </figure>
</div>
</details>

<details>
<summary>#ISSUE_출석 조회</summary>
<div>
<figure align="center"> 
  <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/0e9bdc53-d595-4132-8b84-0896c6ca2134"/>
  <p>강의 조회</p>
 </figure>
</div>
</details>

<details>
<summary>#ISSUE_강의실 대관</summary>
<div>
<figure align="center"> 
  <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/e2741917-b5a2-465b-91c3-cc15dc560c68"/>
  <p>강의실 대관</p>
 </figure>
</div>
</details>

<details>
<summary>#ISSUE_기자재 대여</summary>
<div>
<figure align="center"> 
  <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/f552ea79-4f0f-4362-935b-3d158d6ad3f0"/>
  <p>대여 가능한 기자재 조회</p>
    <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/a55ef47e-1d0b-44d5-a80c-615badd53bce"/>
  <p>학생이 대여한 기자재 조회</p>
    <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/f552ea79-4f0f-4362-935b-3d158d6ad3f0"/>
  <p>교수가 대여한 기자재 조회</p>
 </figure>
</div>
</details>


### _VIEW_
<details>
<summary>모든 학생의 학적을 조회하는 뷰</summary>
<div>
<figure align="center"> 
  <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/88ff8f6b-6b37-40f9-b0cd-ef5275c26249"/>
  <p>모든 학생의 학적을 조회하는 뷰</p>
 </figure>
</div>
</details>

<details>
<summary>특정 학생의 전체 성적을 조회하는 뷰</summary>
<div>
<figure align="center"> 
  <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/93c68267-b80b-4a66-97c3-56f60c5eeda6"/>
  <p>특정 학생의 전체 성적을 조회하는 뷰</p>
 </figure>
</div>
</details>

<details>
<summary>건물,단과,학과 모두 조회하는 뷰</summary>
<div>
<figure align="center"> 
  <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/f2293942-0b04-4de9-a509-0bb1cd8a98c1"/>
  <p>건물,단과,학과 모두 조회하는 뷰</p>
 </figure>
</div>
</details>


### _TRIGGER_
<details>
<summary>성적 입력 시 학적테이블의 평균성적이 업데이트되는 트리거</summary>
<div>
<figure align="center"> 
  <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/113b4208-d7b9-4151-a79a-c0b1940bd746"/>
  <p>성적 입력 시 학적테이블의 평균성적이 업데이트되는 트리거</p>
 </figure>
</div>
</details>

<details>
<summary>기자재 대여 시 수량에 맞춰 해당 기자재의 잔여 수량 수정하는 트리거</summary>
<div>
<figure align="center"> 
  <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/f1a50843-72d2-47d4-acb5-c92e6e7c2727"/>
  <p>기자재 대여 시 수량에 맞춰 해당 기자재의 잔여 수량 수정하는 트리거</p>
 </figure>
</div>
</details>

<details>
<summary>수강신청에 강의 추가 시 장바구니에 일치하는 강의 제거하는 트리거</summary>
<div>
<figure align="center"> 
  <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/blob/develop/docs/프로젝트_구현/tirgger/TRIGGER_DELETE_BASKET_LECTURE.gif"/>
  <p>수강신청에 강의 추가 시 장바구니에 일치하는 강의 제거하는 트리거</p>
 </figure>
</div>
</details>

<details>
<summary>대여가능 여부가 불가(false)로 업데이트 될 경우 대관 테이블에서 해당 강의실에 대한 모든 대관을 삭제하는 트리거</summary>
<div>
<figure align="center"> 
  <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/6a772c85-0b2e-440a-b067-7b8d922ecb74"/>
  <p>대여가능 여부가 불가(false)로 업데이트 될 경우 대관 테이블에서 해당 강의실에 대한 모든 대관을 삭제하는 트리거</p>
 </figure>
</div>
</details>



---


# 📚 회고
## _TEAM_
> 최종 산출물을 검토하는 과정에서 학생과 성적에 대한 데이터를 더 효율적으로 관리할 수 있는 방법 중 하나인 exam_tb 테이블을 생각하지 못한 것에 대한 아쉬움이 있다. 이를 계기로 대상에 대한 관계 요소를 분석하고 정리하는 과정이 중요하다는 것을 알게 되었다.
<br/>

## _MEMBER_

## 😎 곽윤경

> - 필요한 테이블과 컬럼을 나열한 후 ERD CLOUD로 테이블을 생성하고, 정규화 및 비정규화를 통해 점점 효율적인 데이터베이스를 구축하려 했다. 그 과정에서 우리 팀은 수강 관련 기능에 집중했는데 간단한 기능임에도 불구하고 테이블 간 복잡한 관계를 확인하며 실제 시스템의 데이터베이스가 얼마나 복잡한지, 그리고 시스템을 잘 작동시키게 하기 위해서 그 복잡함을 최대한 최소화하고 단순화해서 효율적으로 연결하였는지를 깨닫게 되었다. 초기에는 각자 테이블을 맡아서 따로 생성하고 합치도록 했지만, 모여서 누락된 부분을 채우는 작업이 번거로워 팀 전체가 함께 테이블과 컬럼을 설정하는 시간을 가졌다. 데이터베이스를 초기에 잘 구축하지 않으면 나중에 까다로운 문제가 발생할 수 있다는 인식이 강화되었다. 트리거, 뷰, 조회 등의 기능은 데이터베이스가 잘 구축되었을 때 잘 작동한다는 것을 알 수 있었다. 이렇게 가상의 시스템을 구축하면서 실제 시스템의 데이터베이스를 확인하고 팀이 구축한 시스템에서 개선할 부분이 있는지 검토하고 싶어졌다.
> - 팀 프로젝트를 시작하면서, 다른 팀원들에 비해 원래 갖고 있었던 지식과 경험이 적은 것을 알고 있었기에 걱정이 들었었고 우선 처음에는 내가 맡은 부분에서 최선을 다하는 게 목표였다. 하지만, 프로젝트를 하면서 알게 된 건, 팀플은 개인의 부족함에 집중하는 것이 아니라 서로의 부족함을 채워주고 각자의 강점을 살려서 팀에 기여하는 것이라는 거였다. 모르는 부분이 나오면 수업 내용을 다시 찾아가면서 이해하려 노력하고, 팀원들과 소통해 모르는 건 물어보면서 팀에서 맡은 부분을 다 할 수 있도록 했다. 하지만 이런 과정이 부담스럽지 않았고, 오히려 내 부족한 부분을 채우는 데에 힘이 들었다. 우리 팀은 처음에 회의할 때 궁금한 점이 있으면 주저하지 말고 가감없이 말하기로 했었다. 그래서 회의 때 의문점이나 개선할 부분을 자유롭게 이야기하면서, 그때마다 정말 많은 것을 배울 수 있었다. 다른 팀원이 맡은 부분에 대한 질문과 대답으로 그 부분에 대한 이해도가 높아졌고, 내가 맡은 부분에 대한 질문에 대답하면서 혼자 할 때는 몰랐던 개선점도 발견하고 발전할 수 있었다. 그리고 또한 팀 단위로 하는 프로젝트이기 때문에 실제로 단순한 시스템이라도 글로 정리하지 않으면 서로 헷갈리는 부분이 생길 수 있다는 걸 깨달았고 이번 의문점이나 혼란스러운 부분들은 메모한 후 회의를 통해서 상황을 정리해가고 이것을 기록하는 습관을 습득하게 되었다.

## 😶‍🌫️ 김규린

> - 해당 프로젝트에 들어가기 전 이론을 배우면서 이해하고, 프로젝트에 들어가면 수월하게 진행할 수 있을 거라고 생각했는데 생각보다 쉽지 않았다. 주제를 정하고 모델링하기까지 수많은 의견들이 오갔고, 완성도 높은 프로젝트를 만들기 위해 범위가 점점 넓어졌지만, 팀원들의 협업과 배려, 열정으로 해낼 수 있었던 것 같다.
> - DB 설계를 하면서 테이블과 컬럼들을 생성하고 각 테이블 간의 연관성들을 고민하면서 정규화 전/후, 비정규화 등 단계를 거쳐가면서 추가적으로 더 필요한 데이터를 추가하고 필요하지 않다고 판단한 컬럼들을 삭제하는 등 정규화와 비정규화의 균형을 갖추었고, 완성된 설계를 기반으로 테스트 케이스를 하면서 오류 나는 부분들을 정정하고 더욱 완성도를 높일 수 있었던 것 같다.
>- 가장 중요한 건 문서화와 팀원들 간의 협업이 중요한 것 같다. 문서화를 함으로서 팀원들과의 의견을 취합하고 정리 할 수 있었으며, 단계별로 수월하게 진행할 수 있었고, 해당 프로젝트를 진행하면 팀원들과의 협업이 얼마나 중요한지 깨닫게 되었고 의사소통 및 업무 분담이 프로젝트의 완성도에 큰 영향을 끼치는지 알 수 있었다.

## 🦄 박경덕

> - 왜 설계를 하는가... "설계 그거 그냥 하다 보면 되는 것이 아닌가라고" 생각했던 나에게 돌을 던진다. 설계를 하다 보니 여러 가지 갈래로도 뻗어가고, 그 고민을 혼자가 아닌 팀원과 공유를 하다 보니 거기서 더 얘기가 나와 서로 고민도 하고 멘탈이 날아간다 생각한 것이 하루 이틀이 아니었다. 하지만 앞에 가 잘 된다면 뒤에서는 고생한 가지만큼 얻어 가는 게 있을 거고 대화를 하다 보면서도 서로서로 얻어 간 것이 혼자 공부해 습득하는 것보다 값진 것이라고 생각하고 있다. 건물도 설계부터 꼼꼼해야 하듯이 똑같은 것 같다 설계가 잘못되면 무너지고 안 좋은 건물이 나온다. 많은 것을 배웠고, 언젠가는 지금보다 더 앞을 바라보고 그림을 크게 그리는 날이 올 거라 믿는다.

## 🎸 이기연
> - 프로젝트 기획 단계부터 실제 구현하는 과정까지 기능 단위 요소 중 어느 하나라도 놓치면 실제 서비스가 구현되기 어렵다는 것을 이번 프로젝트를 계기로 다시금 느낄 수 있었다.
> - 해당 프로젝트를 기획하는 과정에서, 앞으로 Cloud 서버를 더 필요로 하는 서비스 형태에 대해 생각할 수 있었고 서비스 규모에 따라 주어진 자산을 활용하여 효율적인 인프라를 설계하는 역량을 키워야겠다고 생각하게 되었다.
> - 복잡하더라도 기획의 의도대로 Cloud 서비스를 활용한 기능을 함께 보여줄 수 있는 테이블을 생성하지 못한 것이 아쉬웠고, 해당 기능에 대해 고민하는 시간이 충분히 있었으면 좋았겠다는 생각이 들었다.

## 💩 이현우
> - 이론만으로 이해하기 어려운 점들이 많았고, 개발자는 개발만 잘하면 되지 이게 필요할까라는 생각을 하고 있었다. 하지만 직접 프로젝트 기획,설계하는 과정을 거친 후 데이터베이스를 구축하고 테스트를 통해 검증을 하는 과정에서 문서화 된 프로젝트를 참고하면서 놓치거나 수정이 필요한 부분들을 확인할 수 있었고, 일주일 정도의 짧은 기간동안 모두 만족할 수 있는 높은 품질의 데이터베이스를 구축할 수 있었다. 이를 통해 프로젝트를 진행할 때 문서화 작업이 가장 오래 걸리고 힘든 부분이지만 그만큼 더 좋은 결과를 만들 수 있었다고 생각했다. 또한 혼자 진행하는 것보다 여러 사람들과 함께 프로젝트를 진행하는 것이 시간이 더 오래 걸릴 수 있지만, 더 좋은 결과를 만들 수 있다는 것도 배울 수 있었다. 팀 단위로 프로젝트를 진행할 때 서로 의견을 나누고 소통하면서 프로젝트 업무 분담하여 프로젝트를 진행하면서 잘못된 부분들을 개선하고 프로젝트의 진행 방향도 올바르게 갈 수 있었다고 생각한다. 혼자 진행하면서 발생될 어려운 부분이나, 미흡한 부분을 서로 도우면서 이러한 부분들을 배워갈 수 있었다.

## 😺 임원재

> - 왜 DB는 처음부터 잘 설계하는 것이 중요한지 배울 수 있었다. 데이터베이스 구축은 서비스가 확실히 정해지면 쉽게 할 수 있다고 생각했다. 하지만 모델링부터 구축, 테스트를 위한 더미 값 삽입, 등 과정이 진행될수록 문제되는 부분이 보였고, 계속해서 개선해야 했다. 그 중에서 가장 기억에 남는 이슈는 PK에 의한 중복 문제였다. FK를 PK로 사용하는 경우 PK 중복으로 인한 이슈가 생각보다 많이 존재했다. 심지어 복합키인 경우에도 이슈가 발생했다. 물론 전부 인조키로 통일하는 경우 신경을 쓸 필요가 없을 것이지만, 공간 효율이나 성능 등을 따졌을 때, 분명 FK 를 PK로 사용해야 할 경우가 존재할 것이다. 이번 프로젝트의 경험을 통해 DB 구축은 좀 더 다각적으로 고민해야 하는 것을 배울 수 있었다.
> - 이번 팀프로젝트를 통해 팀이 얼마나 효율적인지 체감할 수 있었다. 과거에 구축해본 DB들은 전부 혼자 구축하다보니 실수도 잦았고, 심지어 아직까지 인지하지 못한 문제들도 많을 것이라 생각된다. 하지만 이번 팀 프로젝트에서 모델링을 구현하고 리뷰를 받을 때, 팀원들을 통해 정말 많은 문제들을 발견하고 개선할 수 있었다. 물론 진행 과정에서 추가로 발견되는 문제는 있었다. 하지만 팀원들을 통해 미리 대부분의 문제를 해결하지 못했다면 기간 내에 구현하기 위해 잠도 거의 자지 못한 채 문제 해결에만 시간을 할애해야 했을 것이다. 심지어 프로젝트가 아닌 경우 발견하지 못한 수많은 문제로 금전적 피해까지 발생했을 수 있다. 그렇기에 팀이 얼마나 중요하고, 왜 수많은 개발자들과 기업들이 팀 운영이 원활하기 위해 노력하는지 경험해볼 수 있었다.
