# :pushpin: I.C Shopping Mall
> 신선식품 판매 쇼핑몰 
>http://15.164.244.62:8080/icmall/all/vegetable  

</br>

## 1. 제작 기간 & 참여 인원
- 2021년 9월 18일 ~ 10월 14일
- 팀장: 김종원 
- 팀원: 강진, 정재욱, 배서하

</br>

## 2. 사용 기술
#### `Back-end`
  - Java 11
  - Spring Boot 4.12.1
  - MyBatipse 1.2.4 
  - Jsoup
  - MySQL 8.0.26
  - Spring Security
#### `Front-end`
  - HTML, CSS, Jquery
  - Javascript

</br>

## 3. 설계 구조
<img width="686" alt="스크린샷 2021-12-10 오후 3 22 31" src="https://user-images.githubusercontent.com/65885458/145676079-71945684-5a36-4101-bd0f-04a576f8ccf0.png">


## 4. ERD 설계
<img width="750" alt="ERD" src="https://user-images.githubusercontent.com/65885458/144968797-60854f86-6516-4b11-af2f-964f372186db.png">


## 5. 전체 흐름
<img width="755" alt="전체흐름" src="https://user-images.githubusercontent.com/65885458/144968257-f1465c7c-bb16-4e26-bdd1-c1323ef91a91.png">


## 6. 핵심 트러블 슈팅
### 자바 크롤링 문제
- 쇼핑몰에서 보여줄 상품들의 DB를 구축해야 했습니다.

- 하지만 수업시간에 배운 내용이 아니기 때문에 각자 구글링, 유튜브 강의를 참고하며 방법을 찾았습니다. 

- 서로 머리를 맞대고 구글링과 유튜브 강의를 참고해 jsoup을 이용하여 11번가 상품 정보를 가져올 수 있었습니다.
<details>
<summary><b>크롤링, DB 저장 부분</b></summary>
<div markdown="1">
<img width="755" alt="crawlling" src="https://user-images.githubusercontent.com/65885458/144970413-d4086ede-4ef0-4fe1-92bc-7cec1a4e6220.png">


</div>
</details>

## 7. 그 외 트러블 슈팅
<details>
<summary>체크한 상품들만 주문하기 DB에 넣기</summary>
<div markdown="1">

<img width="755" alt="basketDB" src="https://user-images.githubusercontent.com/65885458/144970632-121dd1f8-3268-4261-bd7a-c02b62d2d942.png">

</div>
</details>

<details>
<summary> 로그인한 구매자의 정보 불러오기</summary>
<div markdown="1">
<img width="755" alt="login" src="https://user-images.githubusercontent.com/65885458/144970680-02bc52eb-78e1-40ec-a2ca-96768cbe4429.png">

  
</div>
</details>

</br>

## 8. 회고 / 느낀점
>프로젝트 개발 회고 글
  - 서하 : https://blog.naver.com/bha6050/222588520851
