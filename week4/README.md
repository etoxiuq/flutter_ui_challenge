이번주는 파이어바에스 데이터를 붙여서 UI를 간단하게 그려보는것으로 주제를 정했습니다.
파이어베이스 프로젝트 초대해 드릴께요.

![KakaoTalk_Photo_2022-11-04-17-31-26 003](https://user-images.githubusercontent.com/93248880/199955432-5f2211fb-df73-4549-8753-4df6367a237f.jpeg)

각 아이템은 아래처럼 구성되어있고 firestore에 저장했어요. 

![스크린샷 2022-11-04 오후 8 02 36](https://user-images.githubusercontent.com/93248880/199957695-bb4e3626-4cce-40df-b26f-1ac061a61dc9.png)

- name(String) : 가게이름
- coupon(String) : 메인아이템 왼쪽 상단 쿠폰 적용 문구
- distance(Float) : 거리(단위 km)
- min_price(Float) : 최소 주문
- tip: 배달팁
- time(String) : 배달시간
- rate(Float) : 평점
- thumbnail(List<String>) : 스토리지 파일명(1개일때와 3개일때 다른 UI 구성)
- type(String) : 타입(fastcook : "조리도 빠른 배민1 가게", main : 메인 리스트)
- coupon_exist: 조리도 빠른 배민1가게 쿠폰 유무

데이터는 하나로 통합했고, 존재하지 않는 데이터는 nullable형태로 View.GONE 형태로 처리

type이 **fastcook**이 상단 "조리도 빠른 배민1 가게" 가로 리스트, **main**이 아래 리스트 입니다.

<img width="300" alt="스크린샷 2022-11-04 오후 7 57 22" src="https://user-images.githubusercontent.com/93248880/199957065-d115c4f1-3dd5-494b-9b86-d641283fda1b.png">
<img width="298" alt="스크린샷 2022-11-04 오후 7 56 19" src="https://user-images.githubusercontent.com/93248880/199957082-862f427a-9fbd-4d0b-bc27-5cd5a9945b4b.png">
<img width="306" alt="스크린샷 2022-11-04 오후 7 56 11" src="https://user-images.githubusercontent.com/93248880/199957084-9752e561-a34d-40f6-b930-3309007a20e2.png">
<img width="145" alt="스크린샷 2022-11-04 오후 7 57 04" src="https://user-images.githubusercontent.com/93248880/199957070-dba7f9f3-dc9f-486b-bcd4-aa76bf194d90.png">
<img width="146" alt="스크린샷 2022-11-04 오후 7 56 53" src="https://user-images.githubusercontent.com/93248880/199957072-94edae7a-8256-4813-a5f2-e478a51ec542.png">
<img width="145" alt="스크린샷 2022-11-04 오후 7 56 37" src="https://user-images.githubusercontent.com/93248880/199957075-529f2b6e-cf2f-49c5-9fa0-ef5ba38f9161.png">
<img width="140" alt="스크린샷 2022-11-04 오후 7 56 30" src="https://user-images.githubusercontent.com/93248880/199957080-de9cc7f8-d2e6-462b-91bc-c4758637f79d.png">


* 추가 구현 1 : 아래로 땡겨서 리프래쉬를 커스컴으로 구현
<img width="315" alt="스크린샷 2022-11-04 오후 6 27 50" src="https://user-images.githubusercontent.com/93248880/199955369-8ee11b3b-0a7c-4af9-bbda-719865f124f6.png">

* 추가 구현 2 : 배민처럼 이미지를 꾹 눌렀을때 확대되는 기능
<img width="313" alt="스크린샷 2022-11-04 오후 7 54 13" src="https://user-images.githubusercontent.com/93248880/199956186-792fa50d-56c3-4537-9d1b-2dfc436ebc1f.png">

