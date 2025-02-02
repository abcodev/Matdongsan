# 맛동산 - Matdongsan
<img width="500" alt="스크린샷 2023-02-25 오전 12 04 복사" src="https://user-images.githubusercontent.com/113197284/221238352-64af84b3-5248-4c3b-82c1-921d378379ad.png">

## 기획
부동산 가격 정보를 확인하고, 지역 커뮤니티를 통해 동네 주변 정보를 알아볼 수 있는 사이트 입니다.

## 참여
| 장현정 | 염서학 | 이가영 | 양진호 | 이이수 | 김도윤 |
|:---:|:---:|:---:|:---:|:---:|:---:|
|팀장 Backend|Backend|Backend|Backend|Frontend|Frontend|
| <a href="https://github.com/abcodev">@abcodev</a> | <a href="https://github.com/YEOMCODING">@YEOMCODING</a> | <a href="https://github.com/kayoung0814"> @kayoung0814</a> | <a href="https://github.com/JinHoYY"> @JinHoYY </a> | <a href="https://github.com/yisoo98776"> @yisoo98776 </a> | <a href="https://github.com/kimdory"> @kimdory </a> |


## 환경

- **Back End** : Java11, Spring, Spring Security, Oauth2
- **Front End** :  JavaScript, Html/CSS
- **DevOps** : ORACLE 11g , Oracle Cloud , Redis, AWS Ec2, Route53
- **Collaboration** : Git , Notion

## 담당 기능

- **소셜로그인**과 **사용자 인증 토큰** 관리 - **Spring Security, oAuth2.0**
- **SSE**를 통한 실시간 알림
- 서울시 **공공데이터 API** 매일 자정 업데이트
- **Redis**를 이용한 최근 본 목록, 많이 본 목록(**zset**)
- 부동산 상세페이지, 부동산 회원 신청
- 동네 맛집 페이지, 목록 이미지크롤링
- 회원탈퇴, 회원정지, aop
- **AWS EC2**

## 서비스 소개

### 메인 페이지
부동산 실거래가 정보(카카오맵), 실시간 뉴스 크롤링, 인기 부동산 순위/최근 본 목록, 채팅 형식의 1:1 문의, 실시간 알림 등의 기능을 제공
<img width="1840" alt="메인페이지 기본" src="https://user-images.githubusercontent.com/113197284/226084243-b4be2497-e948-48ce-a7ed-73e11e3be99e.png">

<!-- <img width="1840" alt="메인페이지 로그인전" src="https://user-images.githubusercontent.com/113197284/226083438-d7c18898-af64-47eb-b3ef-791a1a37cb58.png"> -->

<!-- <img width="1840" alt="메인페이지 로그인 전" src="https://user-images.githubusercontent.com/113197284/226083294-35c265b2-eeca-4116-83d4-02d714dc791f.png"> -->

### 소셜 로그인
카카오, 네이버, 구글 3사 소셜 로그인 이용 가능  - 카카오 회원가입 및 로그인 화면
<img width="1840" alt="스크린샷 2023-04-06 오전 1 01 28" src="https://user-images.githubusercontent.com/113197284/230138127-469cdfec-3255-4eaf-829c-42755325b2f9.png">


### 로그인 후

|최근본목록|실시간 알림|1:1문의|
|------|---|---|
|<img width="318" alt="메인페이지 최근본목록" src="https://user-images.githubusercontent.com/113197284/226083987-c6d8ec7d-6920-4451-bbb5-626d84d5e743.png">|<img width="474" alt="메인페이지 알림" src="https://user-images.githubusercontent.com/113197284/226084046-1109343a-4edd-41e3-b0a3-276702517082.png">|<img width="300" alt="메인페이지 채팅" src="https://user-images.githubusercontent.com/113197284/226083997-7deceb4f-7901-4ad6-97bc-f9dc4add14f4.png">|
|로그인 시 최근 본 부동산 목록|채팅, 댓글, 답글, 예약, 부동산회원승인 실시간 알림 |관리자와 1:1 채팅문의|




### 부동산

|부동산 목록|상세페이지|예약|
|------|---|---|
|<img width="1728" alt="부동산 목록" src="https://user-images.githubusercontent.com/113197284/226082411-0bed4d1e-8b75-4458-8da3-313d0bb6f84d.png">|<img width="1728" alt="부동산 상세페이지" src="https://user-images.githubusercontent.com/113197284/226084488-5d061a3d-4dba-48a0-a73c-884677925a85.png">|<img width="1728" alt="부동산 예약" src="https://user-images.githubusercontent.com/113197284/226087342-8a7730b6-b1f9-4e27-97b1-a4bd40dd47da.png">|
|서울시 공공 Api<br>매매,전월세 실거래가 매일 자정 업데이트<br>조건검색 , 평균가격 그래프|관심목록 등록<br> 상세정보 지도 , 로드뷰|부동산 예약신청|





### 동네맛집

|동네맛집 목록|상세페이지|리뷰|
|------|---|---|
|<img width="1728" alt="동네맛집 목록" src="https://user-images.githubusercontent.com/113197284/226084217-ded65fc7-3b4e-4cd1-8a99-dcdc4cea1085.png">|<img width="1728" alt="동네맛집 상세페이지" src="https://user-images.githubusercontent.com/113197284/226086277-2d0539a2-03ab-42df-8191-784beae209db.png">|<img width="1728" alt="동네맛집 리뷰" src="https://user-images.githubusercontent.com/113197284/226086265-3dde8a6c-27ad-426c-9157-9f11f73cf65f.png">|
|목록 이미지 크롤링<br>지역 해시태그 검색|리뷰 평균 별점<br>앞 2개 관리자등록 해시태그<br>뒤 2개 리뷰에서 많이 등록된 해시태그|사진, 해시태그 리뷰등록|




### 자유게시판

|자유게시판 목록|상세페이지|
|------|---|
|<img width="1728" alt="자유게시판 목록" src="https://user-images.githubusercontent.com/113197284/226084333-5507f4d6-6254-49af-a6a5-b8bfb210ced3.png">|<img width="1728" alt="자유게시판 상세페이지" src="https://user-images.githubusercontent.com/113197284/226087192-cb76bffb-6071-4aab-8016-f3fd65efeb1f.png">|
|키워드 검색, 기준 정렬<br>신고 누적 블라인드 게시글|댓글작성, 신고(관리자 확인 후 정지처리)|




### 질문게시판
|질문게시판 목록|상세페이지|
|------|---|
|<img width="1728" alt="질문게시판 목록" src="https://user-images.githubusercontent.com/113197284/226086255-322b4d6a-5032-4463-82f3-f063be2345e0.png">|<img width="1728" alt="질문게시판 상세페이지" src="https://user-images.githubusercontent.com/113197284/226084545-1708193e-7ea5-45dd-8da6-74b4637c71d5.png">|
|계층형 게시판|게시글에 따른 답글 확인|

### 1:1 문의 - 관리자
실시간 채팅 문의 확인
<img width="1840" alt="관리자 채팅" src="https://user-images.githubusercontent.com/113197284/226083685-c1680ed2-fa30-477f-817b-fc4611d55fe1.png">




### 마이페이지

|마이페이지|관심목록|예약목록|
|------|---|---|
|<img width="1728" alt="마이페이지" src="https://user-images.githubusercontent.com/113197284/226087295-db41125f-f6bf-4d07-bae3-92ae5fef61d5.png">|<img width="1728" alt="스크린샷 2023-03-18 오후 2 32 39" src="https://user-images.githubusercontent.com/113197284/226087302-32633af0-cb44-4e46-98fc-0e1130c94d23.png">|<img width="1728" alt="마이페이지 예약내역" src="https://user-images.githubusercontent.com/113197284/226087530-49554301-9de5-455e-9159-e912e867ef32.png">|
|회원정보수정, 부동산회원신청, 회원탈퇴|관심목록 해제|예약내역 확인 및 취소|





## 기타

<details>
<summary>프로젝트 구조</summary>
<div markdown="1">

  ```
  ├──java
  │   ├──folder
  │   │   ├──config 
  │   │   ├──controller 
  │   │   ├──dto 
  │   │   ├──repository 
  │   │   ├──service 
  │   │   ├──type 
  │   │   └──vo
  ├──resources
  │   ├──apiKey 
  │   ├──mappers
  │   └──sql
  ├──webapp
  │   ├──resources
  │   │   ├──css
  │   └── └──files
  │   ├──WEB-INF
  │   │   ├──views
      
  ```
</div>
</details>
<br/>


