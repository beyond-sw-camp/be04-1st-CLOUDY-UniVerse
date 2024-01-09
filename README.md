![venom](https://capsule-render.vercel.app/api?type=venom&height=200&text=한화시스템%20SW%20CAMP%204기%202조&fontSize=40&color=100:ff7f00,100:ff4505&stroke=ffffff)

---
<a href = "https://demianstudio.notion.site/2-OH-JO-e87da7c22c564501ac72fbbf0f6915f4?pvs=4"><img src="https://img.shields.io/badge/팀 Notion-ffffff?style=flat&logo=Notion&logoColor=black" /></a>

#### 🌱 TEAM
```😎곽윤경 😶‍🌫️김규린 🦄박경덕 🎸이기연 💩이현우 😺임원재```

#### 🚀Use Tool & Tech
![Ubuntu](https://img.shields.io/badge/ubuntu-444444?style=for-the-badge&logo=ubuntu)
![linux](https://img.shields.io/badge/linux-444444?style=for-the-badge&logo=linux)
![mariadb](https://img.shields.io/badge/mariadb-444444?style=for-the-badge&logo=mariadb)
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
1. [프로젝트 개요](#프로젝트-개요)
   - [서비스 소개 및 목적](#서비스-소개-및-목적)
   - [전체 프로젝트 일정](#전체-프로젝트-일정)
   - [시나리오](#시나리오)
   - [시스템(기능명세)](#시스템기능명세)
   - [요구사항정의서](#요구사항정의서)
2. [DB 모델링 및 개선과정](#db-모델링-및-개선과정)
   - [목표](#목표)
   - [진행과정](#진행과정)
       1. [정규화 이전 ERD 초안 리뷰 및 개선 진행](#1-정규화-이전-erd-초안-리뷰-및-개선-진행)
       2. [정규화 이후 ERD 초안 리뷰 및 개선 진행](#2-정규화-이후-erd-초안-리뷰-및-개선-진행)
       3. [ERD 반정규화](#3-erd-반정규화)
       4. [최종 검토 및 개선](#4-최종-검토-및-개선)
---

# 프로젝트 개요

<p align="center">
    <img src="https://github.com/DemianStudio/DataBase/assets/122339395/d4a7bcb4-e5e6-493c-91bb-eba0426068e3" style="width:100%; height:100%;" />
</p>

--- 



### 서비스 소개 및 목적
> **💡 고객(대학)이 기존 통합 관리 시스템에서 학사 관리, 재무, 학생 정보 등 다양한 기능 단위 서비스를 운영하고 확장하는 것에 어려움이 있기에 클라우드 기술을 도입함으로써, 유지보수 및 기능개선에 더 용이한
서비스(사용자 경험 개선, 데이터 통합 및 분석, 자동화 및 프로세스 최적화, 지속적인 개선 및 확장 유연성, 그리고 협력과 표준 준수를 통한 효율적인 운영)를 제공하고자 합니다.**

<div align="center">
<img src="https://image.samsungsds.com/kr/insights/2023_cloud_trends_img01.jpg?queryString=20231030024258" alt="">
<p align="ceneter">[그림 1] 클라우드 컴퓨팅 활용 현황과 전망</p>
</div>

<div align="center">
<img src="https://image.samsungsds.com/kr/insights/2023_cloud_trends_img03.jpg?queryString=20231030024258" alt="">
<p align="ceneter">[그림 2] 클라우드 컴퓨팅에 대한 기대효과의 변화</p>
</div>



---

## 2. 요구사항정의
### 📖 시나리오

대학 통합 관리 시스템은 학생이 수강 관리, 출결 관리, 학적 조회, 대여 서비스 관리, 건물의 정보를 관리한다.
> 학생
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


>교수
>1. 교수는 학교에서 발급해준 ID와 PW로 **로그인**이 가능하다.
>2. PW를 분실하였을 경우, **재설정** 가능하다.
>3. 교수는 **기자재 대여 / 강의실 대관**이 가능하다.
>4. 교수는 자신의 정보(이력, 교수실, 연구실, 논문 등)를 **열람하고 수정**할 수 있다.
>5. 교수는 자신의 **강의를 등록**할 수 있다.
>6. 교수는 자신의 강의를 수강하는 학생의 **출결을 관리**할 수 있다.
>7. 교수는 자신의 강의를 수강하는 학생의 **성적을 결정**할 수 있다.
>8. 교수는 **학생의 정보를 조회**할 수 있다.


>확장 기능
>1. 사용자는 시스템에서 제공하는 **실내 혼잡도 정보를 강의실 별로 조회**할 수 있다.
>2. 사용자는 시스템을 통해 **교내 셔틀버스의 실시간 위치를 조회**할 수 있다.
>3. 사용자는 시스템을 통해 **멘토링에 참여**할 수 있다.
>4. 멘토링에 참여하는 사용자는 해당 **멘토링을 운영하고 관리**할 수 있다.

---


### 📘 시스템(기능명세)

>1. 정보 관리
>- 시스템은 학생 정보, 교수 정보, 과목, 강의의 정보를 관리한다.
>2. 대여, 대관 관리
>- 시스템은 대여, 대관에 관한 기자재, 대여, 대관 정보를 관리한다.
>3. 수강신청 관리
>- 시스템은 수강신청에서 장바구니를 통해 담긴 강좌를 관리한다.
>- 시스템은 수강신청에서 수강 과목 인원을 관리하여 제한 인원을 초과하지 않도록 한다.
>4. 출결 관리
>- 시스템은 한 강의에 해당하는 학생들의 출결 정보를 교수에게 제공하고, 학생은 자신의 출결정보만 조회할 수 있다.
>5. 실내혼잡도 제공
>- 시스템에서 교내 시설 내 혼잡도 정보를 수신하여 사용자가 특정 장소에 대한 혼잡도 정보를 조회할 수 있다.
>6. 교내 셔틀 실시간 위치 제공
>- 시스템에서 교내 셔틀버스에 대한 실시간 위치정보를 수신하여 사용자가 해당 정보를 조회할 수 있다.
>7. 학생들 멘토링
>- 방학 기간 중 학생들이 원하는 멘토링 주제와 계획을 학교에 인가 받으면 학교 강의처럼 학기 중 정한 요일, 시간대에 지정된 강의실에서 멘토링을 진행할 수 있다. 이 멘토링은 지도 교수가 지정되며 완료 후 학점 또는 수료증을 제공한다.
---
### ✅ 요구사항정의서
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
> **기자재 카테고리**
>- 기자재의 종류(노트북, 모니터, 등)를 관리하기 위해 카테고리 테이블 추가

>**과목 / 강의**
>- 과목 테이블에 있는 전공여부 컬럼을 강의 컬럼으로 이동
>- 같은 과목에 대해 과에 따라 전공/비전공 여부가 나뉠 수 있다고 판단하여 변경

>**이수강의**
>- 이수년도 추가
>  - 강의가 폐쇄되거나 강의명이 변경되는 등의 사유가 발생해도 해당 학생이 강의를 이수했다는 기록을 남겨야 하므로 이수년도 추가

>**출석부**
>- 결석 여부 → 출석 여부
>  - 좀 더 직관적으로 이해하기 위해 컬럼명 변경
  
<br/>  

  <details>
  <summary>정규화 이전 테이블 정의서</summary>
  <div align="cneter">
    <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/02adfb88-0ff1-4d75-9ad9-8999e0fd7cb6"/>
    <p align="center">정규화 이전 테이블 정의서</p>
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



#### 반정규화 과정
***학생***
> **학적 테이블 분리**
>- 학생의 데이터를 필요로 하는 이수강의, 출석부, 대여, 대관, 등 대부분의 테이블은 학생의 학번, 이름만 필요로 함.
>- 나머지 학적 테이블에 담긴 정보들의 경우 학적 조회 시 외에는 거의 필요로 하지 않고 학적 조회 시 해당 내용들이 통합적으로 요구됨.

#### 개선 사항

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
1. `Master` mariaDB 설정 파일 수정 
   - 1.1 주석 처리 된 `log_bin, expire_logs_days, max_binlog_size` 항목 주석 제거 
   - `bind-adress = 0.0.0.0` 으로 수정
   - Write and Quit
2. mariaDB 재 시작
3. `slave`에서 접속 할 계정 권한 설정
4. `master`의 status에서 file과 position 정보 조회

### slave 환경 설정 단계

1. `Slave` mariaDB 설정 파일 수정 
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

>master_univdb
>- HOST IP: 192.168.0.37
>- Port: 3306

>slave_univdb(Replication)
>- HOST IP: 192.168.0.48
>- Port: 3306

---
# 4. 테스트 설계 및 진행
<div align="center">
<img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/0dd09fd8-4306-46cb-bf3f-c9009d24d390"/>
<p align="center">사용자 기반 기능 단위 테스트 정의서</p>
</div>

<div align="center">
<img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/c130899a-5be4-4c29-afc7-8c2dce64875a"/>
<p align="center">테스트 케이스</p>
</div>

### 🖥️ ️테스트 결과
<div>

[![GitHub open issues](https://img.shields.io/github/issues/beyond-sw-camp/be04-1st-CLOUDY-UniVerse)](https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/issues)

[![GitHub close issues](https://img.shields.io/github/issues-closed/beyond-sw-camp/be04-1st-CLOUDY-UniVerse)](https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/issues?q=is%3Aissue+is%3Aclosed)

</div>

<br/>



<details>
<summary>출석 조회</summary>
<div>

<figure align="center"> 
  <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/26ae6ce0-55e8-489e-b0af-21b3f14761a4"/>
</figure>

</div>
</details>

<details>
<summary>강의실 대관</summary>
<div>

<figure align="center"> 
  <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/81e994c1-a938-4417-8fc9-0f627508c810"/>
</figure>

</div>
</details>

<details>
<summary>수강생 조회</summary>
<div>

<figure align="center"> 
  <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/2a676ecd-7df4-4e10-85d7-b569e2529b4b"/>
 <figcaption style="text-align:center">최종 테이블 정의서</figcaption>
</figure>

</div>
</details>


<details>
<summary>강의 조회</summary>
<div>
<figure align="center"> 
  <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/0f34b75e-27a2-433e-8f4c-6ed355959c75"/>
 </figure>
</div>
</details>


<details>
<summary>개인정보조회</summary>
<div>
<figure align="center"> 
  <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/8b72fb8d-811a-46fa-abe4-f7bf3cf58109"/>
    <p align="center">학생이 학번이랑 비밀번호 조회</p>
<img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/9253ce7a-4695-430f-80fe-5670fe1630be"/>
    <p align="cneter">교수가 본인 ID와 비밀번호 조회</p>
</figure>
</div>
</details>

---
