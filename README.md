![venom](https://capsule-render.vercel.app/api?type=venom&height=200&text=한화시스템%20SW%20CAMP%204기%202조&fontSize=40&color=100:ff7f00,100:ff4505&stroke=ffffff)

---
<a href = "https://demianstudio.notion.site/2-OH-JO-e87da7c22c564501ac72fbbf0f6915f4?pvs=4"><img src="https://img.shields.io/badge/팀 Notion-ffffff?style=flat&logo=Notion&logoColor=black" /></a>

#### 🌱 TEAM
```😎곽윤경 😶‍🌫️김규린 🦄박경덕 🎸이기연 이현우 임원재```

#### 🚀Use Tool & Tech
<div align="left">
    <img src="https://img.shields.io/badge/MariaDB-003545?style=flat&logo=MariaDB&logoColor=white" />
    &emsp;
    <img src="https://img.shields.io/badge/Linux-FCC624?style=flat&logo=Linux&logoColor=white" />
</div>

![Ubuntu](https://img.shields.io/badge/ubuntu-444444?style=for-the-badge&logo=ubuntu)
![linux](https://img.shields.io/badge/linux-444444?style=for-the-badge&logo=linux)
![mariadb](https://img.shields.io/badge/mariadb-444444?style=for-the-badge&logo=mariadb)

# 프로젝트 개요

<p align="center">
    <img src="https://github.com/DemianStudio/DataBase/assets/122339395/d4a7bcb4-e5e6-493c-91bb-eba0426068e3" style="width:100%; height:100%;" />
</p>

### 서비스 소개 및 목적
> **💡 고객(대학)이 기존 통합 관리 시스템에서 학사 관리, 재무, 학생 정보 등 다양한 기능 단위 서비스를 운영하고 확장하는 것에 어려움이 있기에 클라우드 기술을 도입함으로써, 유지보수 및 기능개선에 더 용이한
서비스(사용자 경험 개선, 데이터 통합 및 분석, 자동화 및 프로세스 최적화, 지속적인 개선 및 확장 유연성, 그리고 협력과 표준 준수를 통한 효율적인 운영)를 제공하고자 합니다.**

  <figure align="center"> 
    <img src="https://image.samsungsds.com/kr/insights/2023_cloud_trends_img01.jpg?queryString=20231030024258" alt="">
    <figcaption style="text-align:center">[그림 1] 클라우드 컴퓨팅 활용 현황과 전망</figcaption>
  </figure>
<figure align="center"> 
    <img src="https://image.samsungsds.com/kr/insights/2023_cloud_trends_img03.jpg?queryString=20231030024258" alt="">
    <figcaption style="text-align:center">[그림 2] 클라우드 컴퓨팅에 대한 기대효과의 변화</figcaption>
  </figure>






---
### 🗓️ 전체 프로젝트 일정
  <figure align="center"> 
    <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/2308712b-988b-49a9-bfb9-a2245533f958" alt="">
    <figcaption style="text-align:center">WBS</figcaption>
  </figure>


------

### 시나리오

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

------

### 시스템(기능명세)

1. 정보 관리
- 시스템은 학생 정보, 교수 정보, 과목, 강의의 정보를 관리한다.
2. 대여, 대관 관리
- 시스템은 대여, 대관에 관한 기자재, 대여, 대관 정보를 관리한다.
3. 수강신청 관리
- 시스템은 수강신청에서 장바구니를 통해 담긴 강좌를 관리한다.
- 시스템은 수강신청에서 수강 과목 인원을 관리하여 제한 인원을 초과하지 않도록 한다.
4. 출결 관리
- 시스템은 한 강의에 해당하는 학생들의 출결 정보를 교수에게 제공하고, 학생은 자신의 출결정보만 조회할 수 있다.
5. 실내혼잡도 제공
- 시스템에서 교내 시설 내 혼잡도 정보를 수신하여 사용자가 특정 장소에 대한 혼잡도 정보를 조회할 수 있다.
6. 교내 셔틀 실시간 위치 제공
- 시스템에서 교내 셔틀버스에 대한 실시간 위치정보를 수신하여 사용자가 해당 정보를 조회할 수 있다.
7. 학생들 멘토링
- 방학 기간 중 학생들이 원하는 멘토링 주제와 계획을 학교에 인가 받으면 학교 강의처럼 학기 중 정한 요일, 시간대에 지정된 강의실에서 멘토링을 진행할 수 있다. 이 멘토링은 지도 교수가 지정되며 완료 후 학점 또는 수료증을 제공한다.
---
### 요구사항정의서
  <figure align="center"> 
  <img src="https://github.com/DemianStudio/DataBase/assets/122339395/e787425d-72c2-4380-a919-b965428216ea" alt="">
  <figcaption style="text-align:center">요구사항정의서</figcaption>
  </figure>


------

### 최종 결정

>학교 서버를 클라우드 서버로 전향하기 위해 새롭게 인프라 구축
클라우드만 옮길 때 따서 옮길 수 있으니까 마일리지 형태로 변환 포함해서 (마일리지를 화폐단위로 할 때: 학기마다 리셋이 되며 전공/교양 따로)
학교 서버를 클라우드 환경으로 변경함에 따라 기존 수강신청 시스템의 문제점을 해결하기 위해
유지보수 비용 데이터 활용
기능적 개선: 정정 요청 등 일정 시간, 대기순번제(대기를 인당 한 과목만 걸 수 있도록) or 취소지원, 마일리지 기능 등등
비기능적 개선: 최적화, 보안 문제, 트래픽 처리

---

# DB 모델링 및 개선과정  
## 📌 **목표**

1. 정규화 이전 ERD 초안 리뷰 및 개선 진행
2. 정규화 이후 ERD 초안 리뷰 및 개선 진행
3. ERD 반정규화 
4. 최종 검토 및 개선




## 🚀 진행과정

### 1. **정규화 이전 ERD**
  <figure align="center"> 
    <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/3a3997d4-4495-436e-bec8-5ff967ae2f69" alt="">
    <figcaption style="text-align:center">정규화 이전 ERD</figcaption>
  </figure>

  <details>
  <summary>정규화 이전 테이블 정의서</summary>
  <div>
  
  <figure align="center"> 
    <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/bb9fa74c-03df-4d6b-9492-f8476ef80db5" alt="">
   <figcaption style="text-align:center">정규화 이전 테이블 정의서</figcaption>
  </figure>
  
  </div>
  </details>



---


### 2. **정규화 이후 ERD**
  <figure align="center"> 
    <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/d4a7dd77-d840-47fd-8cc8-a29550e014d6" alt="">
    <figcaption style="text-align:center">정규화 이후 ERD</figcaption>
  </figure>



#### 개선 내용


**기자재 카테고리**

- 기자재의 종류(노트북, 모니터, 등)를 관리하기 위해 카테고리 테이블 추가

**과목 / 강의**

- 과목 테이블에 있는 전공여부 컬럼을 강의 컬럼으로 이동
    - 같은 과목에 대해 과에 따라 전공/비전공 여부가 나뉠 수 있다고 판단하여 변경

**이수강의**

- 이수년도 추가
    - 강의가 폐쇄되거나 강의명이 변경되는 등의 사유가 발생해도 해당 학생이 강의를 이수했다는 기록을 남겨야 하므로 이수년도 추가

**출석부**

- 결석 여부 → 출석 여부
    - 좀 더 직관적으로 이해하기 위해 컬럼명 변경
<br/>  
<details>
<summary>정규화 이후 테이블 정의서</summary>
<div>

<figure align="center"> 
  <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/02adfb88-0ff1-4d75-9ad9-8999e0fd7cb6" alt="">
 <figcaption style="text-align:center">정규화 이후 테이블 정의서</figcaption>
</figure>

</div>
</details>

---



### 4. 최종 검토 및 개선


  <figure align="center"> 
    <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/760f487b-f0cb-44af-ba8a-f395800bd37a" alt="">
    <figcaption style="text-align:center">논리 모델</figcaption>
  </figure>

  <figure align="center"> 
    <img src="https://github.com/beyond-sw-camp/be04-1st-CLOUDY-UniVerse/assets/122339395/023345b8-ed35-4043-90fe-4a48d5342d26" alt="">
    <figcaption style="text-align:center">물리 모델</figcaption>
  </figure>