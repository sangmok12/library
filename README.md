## 프로젝트 명 : 도서관 관리 웹 사이트
![image](webapp/icon/열람실.png)


## 프로젝트 개요
* 설계 배경 : 도서관의 여러 정보나 기능을 제공하는 웹 사이트
* 설계 목적 : 도서관을 직접 방문하지 않고 웹 상으로 편리하게 원하는 정보나 기능들을 이용 가능
* 기대 효과 : 도서관의 이용 빈도 증가
* 서비스 대상 : 도서관을 이용하는 모든 사람들

## 개발 환경
* FRONT-END : HTML5/CSS/JAVA SCRIPT/ JQuery
* BACK-END : JAVA/eGovFrameWork/Ibatis
* DB : Oracle 18c
* API : KAKAO MAP API, KAKAO BOOK API
* Server : Apache Tomcat

## 개발 기간 : 2023.08.01 ~ 2023.09.01


## 전체 프로젝트 주요 기능
* KAKAO API 를 이용한 지도/위치 정보 제공
* KAKAO API 를 이용한 도서 정보 검색 및 대여
* 열람실 사용
* 공지/문화행사 게시판 이용
* 도서관 일정 확인
* 회원가입 시 자동으로 개별 QR코드 생성

## 담당 역할 (팀장)
* 팀원들의 기능 분배, 전체 흐름관리, 미흡한 부분 수정
* 전체 LAYOUT, INCLUDE 구성 , CSS
* 도서관 일정의 등록,수정,삭제,출력 등
* 세션아이디로 도서 대출, 저장
* 웹 메인화면에 대표 기능들 합치고, 출력

## 주요 기능 구동 영상
* 회원가입 QR자동 생성과 메인화면


https://github.com/sangmok12/library/assets/132993309/80898943-296b-4f93-a939-ea9f2e5d01d2
* KAKAO BOOK API를 이용한 도서 등록과 대출, 반납


https://github.com/sangmok12/library/assets/132993309/a45297cc-0004-444e-b877-ded6d4221208
* 열람실 사용시작과 퇴실


https://github.com/sangmok12/library/assets/132993309/598daff0-9025-4e53-86be-7f1bfc278d8d
* 파일 업로드, 다운로드와 메인화면 적용


https://github.com/sangmok12/library/assets/132993309/9382c967-dc97-48af-ac7d-6dbb263721e6











# 기여한 파일
* [메인 페이지](https://github.com/sangmok12/library/blob/main/webapp/main/main.jsp)
* [일정등록](https://github.com/sangmok12/library/blob/main/webapp/calendar/libCalInput.jsp)
* [일정보기](https://github.com/sangmok12/library/blob/main/webapp/calendar/libCalendar.jsp)
* [도서대출](https://github.com/sangmok12/library/blob/main/webapp/library/bookRent.jsp)

# 프로젝트 진행 중 문제 상황
* 비동기 통신으로 요청한 마커 표시 기능이 중복 생성되어 과도한 리소스가 낭비되는 상황
![image](https://github.com/DJSon2/im-ground-repository/assets/124123956/056d6eae-5393-4666-9d43-416797f5cffd)
* 해결 방안
  * 표시될 마커를 배열로 관리하여, 비동기 요청 마다 이전의 마커를 삭제 시키는 방식
  * DB의 위치 정보 및 관련 내용을 jQuery로 나타내는 리스트 형식도 같이 초기
![image](https://github.com/DJSon2/im-ground-repository/assets/124123956/025c265b-4b8c-4781-a1ff-ec95d691844f)


🥇프로젝트 포트폴리오 수상 및 수료
<table>
 <tr width="750" height="600">
  <td width="250">
   
   ![상장](https://github.com/sangmok12/library/assets/132993309/a81f44a4-4e41-4405-b5cf-a37799f2676c)
</td>
  <td width="250">
   
   ![수료증2](https://github.com/sangmok12/library/assets/132993309/cb686b21-ad3f-4d1a-bb5c-bd6b49d6ab8e)
</td>
  <td width="250">
   
   ![수료증1](https://github.com/sangmok12/library/assets/132993309/6cdc9f4d-8964-4e07-83fe-47431b7b935e)
</td>
  
 </tr>
</table>
