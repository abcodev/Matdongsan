SET DEFINE OFF
CREATE TABLE RESTRAUNT ( RES_NO VARCHAR2(26),
                         RES_NAME VARCHAR2(128),
                         STATE VARCHAR2(26),
                         ADDRESS VARCHAR2(256),
                         RES_PHONE VARCHAR2(256),
                         WEBSITE VARCHAR2(1024),
                         RES_TIME VARCHAR2(1024),
                         TRASPORT VARCHAR2(256),
                         RES_FOOD VARCHAR2(1024));


INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('10723', '카페모네', ' 종로구', '서울시 종로구 자하문로 33-5', '02-395-6030', NULL, 'AM 10:00 ~ PM 10:00', '3호선 경복궁역2번출구 도보로 5분', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14869', '마지', ' 종로구', '서울시 종로구 자하문로5길 19', '02-536-5228', 'http://www.templefood.com', '월~토 11:30 ~ 15:30 / 17:00 ~ 21:00 일 12:00 ~ 16:00', '3호선 경복궁역 12번 출구', '오늘의마지 고급코스 연밥올림 끼니올림');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4836', '마노디셰프', '강남구', '서울특별시 강남구 테헤란로87길 21 (삼성동)', '02-561-9011', 'http://www.manodichef.co.kr/', '평일 11:00 ~ 15:00 / 17:00 ~ 22:00 토요일 11:00 ~ 15:50 / 17:00 ~ 22:00 일요일 11:00 ~ 15:50 / 17:00 ~ 21:00', '2호선 삼성역 5번 출구', '마노디셰프 품격코스 봉골레 알리 올리오 파스타 로제 씨푸드 파스타');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5527', '카페먼데이투선데이', '강남구', '서울특별시 강남구 도산대로67길 13-3 (청담동)', '070-7008-2217', NULL, '11:00 ~ 24:00', '3호선 압구정역 3번 출구', '카페');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6627', '청담면옥함흥냉면', '강남구', '서울특별시 강남구 선릉로 664 건설빌딩', '02-548-3777', 'http://5483777.modoo.at/', '11:00 ~ 15:30 / 17:00 ~ 20:30', '7호선 강남구청역 1번 출구 도보 5분소요', '냉면');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14556', '김영모과자점', '강남구', '서울특별시 강남구 언주로30길 10 (도곡동)', '02-3460-2005', 'http://k-bread.com/', '08:00 ~ 22:30', '3호선 매봉 3번 출구', '베이커리');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14585', '트라토리아모로', '강남구', '서울특별시 강남구 봉은사로68길 21 (삼성동)', '02-556-6997', NULL, '평일 11:30 ~ 15:00 / 17:00 ~ 24:00  토 11:30 ~ 21:30', '9호선 삼성중앙역 7번 출구', '해물스파게티 크림소스리조또 시저샐러드');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14272', '논현포차골목', '강남구', '서울특별시 강남구 논현동 영동시장 뒷길 일대 ', '02-120', NULL, NULL, '7호선 논현 2번 출구 도보 10분 2호선 강남 6번 출구 도보 15분', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14746', '골드피쉬 딤섬퀴진', '강남구', '서울특별시 강남구 압구정로48길 35 (신사동) 2층', '02-511-5266', NULL, '11:30 ~ 15:00 / 17:30 ~ 21:30', '3호선 신사역 8번 출구', '새우딤섬 구채교 무떡볶음 새우춘권 시그니처볶음밥');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14825', '워너커피', '강남구', '서울특별시 강남구 압구정로2길 59 (신사동)', '02-512-2285', NULL, '평일 07:00 - 24:00 주말 08:00 - 24:00', '3호선 신사 8번 출구', '와플 생과일주스 샌드위치세트');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3243', '더키친살바토레쿠오모', '강남구', '서울특별시 강남구 언주로164길 29 (신사동) 영안빌딩 1층', '02-3447-0071', 'https://salvatorecuomo.kr/index.do', '매일 11:30 ~ 14:30  / 18:00 - 23:00', '3호선 압구정 3번 출구 수인분당선 압구정로데오 5번 출구', '마르게리타 피자 디오씨 피자 봉골레 파스타 링귀네 페스카토레 파스타');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14742', '언노운다이너', '강남구', '서울특별시 강남구 논현로28길 42 (도곡동) 2층', '02-573-6672', 'https://www.instagram.com/unknown_diner/', '11:30 ~ 15:00 / 17:30 ~ 22:00', '3호선 매봉역 4번 출구', '2인스테이크쉐어코스 1++한우채끝스테이크200G 알리오올리오 스파게티');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2375', '루나', '강남구 ', '서울 강남구 논현로149길 13 (예진빌딩)', '02-515-3381', 'http://instagram.com/nonhyun_luna', '평일 11:00~01:00 토요일 17:00~24:00', '7호선 학동역 7번 출구', '런치세트A 런치세트B 디너세트A 디너세트B');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3134', '한일관', '강남구 ', '서울특별시 강남구 압구정로38길 14 (신사동)', '1577-9963', 'http://www.hanilkwan.co.kr', '평일 11:30 ~ 21:30  주말 11:00 ~ 21:30', '3호선 압구정역 2번 출구', '점심상차림 전통구이상차림 큰상차림 ');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3994', '신정', '강남구 ', '서울 강남구 테헤란로8길 29 (신정)', '02-554-1033', 'http://shinjung.co.kr/intro/intro.asp', '평일 11:30~22:30 주말 11:30~21:30', '2호선 강남역 1번 출구', '오리구이 진기스칸 등심구이 곱창전골 국수전골');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4020', '하코야 역삼세무서점', '강남구 ', '서울 강남구 논현로72길 16 (역삼동 초원빌딩)', '02-554-5580', 'http://www.hakoya.co.kr', '매일 11:00 ~ 22:00', '2호선 역삼역 1번 출구', '냉소바 뼈감자탕라멘 하코야탄탄멘 매콤소보루라멘');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4115', '더블린', '강남구 ', '서울 강남구 강남대로 442 (역삼동)', '02-561-3281', NULL, '매일 13:00 ~ 02:00', '9호선 신논현역 4번 출구 2호선 강남역 11번 출구', '아이리쉬 쇠고기 스튜 리코타 치즈 샐러드 고르곤졸라 피자');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4879', '야마모토스시', '강남구 ', '서울 강남구 언주로30길 26 (타워팰리스) 상가 1층', '02-2057-0053', NULL, '매일 11:30 ~ 14:00 / 17:30 ~ 21:00', '3호선 매봉역 3번 출구 3호선 수인분당선 도곡역 4번 출구', '스시정식 사시미정식 야마모토코스');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4917', '머그포래빗', '강남구 ', '서울 강남구 논현로159길 65', '02-548-7488', NULL, '10:00 ~ 24:00', '3호선 신사역 8번 출구', '커피 당근케이크');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5001', '쉐플로', '강남구 ', '서울 강남구 논현로36길 29', '02-574-7010', NULL, '18:00~24:00', '3호선 매봉역 4번 출구', '다양한 올리브와 파르미지아노 레지아노 동해산 피문어 카르파치오');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5103', '토마틸로', '강남구 ', '서울 강남구 테헤란로 152 (역삼동 강남파이낸스센터)', '02-2112-3883', NULL, '매일 11:00 ~ 22:00', '2호선 역삼역 12번 출구', '브리또 퀘사디아');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5182', '미피아체', '강남구 ', '서울 강남구 압구정로80길 19-2 (청담동 삼영빌딩) 12층', '02-516-6317', 'https://www.instagram.com/restaurant_mipiace/', '12:00 ~ 15:00 / 18:00 ~ 21:30', '분당선 압구정로데오역 4번 출구', '스페인산 이베리코 하몽 매콤한 닭 그릴 어란 오일 파스타 성게알 로제 파스타');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5354', '채근담', '강남구 ', '서울 강남구 역삼로98길 23 (일동빌딩)', '02-555-9173', 'http://www.chaegundaam.com/', '점심 11:30 ~ 15:00 저녁 17:30 ~ 22:00', '2호선 삼성역 3번 출구', '채정식(점심)  담정식(저녁)  선정식(저녁) ');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5498', '청담골', '강남구 ', '서울 강남구 선릉로148길 48 (청담동 미준빌딩)', '02-543-1252', NULL, '10:30 ~ 16:00 / 17:00 ~ 21:50', '7호선 강남구청역 4번 출구', '일반한식');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5515', '두꺼비정육점식당', '강남구 ', '서울 강남구 역삼로 421', '02-445-8742', NULL, '매일 11:00 ~ 22:00', '2호선 분당선 선릉역 1번 출구', '설렁탕 불고기뚝배기 육회비빔밥 불고기전골');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5757', '마포숯불갈비', '강남구 ', '서울 강남구 도산대로 232 (논현동 청학아파트) 에이동', '02-516-1522', NULL, '매일 11:00 ~ 06:00', '7호선 학동 10번 출구', '돼지갈비 한우차돌박이 한우생등심 소양념갈비');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6103', '충무상회', '강남구 ', '서울 강남구 언주로167길 38 (신사동)', '02-515-6395', NULL, '11:30 ~ 22:00', '3호선 압구정역 2번 출구', '생선회');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('7264', '남포면옥(논현동) ', '강남구 ', '서울 강남구 학동로 231 (논현동)', '02-540-2596', NULL, '매일 11:30~22:00', '7호선 학동역 10번 출구', '냉면 갈비찜 양념갈비 생등심 어복쟁반 갈비탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('7906', '설매네', '강남구 ', '서울 강남구 압구정로30길 23', '02-548-0090', NULL, '매일 11:30~15:00 / 17:00~21:30', '3호선 압구정역 3번 출구', '칼국수 만두국 매운갈비찜 보쌈');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('10709', '여수오동도', '강남구 ', '서울 강남구 삼성로71길 7', '02-557-0039', NULL, '매일 11:30~16:00 / 17:00~22:30', '2호선 선릉역 1번 출구', '갯장어 병어 전어');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11556', '파크 하얏트 서울 더라운지', '강남구 ', '서울 강남구 테헤란로 606 (호텔아이파크(주))', '02-2016-1205', 'http://www.seoul.park.hyattrestaurants.kr/lounge/default-ko.html', '11:00 ~ 22:00 (12:00 ~ 17:30 애프터눈 티 세트 이용 시간)', '2호선 삼성역 2번 출구', '애프터눈티세트 빙수 2인 음료 및 디저트 모던 한식 디너 세트');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11668', '목련식당 ', '강남구 ', '서울 강남구 도산대로30길 15', '02-541-5858', NULL, NULL, '7호선 학동역 8번 출구', '누룽지정식 오징어볶음 굴전');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11727', '우미각 논현2호점', '강남구 ', '서울 강남구 언주로141길 6 백향빌딩 1층', '02-541-8802', NULL, '매일 10:30~21:00', '3호선 매봉역 1번 출구', '한우특생등심 보리굴비정식 한우 특꽃등심');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14320', '쿼터보틀', '강남구 ', '서울특별시 강남구 도산대로30길 27 (논현동)', '02-549-0759', NULL, '매일 18:00 - 02:00', '7호선 학동 8번 출구', '버섯퀘사디아 시금치치즈딥과 크래커 치폴레팝콘치킨과 블루치즈딥');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14366', '랩24', '강남구 ', '서울 강남구 압구정로42길 23 (신사동)', '02-511-4523', 'https://www.instagram.com/labxxiv/', '매일 11:30 ~ 22:30 (Break time 15:00~18:00)', '분당선 압구정로데오역 5번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('22834', '나이브커피', '강남구 ', '서울 강남구 압구정로79길 39 (청담동)', '070-4117-3292', 'https://www.instagram.com/naive_coffee/', '평일 08:00 - 22:00 / 주말 11:00 - 22:00', '7호선 청담역 9번 출구 도보 20분', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('30913', '스시히로바 삼성동본점', '강남구 ', '서울 강남구 삼성로 620 (삼성동 블래스톤리조트)', '02-515-5511', 'https://sushilove.tistory.com/', '평일 11:30 - 14:30 / 17:00 - 21:30 주말 11:30 - 21:30', '9호선 삼성중앙역 3번 출구', '다이어트 세트 광어 초밥 장어 초밥 연어 초밥');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('30956', '강가 역삼점', '강남구 ', '서울 강남구 논현로 508 (역삼동 GS강남타워)', '02-2005-0610', 'http://www.ganga.co.kr/', '평일 11:00 - 14:30 / 17:00 - 21:00  일요일 11:30 - 15:00 / 17:00 - 21:00', '2호선 역삼역 7번 출구에서 148m', '치킨 마크니 23500원 탄두리 치킨 26500원  탄두리 프로운 32000원');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('42262', '[백년가게] 진성식당', '강남구 ', '서울 강남구 학동로81길 7 (청담동)', '02-511-8157', NULL, '11:00 ~ 22:00', '7호선 청담역 10번 출구', '칼국수 보쌈');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('383', '해랑', '강남구 ', '서울 강남구 강남대로118길 12 (부경빌딩) 지하 1층', '02-544-7270', NULL, '월~토 11:30 ~ 01:00', '9호선 신논현역 3번 출구    7호선 논현역 2번 출구', '해물탕 랍스타사시미');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('512', '산호', '강남구 ', '서울 강남구 논현로175길 111 (신사동 만수빌딩)', '02-517-0035', 'http://instagram.com/sanho_gaengdu', '11:30 ~ 23:00', '3호선 신사역 678번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('542', '뀌쏭82', '강남구 ', '서울 강남구 양재천로 167 아성빌딩 1층', '02-529-3582', NULL, '화~토 11:30 ~ 22:00 (Break Time 15:00 ~ 18:00) 일 11:30 ~ 21:30 (Break Time 15:00 ~ 18:00)', '3호선 매봉역 4번 출구', '암돼지삼겹살 퐁피두(광어와 루꼴라)');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('953', '칠량', '강남구 ', '서울 강남구 영동대로 731 (청담동 신영빌딩)', '02-516-7095', NULL, '매일 11:30 ~ 22:00 (Last order 14:30 20:00) (Break time 15:00 ~ 17:00)', '7호선 청담역 13번 출구', '삼량 코스요리 사량 코스요리');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('1457', '그릴아지사이', '강남구 ', '서울 강남구 테헤란로13길 8-10 (동영빌딩)', '02-565-7442', NULL, '매일 11:00~14:00 / 17:30~24:00  토 17:30~24:00', '2호선 역삼역 4번 출구', '간바레오또상SET 시로미 돈샤브 샐러드 가이센동');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2422', '사리원', '강남구 ', '서울특별시 강남구 남부순환로 2712 (도곡동)', '02-573-2202', 'http://www.sariwon.co.kr/', '매일 11:30 ~ 22:00', '3호선 매봉역 4번 출구', '사리원 불고기 등심 양념불고기 불고기 쌈밥정식');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2636', '한우리(본점)', '강남구 ', '서울특별시 강남구 도산대로 304 (논현동)', '02-545-3334', 'http://www.hwrfood.com', '11:30 ~ 21:30', '7호선 강남구청 3번 출구', '버섯쇠고기국수전골 로스편채 생샤브샤브');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2781', '베라짜노', '강남구 ', '서울 강남구 도산대로57길 13-2(청담동)', '02-517-3274', NULL, '12:00 ~ 23:00', '7호선 강남구청역 4번 출구 분당선 압구정로데오역 4번 출구', '와인바');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2900', '55°와인앤다인', '강남구 ', '서울특별시 강남구 선릉로162길 12 (청담동)', '02-518-5578', 'http://55d.co.kr/', '18:00 ~ 02:00(익일)', '3호선 압구정 2번 출구  분당선 압구정로데오 34번 출구', '와인바');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3003', '개화옥', '강남구 ', '서울 강남구 압구정로50길 7 (정동상가) 1층', '02-549-1459', 'https://blog.naver.com/koreafood_gaewhaok', '매일 11:00~24:00', '3호선 압구정역 2번 출구 분당선 압구정로데오역 56번 출구', '소불고기 보쌈 차돌박이와 채소무침 떡갈비 김치말이국수');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3352', '떼부짱', '강남구 ', '서울 강남구 논현로175길 25 (신사동 다보빌딩)', '02-517-0997', 'http://www.ddebujjang.com/main/index.do', '매일 11:00~23:30 일 16:00~23:00', '3호선 압구정 4번 5번 출구', '항정살 갈매기살 와인삼겹살 돼지왕갈비');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3776', '린즈컵케이크', '강남구 ', '서울 강남구 압구정로29길 68 (압구정동 현대아파트) 지하 1층', '02-792-0804', 'http://lynnscupcakes.com', '10:00 ~ 20:00', ' ', '컵케이크');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4406', '필경재', '강남구 ', '서울 강남구 광평로 205', '02-445-2115', 'http://www.philkyungjae.co.kr ', '매일 12:00~22:00', '3호선 수서역 1번 출구', '미정식 죽정식 국화정식');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4661', '부산양곱창', '강남구 ', '서울 강남구 언주로98길 8-1 (역삼동)', '02-554-7780', NULL, '매일 17:30~06:00', '2호선 선릉역 5번 출구', '양구이 대창구이 곱창구이 전골');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4899', '그랑씨엘', '강남구 ', '서울 강남구 도산대로45길 16-6 (신사동) 1층', '02-548-0283', 'http://www.prepbox.co.kr/', '평일 11:00~15:00 17:00~23:00 (L.O 21:30) 토 11:00~23:00 (L.O 21:30)  일 11:00~22:00 (L.O 21:00)', '3호선 압구정역 3번 출구 분당선 압구정로데오역 5번 출구', '엔초비오일 파스타 해산물 빠에야 머쉬룸 샐러드');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4963', '여수동촌', '강남구 ', '서울 강남구 삼성로75길 9 (대치동)', '02-556-0530', NULL, '10:00 - 14:00 / 16:00 - 22:00 주말 11:00 - 22:00', '2호선 선릉 1번 출구', '새조개 샤브샤브(겨울~봄) 하모 샤브샤브(여름~가을)');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4966', '비타민카페', '강남구 ', '서울 강남구 삼성로100길 23-5 (삼성동)', '02-566-2367', NULL, '18:00~02:00', '2호선 삼성역 5번 출구', '카페&펍');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5072', '삼성원조양곱창', '강남구 ', '서울 강남구 학동로101길 7', '02-545-8895', NULL, '16:00 ~ 23:00', '7호선 청담역 14번 출구', '양곱창 ');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5226', '사루비아', '강남구 ', '서울 강남구 논현로153길 57', '02-540-7344', 'https://www.instagram.com/sarubia_garosugil/', '일~목 12:00 ~ 23:00 금~토 12:00 ~ 24:00', '3호선 신사역 8번 출구', '아보카도 푸타네스카 파스타 쉬림프 블랙 오일 파스타 사루비아 스테이크');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5422', '정식당', '강남구 ', '서울 강남구 선릉로158길 11 (청담동)', '02-517-4654', 'http://www.jungsik.kr/', '<평일> 점심 12:00~15:00 (Last Order 14:00) 저녁 17:30~22:30 (Last Order 20:30)  <주말> 점심 11:00~17:00 (Last Order 15:00) 저녁 17:30~24:00 (Last Order 21:00)', '3호선 압구정역 4번 출구 분당선 압구정로데오역 4번 출구', '점심코스 저녁코스');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5433', '새벽집', '강남구 ', '서울 강남구 도산대로101길 6 (청담동)', '02-546-5739', 'https://saebyukjip.modoo.at/', NULL, '7호선 청담역 13번 출구', '꽃등심 양념갈비 생고기 불고기');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5774', '레스쁘아 뒤 이부', '강남구 ', '서울 강남구 선릉로152길 33 (청담동)', '02-517-6034', 'https://app.catchtable.co.kr/ct/shop/lespoir?from=share', '매일 12:00 ~ 22:00 (Break Time 15:00 ~ 18:00)', '분당선 압구정로데오역 34번 출구', '킹크랩과 엔다이브 샐러드 푸아그라');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6520', '장사랑', '강남구 ', '서울 강남구 언주로165길 7-4 (신사동)', '02-546-9994', NULL, '매일 11:00 ~ 16:00 / 17:00 ~ 21:00', '3호선 압구정역 3번 출구', '곤드레솥밥바싹불고기정식들깨수제비 고등어구이');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('8722', '스시효', '강남구 ', '서울 강남구 선릉로146길 25 (유현빌딩)', '02-545-0023', 'https://sushihyo.modoo.at/', '매일 12:00~14:30 / 18:00~22:00', '7호선 수인분당선 강남구청역 3-1번 출구', '스시코스 사시미코스');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('10166', '장성생태전문점', '강남구 ', '서울 강남구 언주로149길 7', '02-3446-0037', NULL, '평일 11:00 ~ 15:00 / 17:00 ~ 22:00 토요일 11:00 ~ 22:00', '7호선 학동역 10번 출구', '생태탕 생대구탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11744', '마담밍', '강남구 ', '서울 강남구 선릉로86길 5-4 (대치동) 1층', '02-567-6992', 'http://www.madamming.com ', '월~토 11:30 ~ 22:00', '2호선 수인분당선 선릉역 2번 출구', '쟁반 짜장 짬뽕 냉면 중국 냉면');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11756', '영천영화식육식당', '강남구 ', '서울 강남구 도산대로90길 3 (상민빌딩)', '02-3442-0381', 'http://www.ycyh.co.kr/default/', NULL, '7호선 청담역 9번 출구', '한우 육회 한우 갈비살 한우 안창살 한우 꽃등심');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12115', '양마니(청담점) ', '강남구 ', '서울 강남구 도산대로56길 16', '02-542-9263', NULL, NULL, '7호선 강남구청역 4번 출구', '특양구이 양밥 대창구이');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13108', '서초 남순남순대국 ', '강남구 ', '서울 강남구 도곡로4길 12 (도곡동 지엠빌딩)', '02-574-3227', 'http://blog.naver.com/bbajijik ', '월~토 10:00~22:00', '3호선 양재역 3번 출구', '일반순대국 일반순대 토종순대국 삼색순대');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14013', '르브런쉭', '강남구 ', '서울 강남구 강남대로162길 41-22 (신사동)', '02-542-1985', 'https://www.instagram.com/lebrunchic/?igshid=1kol08e4llozg', '10:00 ~ 15:00 / 16:30 ~ 20:30', '3호선 신사역 8번 출구', '에그 베네딕트 아보카도에그슬럿 프렌치 토스트 만조리가토니');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('15852', '슈퍼집', '강남구 ', '서울 강남구 언주로130길 14 (논현동 회림빌딩)', '02-540-1591', 'https://www.instagram.com/superzip_topokki_/', '평일 11:30 - 21:50 / 주말 11:30 - 21:30 * Break time 13:50 - 14:30', '지하철 7호선 학동역 1번출구에서 도보 530m 강남구청역 2번출구에서 480m', '깻잎 떡볶이 마늘 떡볶이');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('20077', '백곰막걸리&양조장', '강남구 ', '서울 강남구 압구정로48길 39 (신사동) 1-2층', '02-540-7644', 'http://whitebear.modoo.at', '월~목 17:30 - 23:30 금 17:30 - 01:00 / 토 17:00 - 01:00', '분당선 압구정로데오역 5번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('24624', '오엔', '강남구 ', '서울 강남구 압구정로11길 37-30', '02-3442-1582', 'http://www.onriver.co.kr/', '매일 11:00 - 05:00', '3호선 압구정역 6번 출구', 'T-bone Set');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('28058', '비언유주얼 강남점', '강남구 ', '서울 강남구 선릉로108길 5 (삼성동) 1층', '02-790-0642', 'http://beunusual.co.kr	', '평일 12:00~14:30 / 17:30~22:00 주말 12:00~15:30 / 16:30~22:00', '수인분당선 9호선 선정릉역 3번 출구', '주말 및 디너코스(2테이블) 109000원 주말 및 디너코스(원테이블) 148000원 프로포즈대관 380000원');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('29996', '케르반 익스프레스 GFC점', '강남구 ', '서울 강남구 테헤란로 152 (역삼동 강남파이낸스센터) 지하 1층', '02-566-4767', NULL, '평일 11:00 - 21:00', '2호선 역삼역 2번 출구', '랩 케밥 치킨 쉬시 케밥 버터 치킨 커리');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('42255', '피겨앤그라운드', '강남구 ', '서울 강남구 논현로153길 53 (신사동 피겨앤그라운드)', NULL, NULL, '1층 카페(컨플릭트스토어) 매일 11:00 ~ 22:00', NULL, NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('1044', '퀸즈파크 청담점', '강남구 ', '서울 강남구 압구정로60길 22', '02-542-4073', NULL, '월~목 11:00~22:00 금 11:00~23:00 토 10:00~23:00 일 10:00~22:00', '3호선 압구정역 3번 출구 분당선 압구정로데오역 34번 출구', '새우 날치알 파스타 봉골레 파스타 가리비와 버섯 샐러드');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('1264', '커피바K', '강남구 ', '서울 강남구 언주로 517 (역삼동 KT영동지사 신라 스테이호텔)', '02-516-1970', NULL, '월~토 19:00~02:00', '역삼역 8번 출구 도보 12분소요', '바');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('1611', '단미그린비 ', '강남구 ', '서울 강남구 밤고개로14길 13-50', '02-445-2100', NULL, '매일 11:30 ~ 15:00 / 17:30 ~ 21:30', '분당선 3호선 수서역 6번 출구', '자연정찬 귀연정찬');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('1641', '오미가(신사점) ', '강남구 ', '서울 강남구 논현로 833 (재경빌딩)', '02-543-1145', NULL, '매일 12:00~14:30 / 17:00~22:00', '3호선 압구정역 4번 출구', '오미가 한정식 오미가 돌솥밥');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2514', '목포자매집', '강남구 ', '서울 강남구 언주로115길 14', '02-543-0729', NULL, '평일 11:30 ~ 22:00 토요일 11:30 ~ 21:00', '7호선 학동역 1번 출구', '짱뚱어탕 매생이국 병어조림 낙지연포탕 민어 병어');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2677', '한우리한정식(강남)', '강남구 ', '서울특별시 강남구 도산대로 308 (논현동)', '02-541-4270', 'http://han.hwrfood.com', '11:30 ~ 22:00', '7호선 강남구청역 3번 출구 7호선 학동역 10번 출구', '한우숯불불고기정식 희망상차림 행복상차림');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2696', '해초록', '강남구 ', '서울특별시 강남구 영동대로 336 (대치동)', '02-554-5522', 'http://www.haechorok.co.kr/', '12:00~15:00 / 17:30~22:00', '2호선 삼성 2번 출구', '회정식 세꼬시정식 자연산 모듬회');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2712', '뱅가', '강남구 ', '서울특별시 강남구 언주로168길 6 (신사동)', '02-516-1761', NULL, '18:00~02:00(익일)', '3호선 압구정역 3번 출구 분당선 압구정로데오역 5번 출구', '시저샐러드 알리오올리오 코리안비프');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2906', '카페티퍼스트에비뉴', '강남구 ', '서울특별시 강남구 도산대로59길 9 (청담동)', '02-517-0255', NULL, '매일 10:00 ~ 24:00', '7호선 강남구청역 4번 출구 분당선 압구정로데오 4번 출구 도보 5분소요', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3075', '스페인클럽', '강남구 ', '서울 강남구 압구정로10길 26', '02-515-1118', 'http://www.spainclub.co.kr/', '월~목 12:00 ~ 15:30 / 17:30 ~ 22:00 금요일 12:00 ~ 15:30 / 17:30 ~ 23:00 토요일 12:00 ~ 23:00 / 일요일 12:00 ~ 22:00', '3호선 신사역 8번 출구', '빠에야 데 마리스코스 하몽 오징어튀김 감바스 ');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3756', '남서울민물장어', '강남구 ', '서울 강남구 봉은사로 137 (상원빌딩)', '02-544-1010', NULL, '12:00 ~ 21:30', '9호선 신논현역 3번 출구', '장어구이 장어고추장구이 장어덮밥');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4042', '대우식당', '강남구 ', '서울 강남구 테헤란로25길 34', '02-552-1663', NULL, '평일 11:00 ~ 15:00 / 17:00 ~ 21:30 주말 11:30 ~ 21:30', '2호선 역삼 6번 출구', '부대찌개 김치찌개 스테이크');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4428', '더 그린테이블', '강남구 ', '서울 강남구 선릉로155길 13 (신사동) 2층', '02-591-2672', 'http://www.thegreentable.co.kr/', '평일 12:00 ~ 15:00 / 18:00 ~ 22:00 일요일 12:00 ~ 15:00 / 18:00 ~ 21:30', '분당선 압구정로데오역 5번 출구', '계절코스');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4641', '신미식당 ', '강남구 ', '서울 강남구 압구정로 214 (현대종합상가빌딩)', '02-516-4900', NULL, '11:00 ~ 15:00 / 17:00 ~ 22:00', '3호선 압구정역 2번 출구', '생삼겹살 감자탕 부대찌개 북어탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4713', '고향집', '강남구 ', '서울 강남구 언주로134길 20 (논현동)', '02-543-6363', NULL, '11:00 ~ 22:30', '7호선 강남구청 3번 출구', '일반한식');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5118', '그란구스또', '강남구 ', '서울 강남구 삼성로 340 (대치동 앨포트빌딩) 12층', '02-556-3960', 'http://www.grangusto.net', '매일 11:30 ~ 15:00 / 17:30 ~ 22:00 (토요일) 11:30 ~ 23:00', '3호선 대치역 3번 출구 2호선 삼성역 3번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5600', '마당', '강남구 ', '서울 강남구 도산대로45길 7 (신사동 에르메스도산파크)', '02-546-3643', NULL, '평일 11:00 - 19:00 주말 12:00 - 19:00', '3호선 압구정 3번 출구  분당선 압구정로데오 5번 출구', '카페');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5681', '마오', '강남구 ', '서울 강남구 도산대로56길 17 (청담동)', '02-514-8803', NULL, '매일 11:00 ~ 24:00', '7호선 강남구청역 4번 출구', '북경오리 소고기 훠궈 자장면 마오면');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5780', '콰이19', '강남구 ', '서울 강남구 도산대로25길 16 (신사동) 1층', '02-540-4155', 'https://www.instagram.com/kuai_china_flavor/?igshid=llol1ut93c8z', '평일 11:30 ~ 15:00 / 17:30 ~ 22:00 토요일 11:30 ~ 22:00', '3호선 압구정역 4번 출구', '등갈비 깐풍소스 매운 고추 닭날개 오향장육 중국식냉면');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5983', '싱카이 역삼점', '강남구 ', '서울 강남구 논현로 508 (역삼동 GS강남타워) 지하 1층', '02-2005-1003', 'http://www.ourhomehospitality.com/brand/brandBranch.do?brandSeq=11&branchSeq=68', '평일 11:30 ~ 14:30 / 17:30 ~ 21:30 토요일 12:00 ~ 15:00 / 17:00 ~ 20:30', '2호선 역삼역 7번 출구', '비즈니스 코스 점심 코스 유린기 싱카이 냉채 중화 칠리 쉬림프 팔보라조');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('8682', '허형만의압구정커피집', '강남구 ', '서울 강남구 압구정로 151 (현대아파트)', '02-511-5078', NULL, '평일 08:00 ~ 19:00 토요일 08:00 ~ 18:00', '3호선 압구정역 6번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('10900', '미엘', '강남구 ', '서울특별시 강남구 도산대로67길 13-12  (청담동 퍼즐하우스)', '02-512-2395', NULL, '11:00 ~ 23:50', '분당선 압구정로데오역 3번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11564', '토담골', '강남구 ', '서울 강남구 삼성로 766 (청담동 유림빌딩)', '02-548-5115', NULL, '11:30 ~ 15:00 / 17:00 ~ 22:00', '7호선 청담역 9번 출구', '토담골정식 꽁보리밥 꽁보리열무비빔밥 돌솥곱창냉이찌개');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11717', '10꼬르소꼬모카페', '강남구 ', '서울 강남구 압구정로 416 Trinity 빌딩 지하1층', '02-547-3010', 'http://www.10corsocomo.co.kr', '매일 11:00~22:30', '7호선 강남구청역 4번 출구    분당선 압구정로데오역 3번 출구', '후루티 디 마레 카펠리니 딸리아딸레 보따르가 파스타 한우채끝 그릴');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11791', '와라쿠', '강남구 ', '서울 강남구 압구정로4길 13-7', '02-517-2292', NULL, '월~목 18:00 ~ 01:00 금~토 18:00 ~ 02:00', '3호선 신사역 8번 출구', '네기마 쇼우니꾸 돈도로 규단');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12099', '대려도', '강남구 ', '서울 강남구 역삼로 118 (역삼동)', '02-555-0550', 'http://www.daeryudo.com/', '매일 11:30 ~ 15:00 / 17:30 ~ 22:00', '2호선 신분당선 강남역 4번 출구', '육품냉채 간풍바다가재');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14769', '러빙헛', '강남구 ', '서울 강남구 개포로22길 35 (개포동)', '02-576-2158', 'http://lovinghut.kr/kr/', '11:00 - 21:00', '신분당선 양재시민의숲역 2번 출구', '소이 스테이크 버거 비건피자 소이라떼');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('15411', '메종 드 라 카테고리', '강남구 ', '서울 강남구 선릉로 826', NULL, 'http://instagram.com/maison_de_la_categorie', '11:00 - 21:00 (Break time 15:30 - 17:30)', '분당선 압구정로데오역 4번 출구', '비프 파스타 성게알 파스타');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('1077', '기욤', '강남구 ', '서울 강남구 선릉로152길 17 (인성빌딩)', '02-512-6701', NULL, '월~목일 10:00~24:00 금~토 10:00~01:00', '3호선 압구정역 3번 출구 분당선 압구정로데오역 4번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('1113', '마이분주스바', '강남구 ', '서울 강남구 도산대로 442 (피엔폴루스)', '02-6947-1273', NULL, '10:00 ~ 22:00', '7호선 청담역 8번 출구 분당선 압구정로데오역 4번 출구', '밀싹주스 과일차 에이드');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('1657', '이닝', '강남구 ', '서울 강남구 도산대로58길 14', '02-547-7444', 'http://www.yining.kr/', '매일 12:00 ~ 15:00 / 17:30 ~ 22:00', '7호선 강남구청역 4번 출구', '멘보샤 어향동고 동파육 북경오리');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2349', '코리아하우스', '강남구 ', '서울 강남구 압구정로79길 56 (아름다운빌딩)', '02-3443-2121', 'http://www.koreahouse.co.kr/', '16:30 ~ 22:00', '7호선 청담역 12번 출구', '꼬냑등심 스페셜 등심 갈낙탕 마른보리굴비 정식');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2433', '그릴H', '강남구 ', '서울특별시 강남구 도산대로 439 (청담동)', '02-3446-5547', 'http://www.grillH.com', '런치 11:30 ~ 15:00 디너 18:00 ~ 22:00  주말 런치 11:00~14:30 주말 디너 18:00~21:30', '7호선 청담 8번 출구 분당선 압구정로데오 4번 출구', '스테이크 한국식바베큐');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2690', '미엘', '강남구 ', '서울특별시 강남구 도산대로67길 13-12 (청담동)', '02-512-2395', 'http://www.miel.kr', '11:00 ~ 24:00', '7호선 청담 8번 출구 분당선 압구정로데오 34번 출구 도보 7분소요', '커피 티 파스타 리조또 스테이크');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3975', '심양', '강남구 ', '서울 강남구 도산대로 408 (신우빌딩)', '02-545-9211', NULL, '매일 17:30 ~ 04:30', '7호선 강남구청역 4번 출구', '양꼬치 양갈빗살꼬치 모둠꼬치');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4626', '신흥정육식당', '강남구 ', '서울 강남구 역삼로 406', '02-555-8157', NULL, '월~토 11:30 ~ 22:30', '2호선 선릉역 2번 출구', '등심 육회 차돌백이 제육볶음');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5041', '삼성국수', '강남구 ', '서울 강남구 영동대로 611 (삼성동 Chan&Chan Tower) 지하 1층', '02-3442-1957', NULL, '11:30 ~ 21:30', '9호선 봉은사역 2번 출구', '칼국수 어복쟁반 빈대떡 모듬전 일품요리세트');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5136', '대가방', '강남구 ', '서울 강남구 선릉로145길 13 (럭스웨이빌딩)', '02-544-6336', 'https://daegabang.modoo.at/', '평일 11:30 - 15:00  / 17:00 - 21:30 토 공휴일 11:30 - 21:30', '7호선 강남구청역 3번 출구', '탕수육 유니짜장면 매운짬뽕 다섯가지냉채 해물삭스핀');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5153', '기소야', '강남구 ', '서울 강남구 삼성로92길 13 (삼성동)', '02-554-7077', 'http://www.kisoya.co.kr/', '매일 11:30 ~ 20:30', '2호선 삼성역 5번 출구', '김치우동정식 돈까스자루소바 가쯔나베정식');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5201', '한성칼국수', '강남구 ', '서울 강남구 언주로 735 (관세개발원빌딩) 국민은행 지하', '02-544-0540', NULL, '평일 11:30~15:00 / 17:00~22:00 일 11:30~16:00 / 17:00~21:30', '7호선 학동역 10번 출구', '칼국수 만두국 수육 낙지볶음');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5387', '뱃고동', '강남구 ', '서울 강남구 언주로172길 54 (신사동)', '02-514-8008', 'http://www.batgodong.co.kr/', '평일 11:30 ~ 22:00 주말 공휴일 12:00 ~ 22:00', '3호선 압구정역 3번 출구 분당선 압구정로데오역 5 6번 출구 도보 5분', '오징어불고기백반 낙지불고기백반 낙지전골 오징어전골');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5832', '강강술래(역삼점)', '강남구 ', '서울 강남구 논현로 325 (강강술래)', '02-567-9233', 'http://www.sullai.com ', '매일 11:00~23:00', '2호선 역삼역 2번 출구', '한우꽃등심 한우생등심 한우육회비빔냉면 한우육회');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5974', '한추', '강남구 ', '서울 강남구 논현로175길 68 (신사동)', '02-541-0969', NULL, '17:00~02:00', '3호선 신사 8번 출구  분당선 압구정로데오 45번 출구', '후라이드치킨 고추튀김 계란말이');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6278', '한스케익', '강남구 ', '서울 강남구 논현로167길 21 (신사동)', '02-515-4677', 'http://www.hanscake.co.kr/', '09:30 ~ 22:00', '3호선 압구정역 4번 출구', '베이커리');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('10813', '리틀사이공', '강남구 ', '서울특별시 강남구 언주로174길 26 (신사동)', '02-547-9050', NULL, '매일 11:30 ~ 22:00', '3호선 압구정 2번 출구 분당선 압구정로데오 56번 출구 도보 10분소요', '고이꾸온 짜죠 꼼징능주 분짜');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11544', '뉴욕바닷가재', '강남구 ', '서울 강남구 선릉로152길 5 1층', '02-547-0023', 'http://www.lobsterok.co.kr/', '매일 11:30 ~ 22:00', '7호선 수인분당선 강남구청역 4번 출구', '바닷가재풀코스 바닷가재 양념구이바닷가재 버터구이바닷가재 찜바닷가재 전골');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11593', '이즈미', '강남구 ', '서울 강남구 언주로 857 (신사동)', '02-542-7171', NULL, '매일 11:30~15:00 / 17:30~22:00', '3호선 압구정역 3번 출구', '모듬사시미 초밥');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11713', '비금도 ', '강남구 ', '서울 강남구 압구정로80길 26 (청담동 노아빌딩)', '02-512-1714', NULL, '매일 11:30 ~ 14:30 / 17:00 ~ 22:00', '7호선 청담역 8번 출구    분당선 압구정로데오역 4번 출구 도보 7분소요', '비금도코스요리 육전 삼합 산낙지탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12013', '몰타참치', '강남구 ', '서울 강남구 삼성로85길 26 (대치동 V&S) V&S빌딩 2층', '02-508-7861', NULL, '매일 11:30 ~ 23:00', '2호선 선릉역 1번 출구', '몰타정식 가마도로 사시미');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12539', '역삼동북어집 ', '강남구 ', '서울 강남구 논현로85길 5-14 (역삼동)', '02-558-6605', NULL, '화~금 09:00 ~ 20:30 토요일 08:40 ~ 20:00', '2호선 역삼역 3번 출구', '북어찜 북어구이 북어찜백반');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14740', '언양불고기', '강남구 ', '서울 강남구 학동로2길 15', '02-548-2684', NULL, '12:00 ~ 22:00', '9호선 신논현역 3번 출구', '등심 불고기');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('18285', '수담한정식', '강남구 ', '서울 강남구 봉은사로 418 (조양빌딩)', '02-558-4900', 'http://www.sudam.or.kr/', '평일 11:30~15:00 / 17:30~22:00 주말 12:00~15:00 / 17:30~22:00', '9호선 선정릉역 1번 출구 / 9호선 삼성중앙역 7번 출구', '진연상 담정식 선비상 대감상');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('21598', '두레국수', '강남구 ', '서울 강남구 도산대로37길 28 (신사동)', '02-3444-1421', NULL, '평일일 11:00 ~ 21:00', '3호선 압구정역 3번 출구 도보 5분', '두레국수 비빔국수 곱창전골');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('30904', '루나아시아', '강남구 ', '서울 강남구 삼성로100길 15 (삼성동 명당빌딩)', '+82-2-562-7992', 'http://lunaasia.modoo.at/', '평일 11:00 - 22:00 (Break time 14:30 -17:00) 주말 12:00 - 21:00 공휴일 12:00 - 21:00', '2호선 삼성역 5번 출구  9호선 삼성중앙역 5번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('441', '울프강 스테이크 하우스', '강남구 ', '서울 강남구 선릉로152길 21 (청담동 영인빌딩)', '02-556-8700', 'http://www.wolfgangssteakhouse.co.kr/', '매일 11:00 ~ 23:00', '분당선 압구정로데오역 4번 출구', '포터하우스 스테이크');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2653', '채운', '강남구 ', '서울특별시 강남구 논현로175길 107 (신사동)', '02-516-8837', NULL, '매일 11:30 ~ 22:00  (Break time 15:00 ~ 17:30)', '3호선 신사역 8번 출구', '광동식 생선찜 다진마늘튀긴새우 가지와다진돼지고기냄비 광동식 구운통닭 ');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3242', '코코이찌방야', '강남구 ', '서울 강남구 강남대로102길 14 (장연빌딩)', '02-2051-5510', 'http://www.cocoichibanya.co.kr/', '매일 11:00 ~ 22:30', '9호선 신논현역 5번 출구', '멘치까스카레 로스까스카레 오색야채');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4668', '우랑 청담점', '강남구 ', '서울 강남구 압구정로79길 79 (청담동) JM빌딩 1층', '02-3445-4005', NULL, '월~토 17:30~01:30  일 공휴일 18:00~24:00', '7호선 청담역 13번 출구', '우랑나베 대게샤브샤브 야끼니꾸');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4860', '굴비마을', '강남구 ', '서울 강남구 도산대로49길 10-8 (신사동 신사동 K 빌딩)', '02-518-4424', NULL, '11:30 ~ 22:00', '3호선 압구정역 3번 출구 분당선 압구정로데오역 5번 출구', '굴비');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5009', '르포트13', '강남구 ', '서울 강남구 압구정로4길 13-13', '02-3444-1533', NULL, '평일 11:30 - 24:00 주말 12:30 - 24:00', '3호선 신사 8번 출구', '프랑스식해물찜 버섯크림리조또 스파이시봉골레 빠에야');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5524', '벽제갈비 타워팰리스점', '강남구 ', '서울 강남구 언주로30길 26 (타워팰리스) VANNT 1층(도곡동)', '02-2058-3535', ' https://www.bjgalbi.com/index', '매일 11:30~22:00 Break Time (평일 15:00~17:00 주말공휴일 브레이크타임 없음)', '분당선 도곡역 4번 출구', '설화생갈비 설화꽃등심 갈비탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5703', '코코브루니', '강남구 ', '서울특별시 강남구 선릉로 803  (신사동)', '02-517-1875', 'http://www.cocobruni.co.kr/', '09:00 - 22:30', '7호선 강남구청역 3번 출구 분당선 압구정로데오역 5번 출구', '초콜릿 커피');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5804', '압구정서서갈비', '강남구 ', '서울 강남구 압구정로50길 22 (신사동)', '02-516-4482', NULL, '16:00 - 06:00 (익일)', '3호선 압구정 3번 출구  분당선 압구정로데오 56번 출구 도보 5분소요', '한식');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6363', '삼정복집', '강남구 ', '서울 강남구 봉은사로 626 (세헌빌딩) 1층', '02-3447-3030', 'http://www.samjungbok.com/', '매일 11:00 - 15:00 / 17:00 - 22:00', '9호선 봉은사역 5번 출구', '참복활어 런치세트 참복A코스 참복B코스 장어코스 활복지리 매운탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6447', 'ebt', '강남구 ', '서울 강남구 논현로157길 55 (신사동)', '02-547-4100', 'http://elbonthetable.com/', '평일 12:00 ~ 23:00 (Break time 15:00~18:00)  토요일 12:00 ~ 23:00 (Break time 16:00~17:00)  일요일 12:00 ~ 22:00 (Break time 16:00~17:00)', '3호선 신사역 8번 출구', '런치프리픽스 트러플감자테린 계절야채 크루디 갑오징어 어란 파스타');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('7086', '동해별관', '강남구 ', '서울특별시 강남구 강남대로112길 13 (논현동)', '02-3445-7979', NULL, '17:00 - 22:30', '9호선 신논현 3번 출구', '물회');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('8647', '할머니현대낙지집', '강남구 ', '서울 강남구 압구정로14길 11', '02-544-8020', NULL, '매일 12:00~21:30', '3호선 신사역 8번 출구 3호선 압구정역 5번 출구 도보 8분', '낙지볶음 세발낙지볶음 감자탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11185', '달식탁', '강남구 ', '서울 강남구 도산대로15길 11', '02-511-9440', 'https://dalsiktak.kr/', '평일 11:30~15:00 / 17:00~22:30 ( Last order 14:30 / 21:30) 주말 11:30~22:30 ( Last order 21:30)', '3호선 신사역 8번 출구', '조갯살이 들어간 방아잎전 찹쌀 배추전 애호박 부추전 묵은 김치전 문어쌈장밥 고추장삼겹살 차돌박이 배추쌈 ');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11215', '옛골', '강남구 ', '서울 강남구 봉은사로24길 12', '02-561-0591', NULL, '08:00 ~ 21:30', '9호선 신논현역 4번 출구', '꽁치찌개 김치/된장 찌개 제육/오징어 볶음');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11555', '리베르떼', '강남구 ', '서울 강남구 논현로26길 55 1층', '02-577-1044', 'http://www.instagram.com/wookyu__lee', '매일 12:00 ~ 15:00 / 18:00 ~ 22:00', '3호선 매봉역 4번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11849', '루카511', '강남구 ', '서울 강남구 도산대로81길 40 (청담동 LUKE511빌딩)', '02-540-6640', 'https://www.instagram.com/luka511_seoul/', '매일 11:30 ~ 15:30 / 17:30 ~ 22:00', '분당선 압구정로데오역 2번 출구', '런치코스 디너코스');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12211', '와인북카페', '강남구 ', '서울특별시 강남구 논현로149길 5 (논현동) 엔타시아 빌딩 1층', '02-549-0490', 'https://www.facebook.com/Winebookcafe ', '17:00 ~ 24:00', '7호선 학동역 7번 출구', '비텔로 토나토 그라브락스 한우 1++ 채끝 등심 비스떼까');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12415', '커피스미스 가로수길점', '강남구 ', '서울 강남구 도산대로13길 13', '02-3445-3372', 'http://www.coffeesmith.co.kr/', '월~목 일 09:00 ~01:30 금토 09:00~02:30', '3호선 신사역 8번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13004', '황우양곱창', '강남구 ', '서울 강남구 언주로98길 5 (역삼동)', '02-554-8539', NULL, '11:30 ~ 23:00', '2호선 선릉역 5번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13355', '타워차이', '강남구 ', '서울특별시 강남구 언주로30길 26 (도곡동)', '02-2057-7007', 'http://www.towerchai.com/', '매일 11:30 ~ 15:00 / 17:30 ~ 22:00', '3호선 매봉 3번 출구 3호선 수인분당선 도곡 4번 출구', '홀샥스핀탕 S 올리브유 짜장면 송이덮밥');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13556', '외고집설렁탕', '강남구 ', '서울 강남구 삼성로 555 (삼성동)', '02-567-5225', 'https://oegojip.modoo.at/', '11:00 ~ 21:00', '9호선 삼성중앙역 6번 출구', '한식(설렁탕수육)');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13784', '스타쉐프', '강남구 ', '서울특별시 강남구 논현로38길 38-6 (도곡동)', '02-529-8248', NULL, '월~토 17:00 ~ 24:00', '3호선 매봉역 4번 출구', '지중해식문어요리 놀라운농어요리 버섯크림요리와 빵 키조개관자샐러드');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14029', '뺑드빱파', '강남구 ', '서울 강남구 압구정로20길 15 (신사동)', '02-543-5232', NULL, '08:00 ~ 20:00', '3호선 압구정 4번 출구', '베이커리');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14924', '오아시스', '강남구 ', '서울특별시 강남구 도산대로55길 20 (청담동)', '02-548-8859', 'http://www.instagram.com/oasisbrunch', '월~토 09:00~22:00 일 09:00~18:00', '분당선 압구정로데오역 4번 출구', '머쉬룸 크림 파스타 햄 치즈 토마토 오믈렛 에그베네딕트햄');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('24586', '삼원가든', '강남구 ', '서울 강남구 언주로 835 (삼원가든)', '02-548-3030', 'http://www.samwongarden.com/mall/', '매일 12:00~22:00', '3호선 압구정역 3번 출구', '삼원전통 양념갈비 한우생갈비');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('26062', '난장캠프 [임시휴업]', '강남구 ', '서울 강남구 강남대로158길 27 (신사동)', '02-3443-6466', 'https://nanjangcampgarosu.modoo.at/', '평일 16:00~23:20 토 16:00~23:00 일 16:00~22:00', '3호선 신사역 8번 출구 도보 10분', '참숯초벌 오겹살 참숯초벌 목살');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('34432', '바이킹스워프 코엑스점', '강남구 ', '서울 강남구 영동대로 513 (삼성동 코엑스) 코엑스 컨벤션센터 2층', '1644-4446 (모엣룸 패스트라인 1644-4391)', 'http://www.ivikings.co.kr/akg/ko/storetype/wharf.asp', '월~목-2부제 금-3부제 토~일-4부', '2호선 삼성역 6번 출구 9호선 봉은사역 7번 출구', '랍스터 씨푸드 회&초밥 그릴 등');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('42259', '[백년가게] 베이크하우스', '강남구 ', '서울 강남구 봉은사로71길 49 (삼성동) 1층', '02-543-7881', 'http://instagram.com/park_bakehouse', '08:00 ~ 21:00', '7호선 청담역 7번 출구', '모든 베이커리 앙금빵 슈크림빵 바게트');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('1056', '고센인코퍼레이티드', '강남구 ', '서울 강남구 선릉로158길 18', '02-515-1863', 'http://www.i-goshen.net', '매일  11:00~05:00', '7호선 강남구청역 4번 출구 분당선 압구정로데오역 4번 출구', '파스타 피자');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('1095', '개미집', '강남구 ', '서울 강남구 압구정로 110 (화인빌딩)', '02-541-5955', 'http://gaemizip.modoo.at/', '일~수  17:00~01:00 목~토 17:00~02:00', '3호선 신사역 8번 출구', '매운갈낙찜 모짜렐라김치전 홍어삼합 제철사시미');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('1252', '프레스카 29', '강남구 ', '서울 강남구 논현로28길 29 (토펙빌딩)', '02-575-2558', NULL, '매일 08:30~17:00', '3호선 매봉역 4번 출구', '카페');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3366', '이승남의꽃과빵', '강남구 ', '서울 강남구 압구정로29길 68 (압구정동 현대아파트) 현대상가 지하 1층', '02-516-3971', 'http://www.leesfnb.co.kr', '10:00 - 19:00', '3호선 압구정역 1번 출구', '케이크');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3531', '고래불', '강남구 ', '서울 강남구 논현로79길 62 (역삼동)', '02-556-3677', 'http://koraebul.com', '평일 11:30 ~ 14:30 / 17:00 ~ 22:00 주말 11:30 ~ 21:00', '신분당선 2호선 강남역 4번 출구', '바다풍경 바다물곰탕 고래고기');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4316', '훌리오', '강남구 ', '서울 강남구 강남대로102길 22 (역삼동 MIN빌딩)', '02-568-5324', 'https://www.juliokorea.com/', '매일 11:50 ~ 23:00 (L.O 21:30)', '9호선 신논현역 45번 출구', '트리플 파히타 엔칠라다 퀘사디아');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4369', '로즈힐', '강남구 ', '서울 강남구 테헤란로 152 (강남파이낸스센터) 지하 1층', '02-508-2090', 'http://www.irosehill.co.kr', '11:30 ~ 15:00 / 17:00 ~ 22:00', '2호선 역삼역 2번 출구', '코스 10만원~15만원 외');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4591', '피양콩할마니', '강남구 ', '서울 강남구 삼성로81길 30 (대치동)', '02-508-0476', 'https://piyang.modoo.at/', '매일 11:30~22:00', '2호선 선릉역 1번 출구', '콩비지 들깨수제비 만두국 콩비지전골 피양접시만두');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5049', '이남장(삼성동점)', '강남구 ', '서울 강남구 봉은사로108길 21', '02-569-8726', NULL, '평일 10:00~22:00 주말 09:00~21:00', '9호선 봉은사역 5번 출구 도보 7분소요 2호선 삼성역 7번 출구', '설렁탕 내장탕 우족탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5292', '꽃지', '강남구 ', '서울 강남구 봉은사로 610 (삼성동 수도빌딩)', '02-561-8788', 'https://kkotji.modoo.at/', '매일 11:30~21:30 (Break Time 15:00~17:00)', '2호선 삼성역 7번 출구 9호선 봉은사역 5번 출구', '간장게장정식 대하구이 양념게장 게살비빔밥 뚝배기 꽃게탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5707', '마이쏭', '강남구 ', '서울 강남구 도산대로45길 16-4 (신사동)', '02-518-0105', NULL, '매일 10:00 ~ 22:00 (Break Time 15:00~17:00) *수 10:00 ~ 15:00  (Only Brunch Buffet Time)', '3호선 압구정역 3번 출구 분당선 압구정로데오역 56번 출구', '마이쏭 브런치 플레이트 블루베리 팬케이크 베이컨 치즈 버거');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6060', '유다까', '강남구 ', '서울 강남구 언주로 632 (논현동)', '02-516-7012', NULL, '평일 11:30 ~ 15:00 / 17:00 ~ 22:00 주말 11:30 ~ 22:00', '7호선 학동역 1번 출구', '생선회 조리장 추천 생선회 사시미정식');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6135', '가람국시', '강남구 ', '서울 강남구 언주로135길 13 (논현동)', '02-541-8200', NULL, '평일 11:30 ~ 22:00 주말 11:30 ~ 15:00 / 17:00 ~ 21:30', '7호선 학동역 10번 출구', '칼국수 콩국수 접시만두 해물파전 녹두전');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6273', '부옥당', '강남구 ', '서울 강남구 영동대로106길 41 (삼성동 동영빌딩)', '02-558-9944', NULL, '12:00 ~ 22:00', '2호선 삼성역 7번 출구 9호선 봉은사역 5번 출구', '된장비빔밥');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6746', '텀블러비어', '강남구 ', '서울특별시 강남구 테헤란로20길 15 (역삼동)', '02-538-6665', NULL, '평일 16:00 - 24:00', '2호선 역삼 3번 출구', '독일식치킨 모둠소시지');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('8486', '레드마블하우스', '강남구 ', '서울 강남구 논현로 408', '1644-3392', 'http://www.redmarble.co.kr/', '평일 11:30~14:30 / 17:30~22:00 주말11:30~22:00', '2호선 역삼역 1번 출구', '레드마블 명품 살치살 로스편채 레드마블 한우국수전골');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('10623', '보노보노', '강남구 ', '서울 강남구 테헤란로 508 (해성2빌딩)', '02-3288-8080', 'http://www.bono-bono.com', '평일 11:30~15:00 / 18:00~21:30  토 12:00~15:00 / 16:30~19:00 / 19:30~22:00 일공휴일 12:00~15:00 / 17:00~21:30', '2호선 삼성역 4번 출구', '뷔페');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11680', '부산아구 ', '강남구 ', '서울 강남구 강남대로150길 10 (논현동)', '02-546-9947', NULL, '매일 10:00~05:00', '3호선 신사역 3번 출구', '아구찜 아구꽃게섞어찜 꽃게찜 낙지찜');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12772', '세시셀라(도산공원점)', '강남구 ', '서울 강남구 도산대로45길 10-4 삼경빌딩 1층', '02-3448-7100', NULL, '매일 11:30 - 22:00', '분당선 압구정로데오역 5번 출구', '음료 당근케이크 초콜릿케이크 브런치세트');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14040', '몽중헌', '강남구 ', '서울 강남구 도산대로 445 (청담동 M빌딩) 지하 1층', '02-3446-7887', 'http://www.mongjungheon.co.kr/', '매일 11:30 ~ 15:00 / 18:00 ~ 22:00', '분당선 압구정로데오역 4번 출구', '시그니처 딤섬 광동식 전가복 유린기 후난식 볶음밥');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('15849', '쇼린', '강남구 ', '서울 강남구 도산대로81길 18 (청담동)', '02-512-3100', 'https://www.instagram.com/shorin_/', '평일 18:00 ~ 24:00 주말 17:00 ~ 24:00', '지하철 분당선 압구정 로데오역 3번출구 700m', '우니테이스팅 우니한우육회 우니소바 한우스키야키 사시미 오마카세');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('22831', '솔빈덕핫도그', '강남구 ', '서울 강남구 도산대로51길 40 (신사동)', NULL, 'http://instagram.com/solbindog', '18:00 - 05:30', '분당선 압구정로데오역 5번 출구 100m이내', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('988', '르알래스카 가로수길점', '강남구 ', '서울 강남구 압구정로14길 15 (신사동)', '02-546-5872', NULL, '매일 09:00 ~ 22:20', '3호선 압구정역 5번 출구', '먹물크림치즈빵 비프샌드위치 바게트샌드위치');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('1064', '더블린테라스', '강남구 ', '서울 강남구 강남대로94길 27-15 (태리빌딩)', '02-555-2553', NULL, '평일 14:00 ~ 02:00  주말 13:00 ~ 02:00', '2호선 강남역 1112번 출구', '치즈볼 모듬나쵸 치킨 앤 칩스');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2570', '예당', '강남구 ', '서울 강남구 언주로153길 7 (신사동) 2층', '02-546-2525', NULL, '11:30 ~ 15:00 / 17:30 ~ 21:30', '3호선 압구정역 3번 출구', '풀내음밥상 꽃내음밥상 자연담은밥상 추억의 밥상 황제의밥상');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2649', '마망갸또', '강남구 ', '서울특별시 강남구 압구정로10길 30-12  (신사동)', '070-4353-5860', 'http://www.mamangt.com/shop/main/index.php', '11:30 ~ 23:00 공휴일 11:30 ~ 22:30', '3호선 신사 8번 출구', '카라멜 빙수  - 1인 9천5백원  - 2인 1만5천원');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2759', '하늘아래뜰', '강남구 ', '서울 강남구 언주로107길 39', '02-553-4163', 'http://www.skytteul.com', '월~토 12:00 ~ 14:30 / 17:30 ~ 22:00', '2호선 역삼역 7번 출구 7호선 학동역 2번 출구', '점심특선 저녁특선 하늘정식 뜰정식');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3222', '슈밍화미코', '강남구 ', '서울 강남구 도산대로85길 14', '02-3446-1227', NULL, '평일 11:30 ~ 15:30 / 18:00 ~22:00', '7호선 청담역 9번 출구 수인분당선 압구정로데오역 2번 출구', '숯불 와규 타다끼 사이폰 오차즈께 민물장어구이 계절사시미');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4934', '금성스테이크', '강남구 ', '서울 강남구 압구정로46길 5-14 (신사동)', '02-547-4872', NULL, '매일 11:30~22:00', '3호선 압구정 2번 출구  분당선 압구정로데오 56번 출구 도보 5분소요', '등심스테이크 베이컨구이 소시지전골');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5067', '저스트스테이크', '강남구 ', '서울 강남구 언주로152길 11-7 (신사동)', '02-544-9357', NULL, '매일 12:00 ~ 22:00 (Last Order 21:00)', '분당선 압구정로데오역 5번 출구 3호선 압구정역 3번 출구', '티본스테이크 그릴에 구운 야채 볼로네제');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5210', '민스키친 강남점', '강남구 ', '서울 강남구 도산대로45길 10-4 (신사동) 지하 1층', '02-544-1007', 'https://minskitchen.imweb.me/', '월~토 11:30~21:30 (Last Order 21:00) (Break Time 14:30~17:30)', '7호선 강남구청역 4번 출구 분당선 압구정로데오역 5번 출구', '콩나물 냉채 불갈비 샐러드 한우 궁중 떡볶이 해물 몪음면 화이트소스 새우 요리');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5219', '까발로비안코', '강남구 ', '서울 강남구 삼성로104길 9 (삼성동)', '02-562-9262', NULL, '월~금 17:00 ~ 01:00 일요일 18:00 ~ 24:00', '9호선 삼성중앙역 5번 출구', '마르게리따 피자 까르보나라 스테이크 샐러드');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5408', '대치정육식당', '강남구 ', '서울 강남구 역삼로 450 (대치동)', '02-557-0883', NULL, '매일 11:30 ~ 22:30', '2호선 선릉역 1번 출구', '생등심 육회 특수부위 차돌박이');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5470', '파파호', '강남구 ', '서울 강남구 영동대로137길 3 (청담동)', '02-517-6885', NULL, '평일 11:00 ~ 14:30 / 17:00 ~ 21:00 주말 11:00 ~ 14:30 / 17:00 ~ 20:30', '7호선 청담역 13번 출구', '베트남 쌀국수 반세오 베트남식 돈등심구이 태국식 치킨 복음밥');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6789', '길손', '강남구 ', '서울특별시 강남구 논현로175길 40 (신사동)', '02-546-1247', NULL, '매일 18:00 ~ 01:00', '3호선 압구정역 4번 출구', '닭날개꼬치 모둠꼬치');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6855', '첨벙아구찜', '강남구 ', '서울특별시 강남구 강남대로150길 12 (논현동)', '02-543-8873', NULL, '11:00 ~ 15:00 / 16:00 ~ 04:00', '3호선 신사역 2번 출구', '꽃게탕꽃게범벅 낙지찜 아귀찜 간장게장 홍어찜');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('7115', '진풍정 강남점', '강남구 ', '서울특별시 강남구 테헤란로52길 15 선릉이스타빌 B02호 (역삼동)', '02-538-7735', NULL, '매일 11:30 ~ 15:00 / 17:00 ~ 22:00', '2호선 선릉역 4번 출구', '진풍정B 진풍정 진찬코스');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('7874', '라미띠에', '강남구 ', '서울 강남구 도산대로67길 30 (청담동) 2층', '02-546-9621', 'https://lamitie.modoo.at/', '매일 12:00 ~ 15:00 / 18:00 ~ 22:30', '분당선 압구정로데오역 3번 출구', '점심코스 저녁코스');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('7965', '손칼국수감자수제비', '강남구 ', '서울 강남구 언주로150길 9', '02-542-6808', NULL, '평일 10:00~20:00   주말 공휴일 10:00~17:00', '7호선 학동역 10번 출구', '손칼국숙 수제비 콩국수');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('8147', '강남원주추어탕', '강남구 ', '서울 강남구 강남대로110길 6', '02-557-8647', NULL, '평일 09:30~23:00 주말 09:30~21:30', '9호선 신논현역 5번 출구', '전복 추어탕 갈아서 추어탕 통마리 추어탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11651', '리스토란테 에오 ', '강남구 ', '서울 강남구 도산대로75길 15 (청담동)', '02-3445-1926', 'https://ristoranteeo.modoo.at/', '월~토 12:00 ~ 15:00 / 18:00 ~ 23:00', '분당선 압구정로데오역 3번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11723', '등대 ', '강남구 ', '서울 강남구 영동대로 342 (대치동 덕유빌딩)', '02-562-0505', NULL, '매일 11:30~22:00', '2호선 삼성역 2번 출구', '복지리 복샤부샤부 참복샤부샤부 복찜');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11734', '뜨락 ', '강남구 ', '서울 강남구 영동대로142길 13-3 (청담동)', '02-543-2987', 'https://www.instagram.com/tteurak_jk/', '평일 11:30~23:00 토 11:30~23:00 (last oder 21:50) 일 11:30~22:00  (last oder 20:50)', '7호선 청담역 14번 출구', '안심 등심 안창살 살치살');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12154', '코레아노스키친 본점', '강남구 ', '서울특별시 강남구 선릉로157길 25 (신사동) 지하1층', '02-547-4427', 'http://coreanoskitchen.com/', '일~수 12:00~22:30 / 목~토 12:00~23:00', '분당선 압구정로데오역 5번 출구', '치킨 타코 치킨 퀘사디아 스테이크 부리토');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14323', '동경전통육개장', '강남구 ', '서울 강남구 테헤란로7길 22 (역삼동 과학기술회관)', '02-566-9779', NULL, '평일 09:00 ~ 15:00 / 17:00 ~ 21:00 주말 09:30 ~ 15:00', '2호선 강남역 12번 출구', '전통육개장 갈비육개장 사골갈비탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('15406', '랩오(LAB O)', '강남구 ', '서울 강남구 도산대로 310 (논현동 916빌딩) 1층', '080-023-5700', NULL, '평일 10:30~20:30 주말공휴일 09:00~20:30', '지하철 3호선 압구정역 3번출구 도보 16분 또는 분당선 압구정로데오역 5번출구 도보 14분.', '오렌지 포레스트 마마스 팬브라우니오리지널 브라우니');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('26072', '두루', '강남구 ', '서울 강남구 선릉로148길 28 (청담동)', '02-3443-8834', NULL, '매일 11:00~21:00', '분당선 압구정로데오역 4번 출구 도보 15분', '낙지볶음 주먹밥');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('29977', '케르반 코엑스점', '강남구 ', '서울 강남구 봉은사로 524 (삼성동 코엑스인터콘티넨탈서울) B1 H105', '02-556-4767', NULL, '평일 11:00 - 15:00 / 16:30 - 22:00 주말 11:00 - 22:00', '2호선 삼성역 5 6번 출구 9호선 봉은사역 7번 출구', '믹스 쉬시 케밥 양고기 쉬시 케밥 닭고기 쉬시 케밥');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('42261', '[백년가게] 나주곰탕우정집', '강남구 ', '서울 강남구 강남대로94길 57 (역삼동 역삼동빌딩) 1층', '02-501-6611', NULL, '11:00 ~ 23:00 (16:00 ~ 17:00 breaktime)', '2호선 역삼역 4번 출구', '나주곰탕 삼겹살');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('1543', '평양면옥(논현점) ', '강남구 ', '서울 강남구 논현로150길 6', '02-549-5378', NULL, '매일 11:00 ~ 21:30', '7호선 학동역 8번 출구', '제육 편육 어복쟁반 냉면');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2418', '보나세라', '강남구 ', '서울 강남구 도산대로45길 18-2', '02-543-6668', 'http://www.buonasera.co.kr/ko/main/main.asp', '수~금 12:00 ~ 15:00 / 18:00 ~ 22:30 주말 11:15 ~ 15:00 / 17:30 ~ 22:00', '3호선 압구정역 3번 출구 수인분당선 압구정로데오역 5번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2492', '[백년가게] 삼원가든', '강남구 ', '서울특별시 강남구 언주로 835 (신사동)', '02-548-3030', 'http://www.samwongarden.com/', '월~토 11:30 ~ 22:00 / 일 11:30 ~ 21:00 * Break time 15:00 ~ 17:00', '3호선 압구정역 2번 출구', '불고기 Bulgogi 勁肉/ 燒肉  양념갈비 Grilled seasoned beef ribs 調味排骨/ 味付けカルビ  생등심 Grilled fresh beef sirloin 新鮮里脊/ 生ロス');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2557', '로얄컵케익', '강남구 ', '서울 강남구 선릉로157길 27-3 (錦奉빌딩) 103호', '02-543-8918', 'http://www.royalcupcake.co.kr/', '11:00 ~ 19:00', '분당선 압구정로데오 56번 출구', '케이크');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2995', '삼호짱뚱이', '강남구 ', '서울 강남구 도산대로34길 11', '02-547-1416', 'http://삼호짱뚱이.kr/', '매일 11:00 ~ 22:00', '7호선 학동역 10번 출구', '민도정식 남도정식 병어조림');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3603', '레트로오븐', '강남구 ', '서울 강남구 봉은사로55길 25', '02-544-9045', NULL, '화~토 13:00~19:00 (제품 소진 시 조기마감)', '7호선 선정릉역 2번 출구', '베이커리');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3784', '노들강', '강남구 ', '서울 강남구 강남대로114길 21', '02-517-6044', 'http://www.노들강.com', '11:30 ~ 22:00', '9호선 신논현역 3번 출구', '민어탕 홍어탕 홍어삼합');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4832', '구스테이크528', '강남구 ', '서울 강남구 압구정로 108 (신사동 덕산빌딩)', '02-511-0917', NULL, '매일 12:00 ~ 15:00 / 17:00 ~ 22:00', '3호선 신사역 6번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4869', '만두집', '강남구 ', '서울 강남구 압구정로 338 (신사동)', '02-544-3710', 'https://mandoojip.modoo.at/', '매일 12:00 ~ 21:30', '3호선 압구정역 2번 출구 분당선 압구정로데오역 6번 출구', '만둣국 만두전골 콩비지 빈대떡');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4979', '목로', '강남구 ', '서울 강남구 압구정로28길 18 (신사동)', '02-548-7500', NULL, '11:00 - 21:30', '3호선 압구정역 4번 출구', '버섯만두전골 찐만두 목로탕 만두국 목로전');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5563', '케익하우스윈 (윈제과점)', '강남구 ', '서울 강남구 삼성로 719 (청담동 경덕빌딩)', '02-546-1585', NULL, '08:00 ~ 22:00', '7호선 청담역 8번 출구', '베이커리');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5597', '비스트로드욘트빌', '강남구 ', '서울 강남구 선릉로158길 13-7 (청담동) 이안빌딩 1층', '02-541-1550', NULL, '점심 11:30 ~ 15:00 (L.O. 14:00) 저녁 18:00 ~ 22:00 (L.O. 20:30)', '3호선 압구정역 3번 출구 분당선 압구정로데오역 34번 출구', '런치 클래식 디너 트래디션');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5736', '신사면옥', '강남구 ', '서울 강남구 도산대로46길 11 (논현동 논현오피스텔)', '02-518-7228', 'http://www.shinsamyeonok.co.kr/', '매일 11:00 ~ 22:00', '3호선 압구정역 3번 출구', '한우암소생등심 한우암소생등심불고기 한우갈비탕 참숯불돼지갈비 회냉면');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6042', '무등산', '강남구 ', '서울 강남구 선릉로146길 3 (청담동 승봉빌딩)', '02-518-4001', 'http://www.moodeungsan.com', '10:00 - 22:00', '7호선 강남구청역 3-1번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6470', '무돌', '강남구 ', '서울 강남구 선릉로 748 (청담동 현대아파트)', '02-515-3088', NULL, '10:30 ~ 22:00', '7호선 강남구청역 4번 출구', '생고등어구이 갈낙찜 홍어삼합');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11850', '헬로우', '강남구 ', '서울 강남구 논현로151길 55 (호경빌딩)', '02-541-4427', 'https://www.instagram.com/winebar_hello/', '월~목 18:00 ~ 02:00 금 18:00 ~ 03:00 토 17:00 ~ 03:00 일 17:00 ~ 02:00', '3호선 신사역 8번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13138', '파크루안 역삼점', '강남구 ', '서울특별시 강남구 논현로 430 (역삼동) 아세아빌딩 지하 1층', '02-562-5565', 'http://www.parkruan.com/', '매일 11:30 ~ 22:00  (평일 Break time 15:00 ~ 17:30)', '2호선 역삼역 1번 출구', '웰빙삼선콩자장면 왕갈비짬뽕 찹쌀탕수육 잡채밥');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14213', '아야진생태찌개', '강남구 ', '서울특별시 강남구 삼성로108길 8 (삼성동)', '02-555-2680', NULL, '평일 : 11:00~22:00 주말 : 11:00~21:30', '9호선 삼성중앙 5번 출구 도보 3분소요', '생태찌개 내장추가 콩나물북어찜');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14445', '양촌리 화로숯불구이', '강남구 ', '서울 강남구 남부순환로 2720', '02-2058-1245', NULL, ' ', '3호선 매봉역 4번 출구', '양촌리 돼지갈지 양촌리 삼겹살 옛날식 김치지개 양푼비빔밥');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('15190', '빌리엔젤 (강남역점) ', '강남구 ', '서울 강남구 테헤란로1길 48 (강남ELS빌딩) 1층', '070-5051-8135', 'http://www.billyangel.co.kr/', '매일 10:00 - 23:00', '신분당선 강남역 11번 출구    2호선 강남역 11번 출구    9호선 신논현역 5번 출구', '밀크크레이프 레드벨벳케이크 당근케이크');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('15856', '영지네포장마차', '강남구 ', '서울 강남구 도산대로89길 24', '070-8154-4861', NULL, '18:00~03:00', '7호선 청담역 13번 출구에서 1km 이내', '백복이 된장 꽃게탕 능이버섯 꼬꼬탕 우리집 닭볶음탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('25621', '스시 카이신', '강남구 ', '서울 강남구 도산대로100길 12 (청담동 우리빌딩 2층)', '+82-2-515-9855', 'https://www.facebook.com/SushiKaisin', '매일 18:00~ 22:00 (예약 상황에 따라 오픈과 마감 시간이 상이)', '7호선 청담역 11번 출구', '오마카세');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('42251', '[백년가게] 초롱이고모부대찌개', '강동구 ', '서울 강동구 상암로11길 4 (암사동)  1층', '02-442-3546', NULL, '11:00 ~ 21:30', '8호선 암사역 1번 출구', '부대전골 부대찌개 햄찜');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('23338', '양철북 강동구청점', '강동구 ', '서울 강동구 성내로 62 (성내동 정인빌딩)', '02-478-1192', NULL, '월~토 11:30 - 22:30', '8호선 강동구청역 2번 출구 500m이내', '특모듬한판 한우대창 특양구이');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('30237', '남한강 매운탕', '강동구 ', '서울 강동구 양재대로 1594 (명일동)', '02-481-7779', 'http://www.xn--939at0gxwj4knpkmusg.kr/', '매일 11:00 ~ 21:30', '5호선 굽은다리역 3번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('7059', '고모네원조콩탕황태탕', '강동구 ', '서울특별시 강동구 풍성로57길 13 (성내동)', '02-485-4675', NULL, '매일 11:00 ~ 14:30 / 17:00 ~ 21:00', '5호선(마천방면) 둔촌동역 4번 출구', '콩국물 콩탕 청국장 포두부쌈');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('42374', '[백년가게] 삼천포식당', '강북구 ', '서울 강북구 한천로 1052', '02-998-3447', NULL, '매일 12:00 ~ 23:00', '4호선 수유역 8번 출구', '삼겹살 목살 등');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('42376', '[백년가게] 섬진강민물장어', '강북구 ', '서울 강북구 한천로 1151 (수유동)', '02-993-9545', NULL, '11:30 ~ 22:00', '우이신설선 4.19민주묘지역 1번 출구', '민물장어 장어솥밥 장어탕 등');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('7215', '왕가', '강북구 ', '서울특별시 강북구 삼양로 681 (우이동)', '02-908-9277', NULL, '11:30 ~ 22:00', '4호선 수유역 5번 출구', '소고기 구이');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3152', '봉래헌(메이필드호텔) ', '강서구 ', '서울 강서구 방화대로 94 (메이필드호텔)', '02-2660-9020', 'http://www.mayfield.co.kr', '매일 12:00 ~ 21:30(break time 15:00 ~ 18:00)', '5 9호선 김포공항역 국내선 방면 8번 출구 Gate 7번 정류장- 호텔 무료 셔틀버스 환승', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('42264', '[백년가게] 꾸이꾸이 돼지촌 쭈꾸미', '강서구 ', '서울 강서구 초원로 77 (방화동)', '02-2662-3450', 'https://www.instagram.com/gguigguijjuggumi', '11:30 ~ 23:00', NULL, '부추쭈꾸미 삼겹살');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3081', '낙원(메이필드호텔)', '강서구 ', '서울 강서구 방화대로 94 (외발산동 메이필드호텔 낙원가든)', '02-2660-9010', 'http://www.mayfield.co.kr/kor/subPage.asp?subCode=RESTAURANTS&subStep=1', '평일 12:00 ~ 15:00 / 18:00 ~ 21:30 주말 12:00 ~ 21:30', '5호선 김포공항역 국내선 터미널 8번게이트 7번 승강장 셔틀버스 이용', '한우꽃등심 한우특선대갈비 한우특선양념대갈비');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('7149', '두레미담(서울대점)', '관악구 ', '서울특별시 관악구 관악로 1  (신림동)', '02-880-9358', NULL, '11:00 ~ 14:00 / 17:00 ~ 19:00', '2호선 낙성대 4번 출구 02번 마을버스 서울대정문 2호선 서울대입구 3번 출구 학교셔틀버스', '한식당');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6101', '미가할매', '관악구 ', '서울 관악구 신림로 374', '02-888-6940', 'https://migahalmejib.modoo.at/', '11:30 - 22:00', '2호선 신림역 7번 출구', '정다운코스 할매정식 미가정식 점심특선 불고기전골');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('29046', '신림동 순대타운', '관악구 ', '서울 관악구 신림로59길 14 (신림동 민속순대타운)', NULL, NULL, NULL, '2호선 신림역 3·4번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('15409', '마우스래빗', '광진구 ', '서울 광진구 능동로11길 10', '02-462-4015', 'http://www.instagram.com/mouserabbit_official', '매일 12:00 ~ 23:00', '지하철 2 7호선 건대입구역 3번출구 도보 6분', '아메리카노 레몬모히또 딸기빙수 초코빙수');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('39734', '광진구 인덱스숍', '광진구 ', '서울 광진구 아차산로 200 (자양동) 커먼그라운드 3층', '02-2122-1259', 'https://www.instagram.com/indexshop.kr/', '11:00 ~ 22:00', '27호선 건대입구역 6번 출구에서 203m', '아인슈페너 6000원 인덱스 블렌드 5000원');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('40935', '디도 재즈 라운지', '광진구 ', '서울 광진구 자양로18길 56 (구의동 거송빌딩)', '070-8621-7869', 'https://www.instagram.com/dido_jazz_lounge/', '화수목금일 19:00 ~ 24:00 / 토 15:00 ~ 24:00', '2호선 구의역 2번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('42257', '[백년가게] 민정식당', '광진구 ', '서울 광진구 아차산로42길 41-4 (자양동)', '02-452-3574', NULL, '11:00 ~ 22:00', '2호선 구의역 4번 출구', '모듬수육 수제돈까스');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('7073', '광장동가온', '광진구 ', '서울특별시 광진구 아차산로78길 75 현대골든텔 106호 (광장동)', '02-3436-7100', NULL, '11:30 ~ 22:30', '5호선 광나루역 2번 출구', '국수');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('7092', '부림정 숯불갈비', '광진구 ', '서울특별시 광진구 뚝섬로 476-7 (자양동)', '02-463-5455', 'http://blog.kbmyshop.com/부림정숯불갈비', '10:00 - 22:00', '7호선 뚝섬유원지 4번출구  2호선 건대입구 6번출구', '돼지갈비');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('42703', '술마켓 군자 본점', '광진구 ', '서울 광진구 천호대로 515 (중곡동)', '070-4639-1775', 'https://www.soolmarket.com/', '12:00 ~ 24:00', '5호선 군자역 1번 출구', '막걸리 약주 청주 증류주 등 다양한 전통주 완비');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('42254', '[백년가게] 장군갈비', '광진구 ', '서울 광진구 용마산로 11 (중곡동 장군갈비)', '02-447-3479', NULL, '11:00 ~ 22:00', '5호선 아차산역 1번 출구', '한우생갈비 한우양념갈비 꽃등심한우불고기 갈비탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('27217', '카페 아르무아', '광진구 ', '서울 광진구 동일로22길 117-27 (화양동)', '02-463-9981', 'http://www.instagram.com/cafe_armoire', '매일 12:00 - 23:00', '27호선 건대입구 역 2 3번 출구에서 도보 5분', '24h 밀크티 생긴 것도 치즈케이크');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6631', '송림가 ', '구로구 ', '서울 구로구 경인로 398 (송림가든)', '02-2066-6000', 'http://www.songlimga.com', '매일 11:30~15:00 / 17:00~21:30', '1호선 개봉역 2번 출구', '수라한정식 숯불구이양념갈비 한우꽃등심 돼지갈비');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('42265', '[백년가게] 동흥관', '금천구 ', '서울 금천구 시흥대로63길 20 (시흥동 동흥관)', '02-803-3759', 'http://donghung.co.kr', '11:00 ~ 21:30', NULL, '짜장면 짬뽕 탕수육 각종 중식');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('42266', '[백년가게] 프랑세즈과자점', '금천구 ', '서울 금천구 남부순환로 1392 (독산동)', '02-854-1213', NULL, '매일 07:00 ~ 24:00', NULL, '육쪽마늘빵 호두파이 크림치즈모카빵 양파빵');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14434', '닭진미', '남대문', '서울 중구 남대문시장길 22-20 (남창동)', '02-753-9063', NULL, '07:00 ~ 21:00', '4호선 회현 5번 출구', '닭곰탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14439', '부원집', '남대문', '서울 중구 남대문시장4길 41-6 (남창동)', '02-753-7728', NULL, '평일 11:00 ~ 20:00 토요일 11:00 ~ 19:00', '4호선 회현역 5번 출구', '냉면');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2499', '강강술래(상계점)', '노원구 ', '서울 노원구 동일로 1628 (상계동 상계동강강술래)', '02-935-9233', 'http://www.sullai.com', '11:00 ~ 22:30', '7호선 수락산 3번출구 마들역 방향 200m', '한우모둠구이 한돈양념구이');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2597', '[백년가게] 참누렁소', '노원구 ', '서울 노원구 공릉로63길 13 (유토피아빌딩)', '02-979-6400', NULL, '매일 11:00 ~ 22:00', '7호선 하계역 3번 출구', '돼지갈비 생갈비 살치살 육회비빔밥정식');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('42373', '[백년가게] 엘리제과자점', '노원구 ', '서울 노원구 동일로 1538 (상계동 12단지 종합상가) 12단지 종합상가', '02-936-2733', NULL, '06:30 ~ 24:00', '7호선 마들역 1번 출구', '단호박 브레드 크림치즈소보루 등');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2619', '도봉산박대감', '도봉구 ', '서울 도봉구 도봉로 919 (도봉동)', '02-955-8668', NULL, '매일 11:00 ~ 22:00', '1호선 7호선 도봉산역 1번 출구', '돼지왕갈비 돼지갈비무한리필 소왕갈비');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('42375', '[백년가게] 함스브로트 과자점', '도봉구 ', '서울 도봉구 도봉로 483 (쌍문동)', '02-996-4488', NULL, '07:00 ~ 22:00', '4호선 쌍문역 4번 출구', '고구마카스테라 치즈케이크 고구마식빵 등');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('8389', '하누소', '도봉구 ', '서울 도봉구 노해로 327', '02-900-9800', 'http://www.hanuso.com', '매일 11:00~22:00', '4호선 창동역 2번출구 도봉등기소 방향으로 250m', '왕갈비탕 한우왕양념갈비 한우꽃등심 ');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2668', '착한전복 ', '도봉구 ', '서울 도봉구 노해로65길 7-20 2층', '02-903-4455', NULL, '매일 11:30~21:30', '1호선 4호선 창동역 2번 출구', '갈비탕 전복삼계탕 전복죽 궁중갈비찜');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6882', '대문', '도봉구 ', '서울 도봉구 시루봉로 139-6', '02-956-0843', NULL, '매일 12:00~15:00 / 17:00~21:30', '4호선 쌍문역 2번출구 마을버스 7번승차 종점에서 하차(약20분)', '간장게장정식 대문특정식 백합정식 ');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('7870', '설담재설렁탕', '도봉구 ', '서울 도봉구 도봉로 562 (창동)', '02-998-0202', 'http://www.suldamjae.com/ ', '매일 08:30~22:00 (주문마감 21:30)', '4호선 창동역 2번 출구 4호선 쌍문역 1번 출구', '설렁탕 갈비탕 도가니탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('41756', '쌍문동커피', '도봉구 ', '서울 도봉구 도봉로116길 5 (창동)', NULL, 'https://blog.naver.com/rksek0924', '화~목 10:00 ~ 22:00 / 금 10:00 ~ 22:30 토 11:00 ~ 22:30 / 일 11:00 ~ 22:00', '4호선 쌍문역 1번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11689', '성천막국수', '동대문구', '서울 동대문구 답십리로48나길 2 (답십리동)', '02-2244-5529', NULL, '월 - 금 11:30 - 15:00 / 17:00 - 21:00  토 11:30 - 21:00', '5호선 답십리역 4번 출구', '물막국수 비빔막국수 제육 ');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('7134', '초우마을', '동대문구', '서울특별시 동대문구 회기로28길 8 (휘경동)', '02-957-2266', 'http://초우마을.kr/', '11:00 ~ 22:00', '중앙선 회기 1번 출구 도보 2분 1호선 회기 1번 출구 도보 2분', '소고기구이');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('26324', '대한곱창(장안점)', '동대문구', '서울 동대문구 천호대로85길 21 (장안동 동원빌딩)', '070-8285-6219', NULL, '매일 15:00 - 01:00', '5호선 장한평역 3번 출구 도보로 3분', '대한모듬곱창 볶음밥');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5598', '홍능갈비집', '동대문구', '서울 동대문구 제기로 85 (홍능갈비집)', '02-965-0420', ' http://www.hongneung.co.kr  ', '매일 11:30~21:30', '1호선 청량리역 2번 출구    6호선 고려대역 5번 출구', '한우생갈비 양념갈비 생갈비 불고기');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('20036', 'BHC 사당점', '동작구 ', '서울 동작구 동작대로7길 16 (사당동)', '02-582-2004', 'http://www.bhc.co.kr', '12:00 - 02:00', '4호선 사당역 10번 출구에서 300m', '맵스터 커리치킨 해바라기 프라이드치킨');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('38328', '시간을 들이다 ', '동작구 ', '서울 동작구 국사봉5길 4 (상도동)', '02-812-2158', NULL, '11:00 ~ 22:00', '7호선 신대방삼거리역 2번 출구에서 325m', '슈크림크로와상 4200원 앙버터페이스트리 4200원 초코크로와상 4200원');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('27458', '정애맛담', '동작구 ', '서울 동작구 동작대로29나길 10', '02-3482-9886', 'http://jeongdam.co.kr/', '방문 전 전화 또는 카카오톡 문의', '4·7호선 총신대입구(이수)역 14번 출구', '말랑인절미 앙버떡');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('30811', '우부래도', '동작구 ', '서울 동작구 상도로37길 3 (상도1동)', '070-7543-0599', 'https://smartstore.naver.com/oohbreado', '매일 10:30~21:00', '지하철 7호선 상도역5번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14794', '구스토타코', '마포구', '서울특별시 마포구 와우산로 41 (상수동)', '02-338-8226', 'http://gustotaco.com', '화~토 11:30 ~ 22:00 일 11:30 ~ 21:00', '6호선 상수역 1번 출구', '타코 퀘사디아 부리토');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14751', '막걸리싸롱', '마포구', '서울특별시 마포구 와우산로21길 12-6 (서교동) 1층', '02-324-1518', NULL, '15:00 ~ 02:00', '2호선 홍대입구역 9번 출구', '막걸리전문점 ');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11915', '불이아', '마포구', '서울특별시 마포구 동교로 182-6 (동교동)', '02-335-6689', NULL, '매일 11:00 ~ 23:00', '경의중앙선 공항철도 2호선 홍대입구역 1번 출구', '불이아정식 쇠고기정식 양고기정식 해물정식');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4240', '을밀대', '마포구 ', '서울 마포구 숭문길 24', '02-717-1922', NULL, '매일 11:00~22:00', '6호선 대흥역 2번 출구', '물냉면 회냉면 녹두전 수육');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('7162', '마포옥', '마포구 ', '서울특별시 마포구 토정로 312 (용강동)', '02-716-6661', NULL, '평일 07:00 ~ 21:00 주말 07:00 ~ 17:00', '5호선 마포역 1번 출구', '양지설렁탕 차돌탕 차돌수육');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11193', '클럽 NB', '마포구 ', '서울 마포구 와우산로 79', '02-2236-1605', NULL, NULL, '6호선 상수역 2번출구에서 500m 이내', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14344', '미로식당', '마포구 ', '서울 마포구 와우산로30길 80 (창전동) 1층', '02-326-3777', NULL, '화~토 18:00 ~ 24:00', '2호선 합정역 3번 출구', '오늘의 메뉴 해물파전 육회');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('38859', '카페 새싹', '마포구 ', '서울 마포구 성암로13길 66 (상암동)', '02-2135-9296', 'http://www.instagram.com/saessaaack_cafe', '08:00-19:00 (월-목) 08:00-17:00 (금) 11:00-17:00 (일)', '디지털미디어시티역 8번 출구에서 255m', '소불고기 샐러드 8900원 아메리카노 3000원 새싹라떼 4500원');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('39840', '카페 꼼마 합정점', '마포구 ', '서울 마포구 포은로 49 (합정동)', '070-4179-2205', 'https://www.instagram.com/cafecomma__official/', '10:00 ~ 22:00', '6호선 망원역 2번 출구에서 680m', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('40674', '그림카페', '마포구 ', '서울 마포구 성미산로 161-10 (연남동) 그림카페', NULL, 'http://www.instagram.com/greem_cafe', '12:00 ~ 21:00', '공항철도 홍대입구역 3번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('1739', '슬런치 팩토리', '마포구 ', '서울 마포구 와우산로3길 38 (상수동)', '02-6367-9870', 'https://www.instagram.com/slunch_factory/', '매일 11:00 ~ 23:00', '6호선 상수역 4번 출구', '버섯 두유 크림 리조또 버섯고르곤졸라 피자');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3849', '미카야', '마포구 ', '서울 마포구 동교로 145-1 (학산빌딩)', '02-3143-3579', NULL, '12:00 ~ 22:00', '2호선 홍대입구역 1번 출구', '레어치즈케이크 쇼콜라 타르트 카모마일 페퍼민트 다즐링');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4125', '스시겐', '마포구 ', '서울 마포구 양화로7길 6-12 (서교동 삼이빌딩)', '02-3144-7733', NULL, '월~토 11:30 ~ 15:00 / 17:00 ~ 22:00', '6 2호선 합정역 2번 출구', '정식코스 모듬초밥');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6149', '오자와', '마포구 ', '서울 마포구 양화로10길 15', '0507-1395-5554', NULL, '11:30 ~ 14:30 / 17:00 ~ 22:00', '2호선 합정역 5번 출구', '오야코동 가츠동 커픙동 연어동 탄탄면');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12152', '서강8경', '마포구 ', '서울특별시 마포구 토정로 128 (상수동) 프렌치룸레스토랑8층 홀 다이닝바9층', '02-334-1919', 'http://www.seogang8kyoung.co.kr/', '12:00 ~ 15:00 / 17:30 ~ 22:00', '6호선 상수역 3번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12291', '서강껍데기', '마포구 ', '서울특별시 마포구 월드컵로 36 (서교동)', '02-337-5541', NULL, '16:00 ~ 04:00', '지하철26호선 합정역 9번출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12855', '홍복', '마포구 ', '서울 마포구 동교로 274', '02-323-1698', NULL, '11:30 ~ 23:00', '경의중앙선 공항철도 2호선 홍대입구역 3번 출구', '왕만두 물만두 탕수육 가지완자');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('23672', '더 페이머스 버거', '마포구 ', '서울 마포구 잔다리로3안길 24 (서교동 LIME HOUSE) 1층', '02-336-5201', 'https://www.instagram.com/thefamousburger/', '매일 12:00 ~ 22:00', '26호선 합정역 3번 출구', '페이머스버거 로얄그린버거 얼티메이트버거');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('28054', '다락', '마포구 ', '서울 마포구 도화2길 8 (도화동 에어몰 빌딩)', '02-706-0519', NULL, '매일 9:30~22:00', '5호선 마포역 3번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('34998', '깃털', '마포구 ', '서울 마포구 동교로 212-2 (동교동) 2층', '070-4090-1162', 'https://www.instagram.com/gitteol_hongyang', '18:00 - 익일 5:00', '2호선 홍대입구역 3번 출구', '칵테일');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('37154', '테이블에이', '마포구 ', '서울 마포구 와우산로 146 (창전동 그레이스빌딩)', '02-324-5542', 'https://tableashop.modoo.at/', '매일 12:00 ~ 22:00', '홍대입구역 6번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4771', '명품잔치국수', '마포구 ', '서울 마포구 동교로 103', '02-336-2004', NULL, '월~토 10:00~21:30', '6호선 망원역 1번 출구', '잔치국수 비빔국수 왕만두 유부국수');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5268', '웃사브', '마포구 ', '서울 마포구 와우산로11길 10 (상수동) 12층', '02-334-9189', NULL, '12:00 ~ 22:00', '6호선 상수역 1번 출구', '타카탁 칠리치킨씨즐러 버터치킨커리');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13240', '라스텔라', '마포구 ', '서울특별시 마포구 마포대로 58 (도화동) 가든호텔', '02-710-7272', 'http://seoulgarden.co.kr/', '아침 07:00 - 09:30 점심 11:30 - 14:00 저녁 18:00 - 21:00', '5호선 마포 3번 출구', '뷔페');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('20585', '앤트러사이트 합정점', '마포구 ', '서울 마포구 토정로5길 10 (합정동)', '02-336-7850', 'http://www.anthracitecoffee.com/', '09:00 ~ 22:00', '6호선 상수역 4번 출구 556m', '에스프레소 4000원 카푸치노 5000원 아메리카노 5000원');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('28337', '전골목', '마포구 ', '서울 마포구 만리재로 19 (공덕동 공덕시장)', NULL, NULL, '점포별 상이', '5·6호선·경의중앙선·공항철도 공덕역 5번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('30807', '해밀 비건베이커리', '마포구 ', '서울 마포구 동교로19길 101 (성산동) 1층', '070-7655-0723', 'https://www.instagram.com/haemilbakery/', '평일 09:00 ~ 20:00 주말 09:00 ~ 19:00', '6호선 망원역 1번 출구', '맛있는 비건빵');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5640', '산띠', '마포구 ', '서울 마포구 와우산로27길 70', '02-6052-3989', 'http://www.shantifood.com', '매일 11:30~16:00  / 17:00~22:00', '2호선 경의중앙선 공항철도 홍대입구역 9번 출구', '탄두리치킨 치킨머라이카밥 치킨세쿠와');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11670', '외백', '마포구 ', '서울 마포구 도화2길 4', '02-712-0985', NULL, '월 - 토 11:00 - 22:00', '5호선 마포역 3번 출구', '탕수육 자장면 짬뽕 삼선간짜장');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12630', '진어참치', '마포구 ', '서울특별시 마포구 연남로3길 34 (연남동)', '02-332-7412', NULL, '매일 16:30 ~ 22:00', '2호선 경의중앙선 공항철도 홍대입구 2번 출구', '참치회');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13278', '마포나루', '마포구 ', '서울특별시 마포구 삼개로 11 (도화동)', '02-711-5959', NULL, '10:00 - 22:00 *Break time 14:30 - 16:30', '5호선 마포 3번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13653', '스노브', '마포구 ', '서울특별시 마포구 와우산로 59-1  (상수동)', '02-325-5770', 'http://www.snobblue.com', '12:00~21:00', '6호선 상수 1번 출구', '케이크');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13672', '당고집', '마포구 ', '서울특별시 마포구 어울마당로3길 5 (합정동)', '070-7573-3164', NULL, '화~일 12:00 ~ 21:00', '6호선 상수역 4번 출구', '벚꽃당고 간장당고 단팥당고 명란버터밥');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13766', '프리모바치오바치', '마포구 ', '서울 마포구 와우산로23길 44 (서교동)', '02-323-0098', 'https://www.instagram.com/primo_baciobaci/', '매일 11:00 ~ 23:00  (Last Order 22:00)', '2호선 경의중앙선 공항철도 홍대입구역 9번 출구', '빠네 파스타 고르곤졸라 피자 할라피뇨 폴로');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('19365', '갓잇 (God Eat)', '마포구 ', '서울 마포구 성미산로 161-13 (연남동 K&L) 1층', '070-7677-9451', 'https://www.instagram.com/_godeat/', '매일 11:00 ~ 22:00 (Break time 15:00 ~ 16:00)', '경의중앙선2호선공항철도 홍대입구 3번 출구', 'GOD 보울 브리또 타코');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('37781', '더브레드블루 신촌본점	', '마포구 ', '서울 마포구 신촌로12다길 3 (노고산동) 1층', '070-4128-0720', 'www.thebreadblue.com', '월 - 토 10:00 ~ 21:00 / 일 09:00 ~ 21:00 	 ※ 설 연휴 추석 연휴 휴관', '2호선 신촌역 8번출구', '베이커리 제품	');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4427', '진미식당', '마포구 ', '서울 마포구 마포대로 186-6 (선화의원)', '02-3211-4468', 'https://thejinmi.modoo.at/', '월~토 12:00~15:30 / 17:00~20:00', '5호선 애오개역 4번 출구', '게장정식 간장게장');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6207', '마츠에라멘', '마포구 ', '서울 마포구 동교로 126 (서교동 광남벨라스아파트)', '02-323-6877', NULL, '평일 11:30 ~ 15:00 / 17:00 ~ 21:00 일요일 17:00 ~ 21:00', '26 호선 합정 2번 출구', '마츠에라멘 시지미라멘 도쿠마츠라멘');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('7173', '[백년가게] 역전회관', '마포구 ', '서울특별시 마포구 토정로37길 47 (염리동)', '02-703-0019', 'http://www.yukjeon.com', '평일 11:30 - 21:30 주말 11:30 - 21:00', '5호선 마포 2번 출구 공덕역 1번 출구', '소고기구이');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('7269', '파쿠모리카레', '마포구 ', '서울 마포구 어울마당로 132-1 (서교동)', '02-3142-5553', NULL, '매일 10:00 ~ 22:00', '2호선 경의중앙선 공항철도 홍대입구역 8번 출구', '파쿠모리드라이카레 플레인카레 오므카레 비프카레 카레우동');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11091', '멘야산다이메  ', '마포구 ', '서울 마포구 홍익로5안길 24', '02-332-4129', 'https://all3324129.modoo.at/', '매일 11:30 ~ 23:00 (재료 소진 시 종료)', '2호선 경의중앙선 공항철도 홍대입구역 9번 출구', '츠케멘 마제소바 돈코츠라멘');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11940', '비하인드', '마포구 ', '서울특별시 마포구 어울마당로5길 18 (서교동)', '02-3141-7212', NULL, '11:00 ~ 23:00 일요일11:00 ~ 22:00', '6호선 상수 1번 출구  2호선 합정 3번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14624', '라룬비올렛', '마포구 ', '서울특별시 마포구 월드컵북로4길 13 (동교동)', NULL, 'http://blog.naver.com/l_l_violette', '12:00 ~ 15:30 / 17:30 ~ 24:00', '2호선 경의중앙선 공항철도 홍대입구역 1번 출구', '에스카르고 관자브릿지 수비드 꼬숑 라따뚜이');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('28053', '코끼리분식', '마포구 ', '서울 마포구 도화2길 3 (도화동)', '02-717-9061', NULL, '매일 9:30 - 21:00', '5호선 마포역 3번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('38484', '베이스이즈나이스 (base is nice)', '마포구 ', '서울 마포구 도화2길 20 (도화동)', NULL, 'https://www.instagram.com/baseisnice_seoul/', '11:00 ~ 15:00', NULL, '바삭 청무와 옥수수 밥 20000원 알배기배추복숭아주스 7500원 발효버터 우엉구이 밥 20000원 유기농케일애플망고주스 7500원 홍고추 퓨레의 구운 두부 밥 20000원');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('42369', '[백년가게] 르네상스베이커리', '마포구 ', '서울 마포구 큰우물로 39 (대흥동 르네상스 베이커리)', '02-716-2808', NULL, '8:30 ~ 21:30', '마포역 2번 출구', '빵과 과자 커피');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2713', '램랜드 ', '마포구 ', '서울 마포구 토정로 255', '02-704-0223', 'http://www.lambland.kr/', '매일 11:30 ~ 22:00', '5호선 마포역 1번 출구', '삼각갈비 수육 전골 용봉탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4671', '신성각 ', '마포구 ', '서울 마포구 임정로 55-1', '02-716-1210', NULL, '월~토 11:30 - 16:00 (재료 소진 시 마감)', '5호선 6호선 경의중앙선 공항철도 공덕역 6번 출구', '짜장면 간짜장 만두 탕수육');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6910', '장가네곱창구이', '마포구 ', '서울 마포구 토정로 290', '02-717-2425', NULL, '평일 16:30 - 22:00 (재료소진시 종료)', '5호선 마포역 1번 출구', '곱창 막창 염통 곱창전골');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('26319', '하하&김종국의 401 정육식당', '마포구 ', '서울 마포구 잔다리로 23 (서교동)', '02-325-0805', NULL, '16:00 - 02:00', '2호선 합정역 3번 출구에서 도보로 10분', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('28050', '경기떡집', '마포구 ', '서울 마포구 동교로9길 24 (망원동)', '02-333-8880', 'http://kricecake.com/main/index.php', '08:30 - 18:00', '6호선 망원역 2번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('28336', '족발골목', '마포구 ', '서울 마포구 만리재로 19 (공덕동 공덕시장)', NULL, NULL, '점포별 상이', '5·6호선·경의중앙선·공항철도 공덕역 5번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('40675', '콜린', '마포구 ', '서울 마포구 어울마당로 45 (서교동)', '02-3141-1119', 'https://www.instagram.com/colline_cafe/', '일~목 10:30 ~ 23:00 금~토 10:30 ~ 24:00', '6호선 상수역 1번출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('40937', '연남 5701', '마포구 ', '서울 마포구 동교로23길 64 (연남동) 지하', '02-333-8161', 'https://www.facebook.com/yeonnam5701', '수~일 18:30 ~ 23:00', '2호선 홍대입구역 1번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('1142', '에반스', '마포구 ', '서울 마포구 와우산로 63 (서교동)', '02-337-8361', 'http://www.clubevans.com/', '평일 19:30~24:00  주말 19:30~01:00', '6호선 상수역 1번 출구', '재즈바');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3863', '라망두스', '마포구 ', '서울 마포구 와우산로27길 26', '02-336-0314', NULL, '16:00~23:00 주말 14:00~23:00', '2호선 홍대입구 78번 출구', '디저트카페');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3866', '마차횟집', '마포구 ', '서울 마포구 토정로 155 (하중동)', '02-323-6735', NULL, '평일 12:00 ~ 13:30 / 16:00 ~ 22:30 주말 12:00 ~ 22:00', '6호선 광흥창역 6번 출구', '잡어모둠 오늘의 활어(1인) 정식');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14897', '성산왕갈비', '마포구 ', '서울특별시 마포구 월드컵북로 233  (성산동 성산시영아파트)', '02-306-2001', NULL, '12:00 ~ 21:00', '6호선 마포구청역 1번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('28363', '코키펍 홍대점', '마포구 ', '서울 마포구 와우산로21길 19-8 (서교동 태경빌딩) 1층 COCKYPUB', '02-322-7900', 'https://www.facebook.com/cockypubhongdae/', '월~목 17:00 - 익일 2:00 금~토 17:00 - 익일 5:00 일 11:00 - 익일 2:00', '2호선·경의중앙선·공항철도 홍대입구역 9번 출구 6호선 상수역 1·2번 출구', '수제버거 프라이 맥앤치즈 ');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('29720', '사하라', '마포구 ', '서울 마포구 만리재로 15 (공덕동 제일빌딩) 1층 2호', '02-719-8338', NULL, '매일 17:30~02:00', '경의중앙·공항철도·5·6호선 공덕역 5번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4536', '황톳길 ', '마포구 ', '서울 마포구 마포대로11길 15-7', '02-3272-9240', NULL, '월~토 11:30~22:00', '5호선 공덕역 3번 출구 도보 10분', '해물파전 산채비빔밥 불낙전골');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('7282', '가미우동', '마포구 ', '서울 마포구 홍익로2길 23 (서교동)', '02-322-3302', NULL, '화~일 11:30 ~ 15:00 / 17:00 ~ 20:30', '2호선 경의중앙선 공항철도 홍대입구 9번 출구', '붓가께 우동 새우튀김 가께우동 와카메우동');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('7464', '돈수백', '마포구 ', '서울특별시 마포구 홍익로6길 56 (동교동)', '02-324-3131', 'http://www.donsoobaek.com', '24시간 영업', '2호선 홍대입구역 8번 출구', '돼지국밥');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11019', '카페 자스', '마포구 ', '서울특별시 마포구 동교로27길 12  (동교동)', '02-6083-5477', 'https://www.instagram.com/jassisland_cafejass/', '평일 08:00 ~ 21:00 주말 10:00 ~ 21:00', '2호선 홍대입구역 2번출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13714', '이노시시', '마포구 ', '서울 마포구 성미산로 197', '070-4242-7307', 'https://poingapp.page.link/inosisi', '18:00 ~ 24:00', '2호선 홍대입구역 3번 출구', '초특급 오마카세 특선사시미 금태소금구이 이베리코 스테이크');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('27461', '시루케이크', '마포구 ', '서울 마포구 어울마당로1길 18 (합정동 합정주택)', '070-4177-7700', 'https://www.instagram.com/siroocake/?igshid=aywpoidg5w2n', '화~금 11:00 - 21:00 / 토 11:00 - 20:00', '6호선 상수역 4번 출구', '설기케이크 떡케이크 크림대추라떼');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('31005', '델리인디아', '마포구 ', '서울 마포구 독막로9길 8 (서교동) 2층', '02-2631-2109', 'http://www.instagram.com/delhi_india_seokyo', '매일 11:00 ~ 22:30', '6호선 상수역 1번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('38319', '리치몬드 과자점 성산본점', '마포구 ', '서울 마포구 월드컵북로 86 (성산동 리치몬드빌딩)', '02-325-0222', NULL, '08:00 ~ 22:00', '2호선 홍대입구역 1번 출구에서 1039m', '밤파이 3500원 밤식빵 9800원 치즈베리크라상 5400원 슈크림 3300원 쿠인아망 4400원');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('38323', '르쁘띠푸 홍대본점', '마포구 ', '서울 마포구 와우산로 62 (상수동) 2층', '02-322-2669', 'https://lepetitfour.modoo.at/', '월~토 11:30 ~22:00 일 12:30 ~ 22:00', '6호선 상수역 2번 출구에서 236m', '밀푀유 몽블랑 6400원 밀푀유 클래식 5500원 마카롤 6800원');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3052', '곰국시집', '무교로', '서울 중구 무교로 24 무교동파이낸스빌딩 뒤에 위치', '02-756-3249', NULL, '평일 11:00 ~ 14:00 / 17:00 ~ 21:30 주말 11:00 ~ 14:30 / 17:00 ~ 20:30', '1호선 시청역 4번 출구', '곰국시 전골국수');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5391', '청담복집', '강남구 ', '서울특별시 강남구 영동대로 725 (청담동)', '02-512-1888', NULL, '11:00 ~ 15:00 / 17:00 ~ 22:00', '7호선 청담역 13번 출구', '복지리 복매운탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6292', '흑돈가', '강남구 ', '서울특별시 강남구 봉은사로86길 14 (삼성동)', '02-2051-0008', NULL, '평일 11:30 ~ 15:00 / 17:00 ~ 22:00 주말 11:30 ~ 22:00', '2호선 삼성역 5번 출구', '흑돼지생구이 흑돼지양념구이 된장찌개');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('7141', '한우한마리', '강서구 ', '서울특별시 강서구 강서로5나길 65 (화곡동)', '02-2065-1616', NULL, '24시간 영업', '5호선 까치산 3번 출구', '소고기구이');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('7439', '불이아(강남점)', '강남구 ', '서울특별시 강남구 언주로 711 (논현동) 지하 1층', '02-517-6689', 'http://www.bulia.co.kr/', '매일 11:00 - 23:00', '7호선 학동 10번 출구', '불이아정식 소고기정식 양고기정식 해물정식');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14376', '안동뭉티기와 투뿔구이', '강남구 ', '서울특별시 강남구 학동로2길 35 (논현동)', '02-542-9085', NULL, '월~토 17:30 ~ 02:00', '7호선 논현역 2번 출구', '한우 육사시미 한우 미니파육회 한우 특등급 생등심');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14423', '스시타츠', '강남구 ', '서울특별시 강남구 도산대로28길 18 (논현동)', '02-514-3336', NULL, '매일 12:00 ~ 15:00 / 18:00 ~ 22:00', '7호선 학동역 7번 출구', '스시오마카세');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14708', '차이린', '강남구 ', '서울특별시 강남구 삼성로112길 10 (삼성동)', '02-543-2847', NULL, '평일 11:30~15:00 / 17:00~21:30  주말 11:30~21:30', '7호선 청담 6번 출구 9호선 삼성중앙 3번 출구 도보3분', '마파두부 꿔바로우 양장피 구수계');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2775', '강강술래(신림본동점)', '관악구 ', '서울특별시 관악구 남부순환로 1660 (신림동)', '02-886-9233', 'http://www.sullai.com', '11:00 ~ 22:00', '2호선 신림역 1번 출구', '한우 모둠구이 돼지 양념구이 술래정식');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2541', '태림산채정식', '도봉구 ', '서울특별시 도봉구 노해로60길 32 (쌍문동)', '02-998-5468', NULL, '11:00 ~ 15:00 / 17:00 ~ 21:00', '4호선 쌍문역 4번출구', '산채정식 더덕구이 태림특정식');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('7159', '상도갈비타운', '동작구 ', '서울특별시 동작구 매봉로 13  (상도1동)', '02-816-5492', NULL, '11:30 ~ 21:30', '7호선 상도 4번 출구', '소고기');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('10825', '마포진짜원조최대포', '마포구 ', '서울특별시 마포구 마포대로 112-4  (공덕동)', '02-719-9293', NULL, '11:00 ~ 23:00', '5호선 공덕역 5번 출구', '돼지갈비 소금구이 갈매기살 껍데기');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11053', '삼거리포차', '마포구 ', '서울특별시 마포구 와우산로 70  (서교동)', '02-3144-6748', NULL, '18:30 ~ 05:00', '6호선 상수역 2번출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13953', '신원복집', '마포구 ', '서울특별시 마포구 홍익로 29 (서교동)', '02-333-1977', NULL, '11:30 ~ 15:00 / 17:00 ~ 22:00', '2호선 홍대입구역 9번 출구', '복지리활복참복');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14199', '초마', '마포구 ', '서울특별시 마포구 와우산로 72  (서교동)', '070-7661-8963', NULL, '화~일 11:30 ~ 16:00 / 17:00 ~ 21:00', '6호선 상수 2번 출구', '짬뽕 유니짜장 하얀짬뽕 탕수육');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5341', '전주청국장집', '서초구 ', '서울특별시 서초구 나루터로 70 (잠원동)', '02-541-3579', NULL, '평일 10:00 ~ 22:00 주말 07:00 ~ 22:00', '3호선 신사역 4번 출구', '청국장 오징어볶음 된장찌개 제육볶음 간장게장');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('7307', '금강바베큐치킨', '서초구 ', '서울특별시 서초구 사평대로 349 (반포동)', '02-511-0976', NULL, '월~토 16:00 ~ 02:00 / 일 16:00 ~ 24:00', '9호선 신논현역 1번 출구', '치킨 ');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12104', '삼오쭈꾸미', '서대문구', '서울특별시 서대문구 통일로 107-19 (미근동)', '02-362-2120', NULL, '11:30 ~ 14:00 / 17:00 ~ 22:00', '5호선 서대문 7번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13700', '주', '서초구 ', '서울특별시 서초구 동광로19길 16 (방배동)', '02-3482-3374', NULL, '화~금 11:30 ~ 15:00 / 17:00 ~ 21:30 토~일 11:30 ~ 21:30', '7호선 내방역 6번 출구', '삼선짜장면 삼선짬뽕 전가복 팔보채');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11096', '국화정원', '성북구 ', '서울특별시 성북구 성북로 154 (성북동)', '02-741-0021', NULL, '12:00 ~ 15:00 / 17:00 ~ 21:30', '4호선 한성대입구 5번 출구', '한정식');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('7225', '갈비명가이상(길음신관)', '성북구 ', '서울특별시 성북구 정릉로 395 (하월곡동)', '02-919-8000', NULL, '11:00 ~ 22:00', '4호선 길음역 10번 출구', '돼지갈비');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2596', '하쯔호', '영등포구', '서울특별시 영등포구 여의동로 213 (여의도동) 지하1층', '02-780-1634', NULL, '월~토 11:30 ~ 14:30 / 18:00 ~ 21:30', '9호선 샛강역 3번 출구', '스시 오마카세');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6895', '워킹온더클라우드', '영등포구', '서울특별시 영등포구 63로 50 (여의도동) 59층', '02-789-5904', 'https://www.63restaurant.co.kr/introduction/introduction.r63?shop_idrest=31040', '평일 11:30 ~ 15:00 / 17:30 ~ 22:00 주말 11:00 ~ 15:30 / 17:30 ~ 21:30', '9호선 샛강역 3번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12735', '한강생태', '용산구 ', '서울특별시 용산구 백범로 400 (한강로1가)', '02-716-7452', NULL, '10:00 ~ 22:00', '4호선 삼각지역 8번 출구', '생태매운탕 마늘먹은목살');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13127', '문타로', '용산구 ', '서울특별시 용산구 이태원로 230-1 (한남동)', '02-796-7232', NULL, '평일 18:00 ~ 02:30 주말 18:00 ~ 04:30', '6호선 이태원역 2번 출구', '사시미 굴후라이 유린기 가리비완자구이');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13765', '한강치킨', '용산구 ', '서울특별시 용산구 이촌로75길 12 (이촌동)', '02-795-2668', NULL, '12:00 ~ 02:00', '4호선 이촌 3-1번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('10312', '용금옥', '종로구 ', '서울특별시 종로구 자하문로 41-2 (통인동)', '02-777-4749', 'http://www.yonggeumok.co.kr', '월~금 11:30 ~ 15:00 / 17:00 ~ 21:30 토요일 11:30 ~ 20:00', '3호선 경복궁역 2번 출구', '서울추어탕 미꾸라지부침 모둠전 추어튀김 탕평채 ');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('10780', '된장예술툇마루', '종로구 ', '서울특별시 종로구 인사동4길 5-26 (인사동)', '02-739-5683', NULL, '11:30 ~ 22:30', '1호선 종로3가역 6번 출구', '게장');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('10869', '미진', '종로구 ', '서울특별시 종로구 종로 19 (종로1가)', '02-730-6198', NULL, '10:30 ~ 21:00', '1호선 종각역 1번 출구', '메밀국수');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11158', '궁', '종로구 ', '서울특별시 종로구 인사동10길 11-3 (관훈동)', '02-733-9240', 'http://koongkorea.modoo.at/', '월~토 11:30 ~ 21:00 일요일 11:30 ~ 20:00', '3호선 안국역 6번 출구', '만두');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12318', '소문난집추어탕(소문난 해장국)', '종로구 ', '서울특별시 종로구 수표로 131 (낙원동)', '02-742-1633', NULL, '04:30 ~ 22:00', '1호선 종로3가 5번 출구', '우거지얼큰탕 2000');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12894', '청수정', '종로구 ', '서울특별시 종로구 삼청로 91  (삼청동)', '02-738-8288', NULL, '11:00 ~ 15:00 / 17:00 ~ 20:30', '3호선 안국역 1번 출구', '홍합밥정식 홍합비빔밥 홍합밥도시락 불고기덮밥 뽈데기탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14240', '흥진옥', '종로구 ', '서울특별시 종로구 종로5길 19-12  (청진동)', '02-732-2214', NULL, '평일 10:00 ~ 15:00 / 17:00 ~ 21:00 토요일 10:00 ~ 17:00', '1호선 종각역 1번 출구', '선지해장국');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14611', '순희네빈대떡', '종로구 ', '서울특별시 종로구 종로32길 5 (종로5가)', '02-2268-3344', 'http://빈대떡.com/', '09:00 - 21:00', '1호선 종로5가 8번 출구', '빈대떡');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14834', '콩지POT지', '종로구 ', '서울특별시 종로구 북촌로 21-15 (재동)', '02-745-2203', 'http://kongjipotji.fordining.kr/', '매일 11:30 ~ 22:00', '3호선 안국역 2번 출구', '시그니처 새우오일파스타 시그니처 최상급한우채끝살스테이크 호두까르보나라');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11542', '커피친구', '종로구 ', '서울특별시 종로구 삼봉로 81 (수송동)', '02-725-0179', NULL, '평일 10:00 ~ 21:30 토요일 12:00 ~ 17:30', '1호선 종각역 2번 출구', '커피전문점 스트레이트커피(5천원~6천원) 더치커피(7천원)');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6457', '철철복집', '중구 ', '서울특별시 중구 을지로3길 29 (다동)', '02-776-2418', NULL, '11:30 ~ 14:30 / 16:30 ~ 22:00', '2호선 을지로입구역 2번 출구', '복어요리 ');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13056', '희락', '중구 ', '서울특별시 중구 남대문시장길 22-6 (남창동)', '02-755-3449', NULL, '07:00 ~ 21:00', '4호선 회현역 6번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13064', '은호식당', '중구 ', '서울특별시 중구 남대문시장4길 28-4 (남창동)', '02-753-3263', 'http://xn--ok1b941aijd7tt.com/', '평일 06:00 ~ 21:00 주말 06:00 ~ 16:00', '4호선 회현역 5번 출구', '한식(해장국꼬리곸탕)');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13177', '평래옥', '중구 ', '서울특별시 중구 마른내로 21-1 (저동2가)', '02-2267-5892', NULL, '11:30 ~ 15:30 / 17:00 ~ 22:00', '2호선 을지로3가 11번 출구', '초계탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13377', '석산정', '중구 ', '서울특별시 중구 을지로 149-5 (산림동)', '02-2266-9494', NULL, '10:00 ~ 15:00 / 16:30 ~ 22:00', '2호선 을지로3가역 6번출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13571', '명동어머니집', '중구 ', '서울특별시 중구 명동8길 11-6 (명동2가)', '02-776-3896', NULL, '10:00 ~ 24:00', '4호선 명동역 8번 출구', '해물탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13657', '어반가든', '중구 ', '서울특별시 중구 정동길 12-15 (정동)', '02-777-2254', NULL, '월~금 11:30 ~ 22:30 토 10:30 ~ 22:00 / 일 10:30 ~ 21:00', '5호선 서대문역 5번출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6555', '백암왕순대', '서대문구', '서울 서대문구 증가로 13-6', '02-337-1547', NULL, '매일 09:30~21:30', '2호선 홍대입구역 3번 출구', '순대국 모둠수육 왕순대 얼큰이탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6661', '폴앤폴리나', '서대문구', '서울특별시 서대문구 연희로11길 56', '02-333-0185', NULL, '매일 11:00 ~ 18:00', '2호선 홍대입구역 9번 출구', '베이커리');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('1658', '영월', '서대문구', '서울 서대문구 연희로 81-21 (정암빌딩)', '02-323-4256', NULL, '매일 11:00 ~ 22:00', '2호선 홍대입구역 3번 출구', '수제비감자옹심이아귀탕 보쌈');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13163', '티앙팡오후의홍차', '서대문구', '서울 서대문구 이화여대길 34 (대현동 신흥빌딩) 2층', '02-364-4196', 'http://tianhua.dothome.co.kr/', '매일 12:00 ~ 23:00', '2호선 이대역 3번 출구', '아이스 차이 바닐라 차이 아이스 로열 밀크티');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13343', '삼호복집', '서대문구', '서울특별시 서대문구 연세로5다길 10 (창천동)', '02-337-9019', NULL, '10:30 ~ 22:00', '2호선 신촌약 1번 출구', '복매운탕 맑은뚝배기 복고니');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('446', '난향', '서대문구', '서울 서대문구 신촌로 67 (거촌빌딩)', '02-322-6900', 'http://www.nanhyang.co.kr/', '매일 11:30 ~ 21:30', '2호선 신촌역 1번출구 215m', '난 (런치코스) 자장면 전복삼선짬뽕 탕수육');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('1294', '호밀밭', '서대문구', '서울 서대문구 신촌역로 43', '02-392-5345', NULL, '매일 12:30~22:00', '2호선 신촌역 4번 출구', '밀크빙수 녹차빙수 과일빙수 딸기빙수');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14228', '하나', '서대문구', '서울특별시 서대문구 연세로7안길 46 (창천동)', '02-332-9682', NULL, '매일 17:00 ~ 23:00', '2호선 신촌역 3번 출구', '돼지오징어타마 야키소바 오코노미야키 오징어타마');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('19417', '모범떡볶이1976 신촌직영점', '서대문구', '서울 서대문구 연세로7길 46 (창천동 창서빌딩)', '02-565-1976', 'http://www.mobumtopokki.com/', '월~토 11:00~23:00  일 11:30~22:30  (준비시간: 매일 15:00~16:00)', '2호선 신촌역 1번 출구', '통오징어 떡볶이 차돌 떡볶이');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('28329', '독수리다방', '서대문구', '서울 서대문구 연세로 36 (창천동 독수리빌딩) 8층', '02-363-1222', NULL, '월~토 11:00~24:00 일요일 11:00~23:00', '2호선 신촌역 3번 출구', '블랙커피(HOT) 5800원 비엔나커피 7200원');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4372', '목란', '서대문구', '서울 서대문구 연희로15길 21', '02-732-1245', NULL, '화~일 11:30 ~ 15:00 / 17:00 ~ 21:20', '2호선 홍대입구 5번 출구', '동파육 칠리새우');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6407', '함평면옥', '서대문구', '서울 서대문구 성산로 527 (대신동 하늬솔빌딩)', '02-392-3516', NULL, '평일 11:00 ~ 21:00 토요일 11:00 ~ 15:00', '2호선 이대역 2번 출구', '만두전골 어복쟁반 갈비탕 냉면');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6429', '송아저씨빈대떡', '서대문구', '서울특별시 서대문구 연세로7안길 29 (창천동)', '02-338-4919', NULL, '16:00 ~ 02:30', '2호선 신촌역 1번 출구', '한식주점');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('7183', '수빈떡갈비', '서대문구', '서울특별시 서대문구 연희로25길 29 (연희동)', '02-307-9979', NULL, '11:30 ~ 22:00', '2호선 홍대입구 5번 출구', '한정식');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('10893', '고바우', '서대문구', '서울특별시 서대문구 명물1길 22 (창천동)', '02-393-2576', NULL, '16:00 ~ 23:00', '2호선 신촌역 3번 출구', '돼지소금구이 돼지갈비 한우 껍데기');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13847', '벨라프라하', '서대문구', '서울특별시 서대문구 이화여대길 77 (대현동)', '02-363-3559', NULL, '월~토 11:00 ~ 22:00', '2호선 이대역 2번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14054', '에그앤드스푼레이스', '서대문구', '서울특별시 서대문구 이화여대길 26 (대현동)', '02-312-5234', 'https://www.instagram.com/spoon_race/', '평일 11:00 ~ 16:00 / 17:00 ~ 21:00 주말 11:00 ~ 21:00', '2호선 이대역 3번 출구', '하이 토스트 디시 쉬림프 오일 파스타 포테이토 오믈렛');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('28350', '스타벅스 이대R점', '서대문구', '서울 서대문구 이화여대길 34 (대현동 신흥빌딩)', '1522-3232', 'http://www.istarbucks.co.kr/index.do', '월~토 8:00 - 19:00 일 9:00 - 19:00', '2호선 이대역 3번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3615', '라본느타르트', '서대문구', '서울특별시 서대문구 성산로 543 (대신동)', '02-393-1117', 'https://www.instagram.com/labonnetarte_official/', '평일 08:00 ~ 20:00 토요일 09:00 ~ 17:00', '2호선 이대역 2번 출구', '디저트카페');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4227', '연희동칼국수', '서대문구', '서울 서대문구 연희맛로 37', '02-333-3955', NULL, '화~일 11:00~21:00', '2호선 홍대입구역 3번 출구', '칼국수 수육');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11643', '형제갈비', '서대문구', '서울 서대문구 명물1길 2 (창천동)', '02-365-0001', NULL, '11:00 ~ 22:00', '2호선 신촌역 3번 출구', '소고기구이');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('28330', '훼드라', '서대문구', '서울 서대문구 연세로5길 32 (창천동)', '02-323-3201', NULL, '00:00~24:00 (전화 문의 후 방문)', '2호선 신촌역 1번 출구', '최루탄 해장라면 5000원 계란말이 10000원');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3530', '딸기골분식', '서대문구', '서울 서대문구 연대동문길 29 (대신동)', '02-363-5563', NULL, '07:00 ~ 21:30', '2호선 이대역 2번 출구', '육개장 불고기돌솥밥 돌솥제육덮밥 뚝배기부대찌개 순두부백반');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3658', '춘천집닭갈비막국수', '서대문구', '서울 서대문구 연세로5가길 1 (창천동)', '02-325-2361', NULL, '10:00 ~ 06:00(익일)', '2호선 신촌 12번 출구', '닭갈비');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13829', '신계치', '서대문구', '서울특별시 서대문구 명물길 47 (창천동)', '02-3147-1021', NULL, '11:00 ~ 22:00', '2호선 신촌역 3번 출구', '라면 ');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('28351', '피터팬1978', '서대문구', '서울 서대문구 증가로 10', '02-336-4775', 'http://peterpanbakery.com/', '매일 8:00~21:00', '3호선 독립문역 5번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('10611', '가미분식', '서대문구', '서울특별시 서대문구 이화여대8길 2 (대현동)', '02-364-3948', NULL, '10:00 ~ 21:00', '2호선 이대 34번 출구', '분식 일반메뉴	주먹밥(2개 3천6백원) 가츠오우동 비빔국수(각 4천5백원) 팥빙수 수박빙수 딸기빙수(각 5천원)');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12272', '풍요람', '서대문구', '서울특별시 서대문구 통일로 107-17 (미근동)', '02-362-4203', NULL, '11:30 ~ 14:30 / 17:00 ~ 22:00', '5호선 서대문 7번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12577', '완차이', '서대문구', '서울특별시 서대문구 명물길 50-7 (창천동)', '02-392-0302', NULL, '11:00 ~ 21:00', '경의중앙선 2호선 신촌역 3번 출구', '매운홍합 짜장면 짬뽕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('42093', '콘하스 연희점', '서대문구', '서울 서대문구 연희로27길 99 (연희동 양광찬란)', '02-325-0792', 'https://www.instagram.com/conhascoffee_co.ltd/', '10:00 ~ 22:30', '2호선 공항철도 경의중앙선 홍대입구역 5번출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('42372', '[백년가게] 평양옥', '서대문구', '서울 서대문구 통일로 107-23 (미근동)', '02-363-7058', 'www.instagram.com/pyeongyangok', '11:00 ~ 22:00 14:30 ~ 16:30 (브레이크타임)', '서대문역 7번 출구', '닭곰탕 해신탕 백숙');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12980', '장호왕곱창', '중구 ', '서울 중구 서소문로 83-1 (순화동)', '02-756-5070', NULL, '12:00~22:00', '5호선 서대문 56번 출구  1호선 시청 10번 출구', '곱창');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2862', '노랑저고리 (강남점)', '서초구', '서울특별시 서초구 서초대로73길 9 타임빌딩 5층 (서초동)', '02-534-5300', 'http://yellowjgr.fordining.kr/', '매일 11:30 ~ 21:30', '2호선 강남역 9번 출구', '보리굴비한상 새댁 회 코스');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('7169', '서석대', '서초구', '서울특별시 서초구 서초대로 346 동아빌라드 1층 (서초동)', '02-537-0077', 'http://www.seoseokdae.com', '평일 11:30 ~ 15:00 / 17:00 ~ 22:00 주말 11:30 ~ 22:00', '2 3호선 교대역 1번 출구', '한우꽃등심 한우육회 갈낙탕 서석대정식 ');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12913', '카나디안랍스터', '서초구', '서울특별시 서초구 남부순환로 2385 (서초동) 3층', '02-585-9624', NULL, '12:00 ~ 14:00 / 17:00 ~ 21:30', '3호선 남부터미널역 5번 출구', '랍스타 F세트 랍스타 A세트');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13665', '명동곰돌이', '서초구', '서울특별시 서초구 서초대로55길 11 (서초동)', '02-594-3989', NULL, '11:30 ~ 14:30 / 17:00 ~ 21:00', '2호선 교대역 4번 출구', '참국수 참모밀국수 치킨소스 국수전골');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6638', '서초갈비', '서초구 ', '서울 서초구 반포대로 12', '02-582-2988', 'http://blog.naver.com/baboatom17', '매일 11:30~22:00', '3호선 남부터미널역 5번 출구', '양념갈비 한우불고기 한우육회 한우갈비살');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6904', '버터핑거팬케익스(강남역점)', '서초구 ', '서울특별시 서초구 강남대로61길 13 (서초동)', '02-532-5740', NULL, '매일 08:30 ~ 22:00', '2호선신분당선 강남역 910번 출구', '아몬드피칸와플 버터핑거스페이보릿 와플러버스스페셜');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('7194', '참설농탕', '서초구 ', '서울특별시 서초구 효령로 424 (서초동)', '02-3471-2488', NULL, '24시간 영업', '3호선 양재역 2번 출구', '설렁탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('8280', '차이797', '서초구 ', '서울 서초구 동광로 78 방배빌딩 23층', '02-537-7972', 'http://www.chai797.co.kr', '평일 11:30 ~ 15:00 / 17:30 ~ 22:00 주말 12:00 ~ 16:00 / 17:00 ~ 22:00', '7호선 내방역 7번 출구', '24시간 숙성 탕수육 호두 꿀크림 중새우 무슈포크');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('8356', '버드나무집 우면산점', '서초구 ', '서울 서초구 남부순환로 2461 (서초동)', '02-597-5900', NULL, '매일 11:00 ~ 22:00', '3호선 남부터미널역 4번 출구 5분거리', '주물럭 본갈비 생등심 ');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13487', '한우만', '서초구 ', '서울특별시 서초구 효령로 216 (서초동)', '02-588-1727', NULL, '11:30 ~ 22:00', '2호선 방배역 1번 출구', '소고기구이');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13903', '브루스리', '서초구 ', '서울 서초구 양재천로 147-1 (양재동)', '02-576-8845', NULL, '매일 11:30 ~ 22:00', '3호선 양재역 8번 출구', '삼선 찐만두 우육면 돼지고기부추무침 완탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('29995', '케르반 파미에스테이션점', '서초구 ', '서울 서초구 사평대로 205 (반포동 CENTRALCITY) 파미에스테이션 2층 216호', '02-6282-4767', NULL, '매일 11:00 - 21:00', '379호선 고속터미널역 3 7번 출구', '치킨 케밥 닭고기 덮밥 치킨 케밥 박스 양고기 덮밥');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('36858', '느린마을 양조장 강남점', '서초구 ', '서울 서초구 서초대로73길 7 (서초동) 우승빌딩 지하 1층', '02-587-7720', 'https://www.slowbrewpub.com/', '월~토: 17:00 - 24:00 / 일: 16:00~23:00', '2호선 신분당선 강남역 9번 출구', '느린마을 막걸리 모듬전 느린마을 수육');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('42263', '[백년가게] 블랑제리(르팡)', '서초구 ', '서울 서초구 방배로 268 (방배동 방배삼호상가) 102호', '02-533-4600', 'http://instagram.com/lepain__', '07:30 ~ 22:30', '9호선 구반포역 3번 출구', '베이커리 공주밤빵 먹물식빵 완두만주');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3770', '와인나라', '서초구 ', '서울 서초구 서래로8길 1 (반포동)', '02-592-9035', 'http://www.winenara.com/', '월~금 10:00 ~ 21:00 토요일 11:00 ~ 19:00', '3 7 9호선 고속터미널역 5번 출구', '와인바');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14879', '줄라이', '서초구 ', '서울 서초구 동광로 164 (줄라이빌딩)', '02-534-9544', 'https://catchtable.co.kr/july', '평일 12:00~22:00 (Break time : 15:00~18:00)', '2호선 서초역 5번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('27453', '로야디', '서초구 ', '서울 서초구 반포대로21길 57 (서초동) 1층 로야디', '02-2055-0403', 'https://www.instagram.com/cafe_royad/', '수~일 11:00 - 19:00', '서초역 3번 출구', '떡마들렌 떡케이크 떡샌드위치');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('30002', '케르반 반포점', '서초구 ', '서울 서초구 신반포로 176 (반포동 센트럴시티) 신세계백화점 강남점 지하 1층', '02-797-2356', 'http://www.kervan.co.kr/KO/kervan-banpo-branch/', '매일 08:00 ~ 20:00', '3·7·9호선 고속터미널역 8번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('30242', '설눈', '서초구 ', '서울 서초구 서초대로46길 20-7 (서초동 영토빌딩)', '02-6959-9339', 'https://www.instagram.com/sulnoon1977/', '매일 11:00 ~ 15:00 / 17:00 ~ 21:00', '2호선 서초역 1번 출구', '고려 물냉면 평양온반 평양육개장 소고기 수육 왕만두');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('1505', '버드나무집', '서초구 ', '서울 서초구 효령로 434 (버드나무집)', '02-3473-4167', 'http://budnamujip.modoo.at/', '매일 11:00 ~ 22:00', '신분당선 3호선 양재역 2번 출구', '갈비정식 주물럭 양념갈지 생등심');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('1675', '애플하우스', '서초구 ', '서울 서초구 신반포로 50 (구반포상가)', '02-595-1629', NULL, '매일 10:00 ~ 21:30', '9호선 구반포역 3번 출구', '일반떡볶이 즉석떡볶이');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2528', '삼일정육식당', '서초구 ', '서울 서초구 언남11길 7-33 (양재빌딩)', '02-576-8592', NULL, '월~토 11:00~22:00', '신분당선 양재시민의 숲(매헌)역 2번 출구 도보 15분소요', '등심 차돌박이 삼겹살 목살');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2983', '신가예촌', '서초구 ', '서울 서초구 서운로 11 (서초동 서초대우디오빌)', '02-525-0986', NULL, '평일 11:00 ~ 14:30 / 17:00 ~ 22:00 주말 11:00 ~ 14:30 / 16:30 ~ 21:00', '3호선 양재역 1번 출구', '한정식');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4447', '강남교자', '서초구 ', '서울 서초구 강남대로69길 11 (서초동 삼미빌딩) 2층', '02-536-4133', 'http://gangnamgyoja.com/', '매일 10:30~22:00', '신논현역 6 7번출구 / 강남역 9 10번출구', '칼국수 교자만두 얼큰칼국수 완당떡국');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5574', '리샨', '서초구 ', '서울 서초구 서초대로74길 11 (서초동 삼성전자빌딩)', '02-587-6700', NULL, '평일 11:10 - 22:00  토 11:10 - 22:00', '신분당선 2호선 강남역 7번 출구', '중새우와사비크림소스 전복스테이크 깐풍기 해물누룽지탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2521', '상락원', '서초구 ', '서울 서초구 원터길 23 (원지동)', '02-555-5220', NULL, '매일 09:00 ~ 21:00', '신분당선 2번 출구', '청계밥상 시래기돌솥밥 돌솥밥 고등어 정식');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3537', '맘마키키', '서초구 ', '서울 서초구 서래로10길 9 (반포동 서래)', '02-537-7912', NULL, '매일 18:00 ~ 01:00', '739호선 고속터미널역 5번 출구', '치즈모둠 카프레제 펜네 파스타');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4073', '시실리', '서초구 ', '서울 서초구 서래로 26 (반포동)', '02-591-1929', NULL, '12:00 ~ 22:00', '7호선 고속터미널역 5번 출구', '커피전문점 ');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4171', '뚜르뒤뱅', '서초구 ', '서울 서초구 사평대로22길 55 (반포동 대선빌딩)', '02-6941-1846', NULL, '13:00 ~ 01:00', '7호선 고속터미널역 5번 출구', '와인바');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4355', '자인뭉티기', '서초구 ', '서울 서초구 강남대로37길 24-7 (호원빌딩)', '02-597-2158', NULL, '평일 11:30~15:00 / 17:00~22:30 주말 17:00~21:30', '신분당선 3호선 양재역 1번 출구', '육회 명품구이 뭉티기초밥');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4845', '앨리 (카페 엘리)', '서초구 ', '서울 서초구 서래로5길 30 (반포동) 지하 1층', '02-549-0116', NULL, '11:00 ~ 23:30', '7호선 고속터미널 5번 출구', '카페');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('10793', '라칼라스', '서초구 ', '서울특별시 서초구 반포대로 8 (서초동) 1층', '02-521-3325', NULL, '매일 11:00 ~ 21:00', '3호선 남부터미널역 5번 출구', '뽀모도로 알리오올리오 만조피자 채끝등심스테이크');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('10803', '램하우스', '서초구 ', '서울특별시 서초구 법원로2길 15 (서초동)', '02-3476-0678', 'http://www.lambhouse.co.kr/', '평일 10:00~22:00 토요일 10:00~21:00', '2호선 교대 1011번 출구 도보 5분', '양갈비 램꽃등심 전골');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11313', '봉산옥 ', '서초구 ', '서울 서초구 반포대로8길 5-6 (조강빌딩)', '02-525-2282', NULL, '평일 11:00~14:30 / 17:00~21:20 토 11:00~14:30 / 17:00~20:30', '3호선 남부터미널역 5번 출구', '봉산 만두국 김치말이국수 열무회국수 양푼열무비빔밥');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13836', '스퀘어가든', '서초구 ', '서울특별시 서초구 서래로5길 26 (반포동)', '070-8888-5959', 'https://www.instagram.com/squaregarden.coffee/', '평일 08:30 ~ 18:30 토요일 10:00 ~ 18:30  일요일 12:00 ~ 17:00', '3호선 고속터미널역 5번 출구', '카페');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14597', '부에노스아이레스', '서초구 ', '서울특별시 서초구 강남대로107길 21 (잠원동)', '02-3444-6634', 'http://www.buenosaires.co.kr/', '평일 18:00 ~ 22:30 토공휴일 18:00 ~ 22:00', '3호선 신사역 5번 출구', '부에노스아이레스SET 오벨리스코SET 등심스테이크');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('17695', '모던눌랑', '서초구 ', '서울 서초구 사평대로 205 (반포동 CENTRALCITY반포천 복개주차장)', '02-6282-5005', 'http://www.modernnulang.com/', '매일 11:30 ~ 22:00 (Last Order 21:00)', '3 7 9호선 고속터미널역 3번출구 도보 1분', '모던눌랑케이지 모던눌랑 상하이롤 플래터 크랩 타워 라이스');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('21838', '프로간장게장 본점', '서초구 ', '서울 서초구 강남대로97길 9 (잠원동 빌딩)', '02-543-4126', 'http://www.prosoycrab.co.kr/', '매일 10:00~05:00', '3호선 신사역 4번 출구 도보 1분', '간장게장 양념게장 게알비빔밥 아귀찜 꽃게탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('28498', '더리버 벨라쿠치나', '서초구 ', '서울 서초구 신반포로11길 39 (한강공원 구반포안내센터) The River', '02-595-7145', 'http://the-river.co.kr/', '매일 12:00 - 15:00 / 17:30 - 21:00', '49호선 동작역 1번 출구 9호선 구반포역 2번 출구', '벨라 코스 쿠치나 코스 더리버 코스 아보카도 새우 샐러드');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('29990', '할랄가이즈 강남점', '서초구 ', '서울 서초구 강남대로69길 8 (서초동)', '02-595-1800', NULL, '매일 11:00~22:00', '9호선 신논현역 6번 출구 2호선신분당선 강남역 10번 출구', '콤보 플래터 콤보 샌드위치');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3418', '진동둔횟집', '서초구 ', '서울특별시 서초구 강남대로91길 18 (잠원동)', '02-544-2179', NULL, '12:00 ~ 22:00', '7호선 논현역 6번 출구', '전어 멸치 세꼬시');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6678', '아티제 삼성타운점', '서초구 ', '서울 서초구 서초대로74길 11 (서초동 삼성전자빌딩)', '02-598-0017', 'https://www.cafeartisee.com/', '평일 07:00 ~ 22:30 주말 09:00 ~ 22:30', '2호선 강남 67번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('7175', '오선채', '서초구 ', '서울특별시 서초구 남부순환로 2634-8  (양재동) 단성빌딩', '02-578-9411', NULL, '매일 11:30~15:00 / 17:30~22:00', '3호선 양재 5번 출구', '오선채 한정식 오선채 돌솥밥 한정식 오선채 간장게장정식');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('7200', '의정부평양면옥', '서초구 ', '서울특별시 서초구 강남대로93길 28 (잠원동)', '02-547-6947', NULL, '11:00 ~ 21:00', '3호선 신사 4번 출구 7호선 논현 6번 출구', '냉면');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('8359', '팔팔민물장어', '서초구 ', '서울 서초구 사평대로 335 (금성빌딩)', '02-549-1112', 'http://팔팔민물장어.kr/', '매일 11:00~22:00', '9호선 신논현역 1번 출구', '팔팔장어 토종장어생장어 명품장어 강화갯벌장어');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('26643', '삼거리푸줏간 센트럴시티점', '서초구 ', '서울 서초구 사평대로 205 (반포동 CENTRALCITY반포천 복개주차장)', '02-6052-0103', 'https://www.instagram.com/3geori_butchers/', '평일 11:30 - 15:00 / 16:00 - 22:00 주말 11:30 - 22:00', '37호선 고속터미널 역 23번 출구에서 도보로 5분', '푸줏간 양념 돼지갈비 한우 된장말이 밥');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('42260', '[백년가게] 3대 삼계장인', '서초구 ', '서울 서초구 반포대로28길 56-3 (서초동 한라빌딩)  1층', '02-522-2270', 'https://www.instagram.com/cangweon9366', '10:30 ~ 21:40 (15:50~16:30 breaktime)', NULL, '삼계탕 닭볶음탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('1586', '나무그늘park ', '서초구 ', '서울 서초구 신반포로45길 9-26 (은정빌딩) 105호', '02-515-6733', 'http://www.foodstyling.co.kr/', '월~토 08:00 ~ 20:00', '3호선 신사역 8번 출구', '파크플레이트 핫치킨플레이트 그릴드치킨플레이트 로스트포크플레이트 바삭불고기플레이트 연어스테이크플레이트');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3697', '봉피양', '서초구 ', '서울 서초구 강남대로53길 11 (서초동삼성쉐르빌2)', '02-587-7018', 'http://www.ibjgalbi.com', '11:00 ~ 21:30', '2호선 강남 5번 출구', '갈비 냉면');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4224', '라싸브어', '서초구 ', '서울 서초구 서래로 24 (반포동 다솜빌딩) 5층', '02-591-6713', 'https://www.instagram.com/lasaveur_seoul/', '매일 11:30 ~ 15:00 / 17:30 ~ 22:30', '7호선 고속터미널역 5번 출구 9호선 신반포역 4번 출구', '달팽이 프렌치어니언스프 스테이크');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6921', '평가옥(양재점)', '서초구 ', '서울 서초구 논현로 69 (양재동 상호빌딩)', '02-3462-1577', NULL, '11:00 ~ 21:30', '3호선 양재역 6번 출구 신분당선 양재시민의 숲(매헌)역 2번 출구', '냉면');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6975', '원조쌈밥집', '서초구 ', '서울 서초구 강남대로8길 3 (양재동)', '02-548-7589', 'http://www.theborn.co.kr/', '11:00 ~ 22:00', '신분당선 양재시민의숲역 3번출구', '쌈밥');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('7278', '진도울돌목가는길', '서초구 ', '서울 서초구 서초대로40길 41 대호IR빌딩', '02-521-6032', 'https://wooldolmok.modoo.at/', '평일 11:30 ~ 15:00 / 17:00 ~ 22:00 주말 11:30 ~ 15:00 / 17:00 ~ 21:00', '2호선 서초역 2번 출구', '울정식 돌정식 목정식');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('10447', '강남따로국밥', '서초구 ', '서울 서초구 신반포로47길 118 (잠원동 근생빌딩) 2층', '02-543-2527', NULL, '매일 07:00~21:00', '3호선 신사역 4번 출구', '선지따로국밥 수육');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11416', '서초장어타운', '서초구 ', '서울 서초구 반포대로28길 77 (큰대문집)', '02-521-6934', NULL, '평일 11:30~15:00 / 16:30 ~22:00 주말공휴일 12:00~21:00 (상황에 따라 마감시간 변동)', '2호선 교대역 9번 출구', '장어 장어탕 잔치국수 메밀국수');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12204', '샘밭막국수', '서초구 ', '서울 서초구 서초대로58길 34 (G5센트럴프라자)', '02-585-1702', NULL, '11:30 ~ 21:00', '2호선 교대역 4번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('30983', '깔리 사당점', '서초구 ', '서울 서초구 방배천로 21 (방배동) 동화빌딩 4층', '02-581-2855', NULL, '11:30 ~ 22:00', '2 4호선 사당역 11번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('30985', '남미플랜트랩', '서초구 ', '서울 서초구 방배천로4안길 55 (방배동 일신빌딩) 2층', '02-522-1276', 'http://instagram.com/nammiplantlab', '평일 12:00 ~ 16:00 / 17:30 ~ 21:00  주말 12:00 ~ 21:00', '4호선 사당역 11번 출구', '치즈야채 피자 16000원 파스타베르데 14000원 비건먹물파스타 14000원 로제크림 페투치네 14000원');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('41656', '3대삼계장인', '서초구 ', '서울 서초구 반포대로28길 56-3 (서초동 한라빌딩) 1층', '02-522-2270', 'https://www.instagram.com/cangweon9366', '매일 10:30 ~ 21:40 (15:50 ~ 16:30 브레이크 타임)', '2 3호선 교대역 14번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3628', '무샤', '서초구 ', '서울 서초구 서래로 33 (반포동)', '02-537-8886', 'http://mushakorea.co.kr/', '일~목 16:00 ~ 02:00 금~토 16:00 ~ 03:00', '7호선 고속터미널역 5번 출구 9호선 신반포역 4번 출구', '무샤모듬사시미 닭목살숯불구이와미나리 닭연골튀김');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4143', '소호정', '서초구 ', '서울 서초구 논현로 27 (소호정)', '02-579-7282', 'http://www.sohojung.com/default/', '매일 11:00~21:30', '3호선 양재역 8번 출구    신분당선 양재시민의 숲(매헌)역 23번 출구 도보 15분소요', '안동국시 국밥 수육 전');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4984', '영동설렁탕', '서초구 ', '서울 서초구 강남대로101안길 24 (잠원동)', '02-543-4716', NULL, '15:00 ~ 17:00 브레이크타임', '3호선 신사역 5번 출구', '설렁탕 수육');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5278', '올바른음식소문(잠원점)', '서초구 ', '서울 서초구 신반포로33길 27', '02-558-2378', 'http://www.somoonfood.com', '11:00 - 22:00', '3호선 잠원 2번 출구 7호선 반포 5번 출구', '한우 생등심 양념왕갈비 주물럭세트');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6197', '커피지인', '서초구 ', '서울 서초구 강남대로51길 10 (서초동 강남효성해링턴타워)', '070-8831-8035', NULL, '매일 10:00 ~ 22:00', '신분당선2호선 강남 5번 출구', '더치커피 더치라떼 홍차');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6300', '만발', '서초구 ', '서울 서초구 서초대로29길 32 (방배동)', '02-535-7456', NULL, '11:30 ~ 22:00 * Break time 15:00 ~ 17:00', '7호선 내방역 8번 출구', '서리꽃등심 한우불고기전골 국밥');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6514', '백년옥', '서초구 ', '서울 서초구 남부순환로 2407', '02-523-2860', 'https://baengnyeonok.modoo.at/', '매일 10:00~21:00', '3호선 남부터미널역 5번 출구', '자연식 순두부 뚝배기 순두부 팥동지죽 팥칼국수');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6547', '스시효(서초점)', '서초구 ', '서울 서초구 서초대로74길 23 (서초타운트라팰리스)', '02-521-3593', NULL, '월~토 11:30 ~ 14:30 / 18:00 ~ 22:00', '2호선 신분당선 강남역 56번 출구', '스시코스 스페셜코스');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12167', '앵콜칼국수', '서초구 ', '서울 서초구 효령로52길 69 (서초동)', '02-525-8418', 'https://mokchonjib.modoo.at/', '11:00 ~ 21:00', '3호선 남부터미널역 5번 출구', '옛날칼국수 팥칼국수 매생이굴전 냉콩국수 팥죽');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13263', '참나무숯불에닭이만나는순간(희래)', '서초구 ', '서울특별시 서초구 동산로6길 37 (양재동)', '02-572-6616', NULL, '15:00 ~ 24:00', '신분당선 양재시민의 숲역(매헌) 3번 출구', '닭갈비');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13616', '장수원', '서초구 ', '서울특별시 서초구 방배중앙로 153 (방배동)', '02-532-2225', NULL, '00:00 ~ 24:00 일요일 00:00 ~ 22:00', '4 7호선 이수역 1번 출구', '소불고기');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14188', '영동족발', '서초구 ', '서울특별시 서초구 남부순환로 2628-18 (양재동)', '02-575-0250', 'http://www.youngdongjokbal.com/', '평일 11:30 - 23:30 토요일 11:30 - 23:00 일요일 11:30 - 21:00', '3호선 양재역 5번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14283', '삼학도', '서초구 ', '서울 서초구 효령로57길 4 (서초동)', '02-584-4700', 'https://cafe.naver.com/shdfood', '11:10 ~ 15:00 / 17:00 ~ 22:00', '3호선 남부터미널역 2번 출구', '삼학정식 민어회 홍어삼합 민어탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('20257', '카몽(KAMONG)', '서초구 ', '서울 서초구 서초대로42길 17 (서초동)', '02-522-5949', 'http://instagram.com/kamong.coffee', '평일 8:30 - 22:00 토 11:00 - 22:00 / 일 11:00 - 22:30 공휴일 12:00 - 22:00', '2호선 서초역 1번 출구에서 120m', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('29545', '파미에스테이션', '서초구 ', '서울 서초구 신반포로 176 (센트럴시티) 파미에스테이션', '02-6282-0114', 'http://www.shinsegaecentralcity.com/famille', '10:00~22:00 일부 매장 브레이크타임(15:00~17:00) 일부 매장 운영시간 상이 - 개별 페이지 참조', '3·7·9호선 고속터미널역 2번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3729', '부일갈비', '서초구 ', '서울 서초구 서초중앙로2길 42', '02-3482-3112', 'http://www.booilgalbi.com', '매일 11:00~22:00', '3호선 남부터미널역 4-1번 출구 도보 10분', '소금구이 생등심 갈비살 양념갈비 생갈비');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6348', '남도미락', '서초구 ', '서울 서초구 사평대로 150 (반포동 궁전상가)', '02-595-6060', NULL, '11:00 ~ 22:00', '7호선 고속터미널역 5번 출구', '육낙무침 홍어전');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6380', '반포집', '서초구 ', '서울 서초구 신반포로3길 7 (반포동 반포상가)', '02-593-6684', NULL, '월~토 11:30~21:00', '9호선 구반포역 1번 출구', '수제비 오징어덮밥');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6462', '반포치킨', '서초구 ', '서울 서초구 고무래로8길 5 (반포동)', '02-599-2825', NULL, '매일 12:00 - 22:00', NULL, NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6541', '아카사카', '서초구 ', '서울특별시 서초구 서초대로74길 23 서초타운트라팰리스 지하 1층', '02-585-1145', 'http://www.akasaka.co.kr/', '월~토 11:30 ~ 14:30 / 17:30 ~ 22:00', '2호선 신분당선 강남 56번 출구', '스페셜사시미 활복코스요리 아카사카 풀코스 요리');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11736', '라그릴리아 ', '서초구 ', '서울 서초구 남부순환로 2620 (강남피타워)', '02-553-9192', 'https://lagrilliabox.com/', '매일 11:00 ~ 22:00', '3호선 신분당선 양재역 5번 출구', '파스타&스테이크 세트 홈다이닝 세트 무화가 프로슈토 플랫피자');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12597', '연타발 ', '서초구 ', '서울 서초구 서초대로77길 3 (아라타워)', '02-536-9281', 'http://www.yeontabal.co.kr/', '평일 11:30~23:00 주말 11:30~22:00', '2호선 강남역 9번 출구', '한우대창구이 특양구이 한우살치살 한우꽃등심');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14498', '따뚱', '서초구 ', '서울특별시 서초구 강남대로107길 6 (잠원동) 본관 2층', '02-6710-1888', 'http://www.riversidehotel.co.kr/Restaurant/restaurant02.php?nav=2_1_2', '매일 11:30~15:00 / 17:30~22:00', '3호선 신사 5번 출구', '상견례코스 베이징덕 런치코스');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('19331', '텍사스 데 브라질', '서초구 ', '서울 서초구 사평대로 205 (CENTRALCITY반포천 복개주차장)', '02-6282-5000', 'http://www.sunatfood.com/kr/brand/tb/story', '평일 11:30 ~ 16:00 / 17:30 ~ 22:30 주말 11:30 ~ 16:00 / 17:00 ~ 22:30', '3호선 고속터미널역 3번 출구  7호선 고속터미널역 3번 출구', '슈하스코 (브라질리언스테이크)  피카냐 스테이크 플랭크 스테이크 ');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6066', '조개창고 (달마수산)', '성동구 ', '서울 성동구 왕십리로 331 (공영빌딩)', NULL, 'http://blog.naver.com/sissco1', '평일 17:00~24:00  주말 12:00~24:00', '2호선 상왕십리역 4번 출구    2호선 왕십리역 11번 출구', '조개구이 조개찜');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('34993', '카페 봇봇봇', '성동구 ', '서울 성동구 아차산로9길 8 (성수동2가)', '02-499-9219', 'http://www.instagram.com/_bot.bot.bot/', '월~목 12:00 - 22:00 금~일 11:00 - 22:00', '2호선 성수역 2번 출구', '로맨슈페너 BOT 6500원 라임 모히또 BOT 9000원 아이스 아메리카노 5000원 트리플 치즈 크로와상 10000원');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('20052', '카나비 스트리트 (CARNABY ST)', '성동구 ', '서울 성동구 왕십리로 136 (성수동1가)', '02-461-5333', 'https://designcarnaby.imweb.me/home', '14:00 - 02:00', '2호선 뚝섬역 1번 출구에서 도보 300m', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('36985', '한강주조', '성동구 ', '서울 성동구 둘레15길 12 (성수동2가 서울학원) 23층 한강주조', '0507-1387-1125', 'https://hangangbrewery.com/', NULL, NULL, NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('38870', '차만다 서울숲점', '성동구 ', '서울 성동구 서울숲2길 28-12 (성수동1가)', '02-6448-0812', 'https://www.instagram.com/_charmandre_/?hl=ko', '평일 11:30 ~ 21:30 (Break Time 15:00 ~ 17:30) 주말 12:00 ~ 21:30 (Break Time 15:00 ~ 17:00) 공휴일 12:00 ~ 21:30 (Break Time 15:00 ~ 17:00)', '수인분당선 서울숲역 5번 출구에서 507m', '셰퍼드파이 21000원 피쉬&칩스 29000원 치킨 티카 마살라 20000원');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('41661', '라프레플루트', '성동구 ', '서울 성동구 서울숲2길 8-8 (성수동1가) 2층', '0507-1383-7415', 'http://instagram.com/rafre_fruit', '13:00 ~ 19:00', '2호선 뚝섬역 8번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11983', '빠드두(pas de deux)', '성동구 ', '서울 성동구 성수이로10길 14 (성수동2가 에이스 하이엔드 성수타워) 508호', '02-545-3963', 'http://www.chocolatier.co.kr', '10:00 ~ 20:00', '2호선 성수역 3번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('20587', '카페 어니언', '성동구 ', '서울 성동구 아차산로9길 8 (성수동2가)', '070-4353-3238', 'https://www.instagram.com/cafe.onion/', '월~금 08:00~22:00  토일 10:00~22:00', '2호선 성수역 2번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('41873', '피에스비 커피바', '성동구 ', '서울 성동구 서울숲길 53 (성수동1가)', '070-8277-5119', 'https://www.instagram.com/psb_coffeebar/', '평일 10:00 ~ 18:00 토요일 공휴일 12:00 ~ 20:00', '2호선 뚝섬역 8번출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('25470', '하루앤원데이(Haru&Oneday)', '성동구 ', '서울 성동구 아차산로 92 (성수동2가 광명타워)', '02-499-9303', 'http://www.instagram.com/cafe_haruoneday', '평일 08:00 - 22:30 주말 09:00 - 22:30', '2호선 성수역 4번 출구 앞 광명타워 1층', '플랫화이트 비엔나커피 얼그레이밀크티 얼그레이크림라떼 당근케이크 로투스크럼블케이크');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('27466', '맛을 그리다', '성동구 ', '서울 성동구 성수이로 87 (성수동2가 성문빌딩) 1층', '02-3443-5542', 'http://www.yebindang.com/', '평일 8:00 - 22:00 토요일 10:00 - 22:00 일요일 10:00 - 21:00', '2호선 성수역 3번 출구', '두텁떡 꽃송편 설기흑임자조각케이크');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('29552', '성수동 갈비골목', '성동구 ', '서울 성동구 서울숲4길 27 (성수동1가)', NULL, NULL, NULL, '2호선 뚝섬역 8번 출구 분당선 서울숲역 4번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('34997', '모퉁이와플 & 모퉁이피크닉', '성동구 ', '서울 성동구 상원1길 33 (성수동1가) 1층&2층', '070-4414-1682', 'http://naver.me/5844kwDQ', '월~금 10:30 - 20:00 토~일 12:00 - 20:00', '2호선 뚝섬역 6번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('37888', '카페 할아버지공장', '성동구 ', '서울 성동구 성수이로7가길 9 (성수동2가) 카페 할아버지공장', '070-7642-1113', 'http://gffactory.co.kr', '11:00 - 22:00', '2호선 성수역 3번 출구 도보 6분', '커피 5000원~8000원 에이드/칵테일 8000원~13000원 파스타 19000원~23000원');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4651', '손가네곰국수 ', '성북구 ', '서울 성북구 성북로15길 8', '02-743-8937', NULL, '매일 11:00~21:30', '한성대입구 5번 출구로 나와 성북초교 방향으로 한참 가다가 대로변 왼쪽', '곰국수 소불고기 설렁탕 갈비탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13629', '일상', '성북구 ', '서울 성북구 성북로 106 (성북동)', '02-762-3114', NULL, '화~일 12:00 ~ 18:30', '4호선 한성대입구역 5번 출구', '오늘의커피 카페모카 카레라떼');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('979', '수연산방', '성북구 ', '서울 성북구 성북로26길 8 (성북동 상허 이태준 가옥)', '02-764-1736', NULL, '수 - 금 11:30 - 18:00 주말 11:30 - 22:00', '4호선 한성대입구역 5번 출구', '대추차 엄마손 순 단호박범벅 생강차 단호박빙수');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6357', '성북동누룽지백숙', '성북구 ', '서울 성북구 성북로31길 9', '02-764-0707', 'https://sbdnrgbs.modoo.at/', '11:30 ~ 21:00 (Last Oder 20:00)', '4호선 한성대입구역 6번 출구', '성북동누룽지백숙 들깨메밀수제비 메밀전');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6655', '다원', '성북구 ', '서울특별시 성북구 대사관로 3 (성북동)', '02-765-3000', 'http://www.samcheonggak.or.kr/', '11:00 ~ 21:30', '4호선 한성대입구역 5번 출구', '전통차');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('42377', '[백년가게] 청수장', '성북구 ', '서울 성북구 정릉로 237-2 (정릉동)', '02-913-6176', NULL, '11:00 ~ 21:00', '우이신설선 정릉역 2번 출구', '돼지갈비 냉면 등');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6242', '비양도', '성북구 ', '서울 성북구 성북로 158 (성북동)', '02-741-1588', NULL, '매일 11:30 ~ 15:00 / 17:00 ~ 22:00', '4호선 한성대입구역 5번 출구', '런치코스 주말정식 식사메뉴');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11133', '마전터', '성북구 ', '서울 성북구 혜화로 82-2', '02-765-7575', NULL, '10:00 ~ 21:00', '4호선 한성대입구역 5번 출구', '쇠고기국밥 간장꽃게장과 알밥');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5627', '갈비명가 이상(본점)', '성북구 ', '서울 성북구 정릉로 364', '02-925-8700', 'http://esang.co.kr/', '매일 11:00~23:00', '4호선 길음역 2번 출구', '이상갈비 왕본구이 전복갈비탕 갈비탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11062', '국시집', '성북구 ', '서울특별시 성북구 창경궁로43길 9 (성북동1가)', '02-762-1924', NULL, '11:30 ~ 14:30 / 17:00 ~ 21:00', '4호선 한성대입구역 5번 출구', '국시 전 문어');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12684', '우리밀국시', '성북구 ', '서울 성북구 혜화로 84-2 (성북동)', '02-745-3764', NULL, '09:00 ~ 22:00', '4호선 한성대입구 5번 출구', '칼국수');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13494', '섭지코지', '성북구 ', '서울특별시 성북구 성북로 118-5 (성북동)', '02-3673-5600', NULL, '매일 11:00 ~ 22:00', '4호선 한성대입구역 5번 출구', '회코스 옥돔구이 복탕 민어탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('7294', '삼청각', '성북구 ', '서울 성북구 대사관로 3 (성북동 삼청각)', '02-765-3700', 'http://www.samcheonggak.or.kr', 'PM 12:00 ~ PM 10:00', '5호선 광화문 교보문고 앞 셔틀버스 이용(10:00~21:00)', '삼청수라(15만4천원) 유하수라(5만2천8백원)');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6389', '성북동돼지갈비집', '성북구 ', '서울 성북구 성북로 115 (성북동)', '02-764-2420', NULL, '08:00 ~ 21:00', '4호선 한성대입구역 5번 출구', '돼지갈비 불고기백반');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2463', '쌍다리돼지불백', '성북구 ', '서울 성북구 성북로23길 4', '02-743-0325', NULL, '매일 09:00 - 21:00', '4호선 한성대입구역 5번 출구', '돼지불백 낚지볶음 돼지불백비빔');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4175', '송림원', '성북구 ', '서울 성북구 동소문로 25-2', '02-764-7970', NULL, '매일 12:00 ~ 21:00', '4호선 한성대입구역 7번 출구', '짜장면 간짜장 쟁반짜장 짬뽕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6614', '나폴레옹', '성북구 ', '서울특별시 성북구 성북로 7 (성북동1가)', '02-742-7421', NULL, '09:00 ~ 21:00', '4호선 한성대입구역 5번 출구', '베이커리');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('36291', '아지트 안암', '성북구 ', '서울 성북구 고려대로24길 48 (안암동5가) 지하1층 아지트 안암', NULL, NULL, '오전11:00 ~ 익일 새벽4:00', '6호선 안암역 34번 출구', '미트파이');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3174', '한방삼계탕', '송파구 ', '서울 송파구 백제고분로 460 (은성빌딩)', '02-415-9909', NULL, NULL, '8호선 석촌역 3번 출구 도보 10분', '미용삼계탕 건강삼계탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3562', '도림', '송파구 ', '서울 송파구 올림픽로 240 (잠실동 롯데월드) 32층', '02-411-7800', 'http://www.lottehotel.com/world/ko/dining/resturants.asp?type=RE&seq=10&diningCd=TL', '11:30 ~ 14:30 / 18:00 ~ 22:00', '2호선 잠실역 4번 출구', '한우자장면 통전복 해물 짬뽕 홀 메뉴 룸 메뉴');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5953', '남도마루', '송파구 ', '서울특별시 송파구 위례성대로22길 14 (오금동)', '02-402-2833', NULL, '매일 11:30 ~ 22:00 *Break time 15:00 ~ 17:00', '5호선 방이역 1번 출구', '자연산모둠회 한우육회 홍어탕 남도마루특정식');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6334', '홈수끼 (Home Sukki)', '송파구 ', '서울 송파구 위례성대로 134 (방이동 한스빌딩)', '02-417-4124', NULL, '매일 11:30 ~ 22:00', '5호선 방이역 4번 출구', '샤브샤브 코스');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2505', '놀부유황오리진흙구이(잠실점)', '송파구 ', '서울 송파구 오금로 131 (방이동)', '02-425-5292', 'https://www.nolboo.co.kr/pages/brandintro/uhwang.asp', '평일 10:00 ~ 16:00 / 17:00 ~ 22:00 주말 10:00 ~ 22:00', '9호선 송파나루역 2번 출구', '유황오리 진흙구이 유황오리 통오리훈제바베큐');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2629', '충무로 부산복집 (오금역)', '송파구 ', '서울 송파구 중대로27길 9-1 (오금동 동호빌딩)', '02-404-3227', NULL, '매일 11:30 ~ 22:00', '5호선 오금역 1번출구', '생복매운탕/지리 생복불고기 참복샤브샤브');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3563', '알라딘의양고기', '송파구 ', '서울 송파구 백제고분로7길 42-16 (정빌딩)', '02-421-5534', NULL, '평일 16:00 ~ 24:00 토요일 14:00 ~ 24:00 일요일 14:00 ~ 22:00', '2호선 잠실새내역 3번 출구', '양꼬치살 양갈비살 불고기 양갈비');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3582', '어양', '송파구 ', '서울 송파구 위례성대로 14 (한미타워) 지하 1층', '02-422-8886', 'http://www.a-yang.co.kr', '매일 12:00~15:00 / 18:00~22:00', '8호선 몽촌토성역 2번 출구 9호선 한성백제역1번 출구', '청증우럭찜/탕수우럭 해물 누룽지 새우 마요네즈소스 삼선자장면 두반주스 런치코스 디너코스');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6262', '전주설렁탕', '송파구 ', '서울 송파구 백제고분로7길 33 (잠실동)', '02-412-7495', NULL, NULL, '2호선 잠실새내역 4번 출구', '도가니탕 설렁탕 곰탕 우족수육');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6599', '갯마을낙지', '송파구 ', '서울 송파구 백제고분로9길 6 (잠실동 sms)', '02-412-7895', NULL, '11:00 ~ 24:00', '2호선 종합운동장 1번 출구', '산낙지 철판 ');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('7023', '늘푸른목장', '송파구 ', '서울특별시 송파구 백제고분로9길 34 (잠실동)', '02-3431-4520', NULL, '12:00 ~ 01:00', '2호선 잠실새내역 4번 출구', '한우 된장찌개 갈비살 육회 생갈비 ');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('28700', 'SKY31 푸드에비뉴', '송파구 ', '서울 송파구 올림픽로 300 (신천동 롯데월드타워앤드롯데월드몰) 31층', '02-3213-9992', NULL, '평일 18:00 - 22:00 주말 11:30 - 21:00', '2·8호선 잠실역', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('30970', '강가 잠실점 ', '송파구 ', '서울 송파구 올림픽로 300 (신천동 롯데월드타워앤드롯데월드몰) 6층', '02-3213-4635', 'http://www.ganga.co.kr', '10:30 ~ 22:00', '2호선 잠실역 1번 출구 8호선 잠실역 1번 출구', '탄두리 치킨 26500원 비프 도 피아자 24500원 강가 셰프 코스 49000원 치킨 마크니 23500원');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('42250', '[백년가게] 군산오징어', '송파구 ', '서울 송파구 삼학사로 101 (삼전동 군산오징어) 4층', '02-418-2350', 'http://www.sanmoori.co.kr/', '매일 11:30 ~ 22:30', '9호선 석촌고분역 1호선', '오징어불고기 오삼불고기 오낙불고기 낙곱새(낙지+곱창+새우) 갑오징어불고기');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3805', '오발탄', '송파구 ', '서울 송파구 위례성대로 206', '02-404-0090', 'http://www.hiobaltan.com', '11:30 ~ 22:00', '5호선 방이 1번 출구', '대창구이 특양구이 양밥');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('7030', '플로리안', '송파구 ', '서울특별시 송파구 송파대로28길 27 (가락동)', '02-403-1248', NULL, '10:00 - 23:00', '8호선 가락시장 34번 출구 3호선', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('20040', '두레한식당', '송파구 ', '서울 송파구 올림픽로 300 (신천동) 롯데백화점 에비뉴엘 월드파타워점 6F', '02-3213-2638', NULL, '10:30 - 22:00', '8호선 잠실역 2번출구 도보 3분', '떡갈비 산채비빔밥 반상');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('41783', '니커버커베이글', '송파구 ', '서울 송파구 석촌호수로 268 (송파동 경남레이크파크) 1층 109~112호', '02-2203-8808', 'https://www.instagram.com/knickerbockerbagel_official/?hl=ko', '평일 09:00 ~ 17:00 주말 09:00 ~ 19:00', '8 9호선 석촌역 1번출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('1668', '해주냉면 ', '송파구 ', '서울 송파구 백제고분로7길 8-16 (잠실동 남광빌딩)', '02-424-7192', 'https://www.instagram.com/haejoo1983/', '월~토 11:30 ~ 21:00', '29호선 종합운동장역 9번 출구', '비빔냉면 물냉면');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3545', '미우미우', '송파구 ', '서울 송파구 양재대로71길 2-27 (방이동 인택파크랜드) 2층', '02-425-2581', 'http://blog.naver.com/suck102', '평일 11:30 ~ 15:00 / 17:00 ~ 22:00 주말 11:30 ~ 22:00', '5호선 방이역 4번 출구', '한우1++채끝등심 한우1++안심 한우1++살치살');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2396', '벽제갈비', '송파구 ', '서울 송파구 양재대로71길 1-4 (벽제갈비)', '02-415-5522', 'https://www.bjgalbi.com/index', '매일 11:30 ~ 22:00', '5호선(마천방면) 방이역 4번 출구', '설화 꽃등심 특상한우 생등심 봉피양냉면');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5079', '봉피양(방이점)', '송파구 ', '서울 송파구 양재대로71길 1-4 (벽제갈비)', '02-415-5527', NULL, '매일 11:30~22:00', '5호선(마천방면) 방이역 4번 출구', '돼지本갈비 한우떡갈비 평양냉면');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12340', '송파나루', '송파구 ', '서울 송파구 석촌호수로 234 (석촌동 라품미빌딩)', '02-413-7080', NULL, '매일 10:00 ~ 22:00', '8호선 석촌역 8번 출구', '곰치해장국 갈치조림 병어조림 은대구조림');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6240', '산들해', '송파구 ', '서울 송파구 위례성대로 6 (방이동 현대토픽스)', '02-448-3457', NULL, '11:30 ~ 15:00 / 17:00 ~ 21:00', '5호선 방이역 1번 출구', '한정식 돌솥돼지불고기 돌솥 소불고기 황태구이');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13856', '장수식당', '송파구 ', '서울특별시 송파구 삼전로 95 (잠실동)', '02-415-4148', NULL, '11:00 ~ 15:00 / 17:00 ~ 22:00', '9호선 삼전역 1번 출구', '돼지고기구이 김치삼겹(1만2천원)두루치기(1만2천원) 오삼불고기(1만2천원) 볶음밥(2천원)');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('42258', '[백년가게] 향호면옥', '송파구 ', '서울 송파구 마천로 79 (오금동)', '02-406-0422', NULL, '11:00 ~ 21:30', '5호선 방이역 1번 출구', '바지락칼국수 왕만두');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2414', '광양불고기', '양천구 ', '서울특별시 양천구 남부순환로 531 (신월동)', '02-2697-9999', NULL, '10:00 ~ 22:00', '5호선 신정역 1번출구 602 640 62116715 6624 버스 한빛복지회관 하차', '광양불고기 꽃등심');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12571', '오목집', '양천구 ', '서울특별시 양천구 목동서로 155 (목동)', '02-6737-6692', NULL, '14:00 ~ 23:00', '5호선 오목교역 2번 출구에서 약 500m', '족발');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('7859', '채선당(목동점)', '양천구 ', '서울 양천구 목동동로12길 20 (신정동 하버드)', '02-2652-0737', 'https://www.chaesundang.co.kr/', '매일 11:00~22:00', '5호선 오목교역 7번출구', '소고기 샤브 월남쌈 샤브 매운버섯 샤브 스페션 샤브');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6396', '여의도양지탕', '영등포', '서울특별시 영등포구 국회대로70길 7 (여의도동)', '02-784-0065', NULL, '평일 09:00 ~ 22:00  주말 09:00 ~ 21:30', '9호선 국회의사당역 1번 출구', '한식(양지탕모듬수육삼겹살) ');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14526', '부흥동태', '영등포', '서울특별시 영등포구 국제금융로8길 34 (여의도동)', '02-782-7707', NULL, '평일 09:00 ~ 22:00 토요일 11:00 ~ 15:00', '5호선 여의도역 5번 출구', '동태내장전골 동태알탕 동태탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('1701', '향복집 ', '영등포구', '서울 영등포구 국제금융로8길 25 (여의도동 주택건설회관빌딩) 지하1층', '02-783-9441', NULL, '평일 11:00~15:00 / 17:00~22:30   주말 공휴일 11:00~21:00', '59호선 여의도역 5번 출구', '복뚝배기매운탕/지리 복찜 복튀김 참복매운탕/지리');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3019', '진진만두', '영등포구', '서울 영등포구 국제금융로8길 34 (여의도동 오륜빌딩) 3층', '02-780-7867', NULL, '11:00 ~ 15:00 / 17:00 ~ 21:00', '9호선 샛강 1번 출구 5호선 여의도 5번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3473', '마도', '영등포구', '서울 영등포구 의사당대로1길 11 (여의도동 메종리브르오피스텔)', '02-784-2660', NULL, '매일 11:30 ~ 22:00', '9호선 샛강역 1번 출구', '해물야끼우동 소고기야끼우동 알밥');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3475', '성민촌', '영등포구', '서울 영등포구 여의나루로 71 (여의도동 동화빌딩) 지하 1층', '02-780-6262', NULL, '매일 11:30 ~ 22:00', '9호선 5호선 여의도역 4번 출구', '해물국수전골 소고기국수전골 만두전골');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4561', '산하', '영등포구', '서울 영등포구 여의대방로 383 (여의도동 경도빌딩)', '02-782-1420', NULL, '매일 11:00 ~ 21:00', '9호선 샛강 2번 출구', '만두');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11999', '올라', '영등포구', '서울 영등포구 의사당대로 38 (여의도동 여의도더샵아일랜드파크)', '02-2090-7220', 'http://www.ola.kr/main_idx.php', '11:30 - 22:00 15:00 - 17:00 (브레이크타임)', '9호선 국회의사당역 4번 출구', '참치 타르타르 닭가슴살과 수제 리코타 치즈');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4587', '서궁', '영등포구', '서울 영등포구 국제금융로 86 (여의도동 롯데캐슬 아이비) 지하 1층', '02-780-7548', NULL, '월~금 11:00 ~ 15:00 / 16:30 ~ 22:00 토 11:00 ~ 15:30 / 16:30 ~ 21:00', '9호선 샛강역 2번 출구', '오향장육 소고기군만두 삼선볶음밥 탕수육');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6122', '황태본가', '영등포구', '서울 영등포구 국제금융로2길 37 (여의도동 에스트레뉴)', '02-786-8307', NULL, '평일 06:30 ~ 21:30 주말 공휴일 06:30 ~ 15:00', '5호선 여의도 3번 출구', '황태구이 황태찜');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11786', '바닷가재가리비', '영등포구', '서울특별시 영등포구 가마산로90길 3 (신길동)', '02-849-4096', NULL, '매일 11:00~23:00', '7호선 보라매 56번 출구', '바닷가재 킹크랩 가리비 ');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('23339', '라메흐꺄도', '영등포구', '서울 영등포구 선유로17길 24 (문래동6가 신일아르디세)', '02-3667-5989', 'https://blog.naver.com/choung1417', '11:00 - 15:30 / 16:30 - 21:30', '5호선 양평역 400m이내', '간장게장 양념게장 간장새우장');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('38024', '리치몬드 제과점 더현대서울점 ', '영등포구', '서울 영등포구 여의대로 108 (여의도동 파크원)  더현대서울 지하 1층', '02-3277-0798', NULL, '10:30 - 20:00', '5호선 여의나루역 1번 출구에서 427m', '밤파이 3500원 슈크림 3300원 레몬케이크 3500원 밤식빵 9800원');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('38027', '카페 레이어드 더현대서울점', '영등포구', '서울 영등포구 여의대로 108 (여의도동 파크원) 더현대서울 지하 1층', '02-3277-8551', NULL, '평일 10:30 ~ 20:00 주말 10:30 ~ 20:30', '5호선 여의나루역 1번 출구에서 427m', '바질 스콘 5300원 갈릭 크림 스콘 5500원 딸기 스콘 5200원');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3250', '파낙스', '영등포구', '서울 영등포구 여의대방로65길 17 (여의도동 서린빌딩)', '02-780-9037', NULL, '매일 11:00~22:00', '9호선 샛강역 2번 출구', '찰흑미삼계탕 녹각삼계탕 들깨삼계탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3393', '한양원', '영등포구', '서울 영등포구 여의대방로65길 6 (센터빌딩) 1층', '02-761-9292', NULL, '평일 11:30 ~ 05:00 토요일 11:30 ~ 22:00', '9호선 샛강역 2번 출구', '특양구이대창구이막창구이');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5413', '진주집 여의도점', '영등포구', '서울 영등포구 국제금융로6길 33 (여의도동)', '02-780-6108', NULL, '평일 10:00~20:00  토요일 10:00~19:00', '5호선 여의도역 5번 출구', '콩국수 비빔국수 닭칼국수 냉콩국수 육개장칼국수');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6328', '서글렁탕', '영등포구', '서울 영등포구 여의대방로 394 (여의도동 우정빌딩)', '02-780-8858', NULL, '평일 12:00 - 23:00 주말 12:00 - 22:00', '9호선 샛강역 3번 출구', '삼겹살');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('7880', '홀리차우', '영등포구', '서울 영등포구 국제금융로2길 24 (여의도동 BNK금융타워) 지하 1층', '02-786-3333', 'http://www.holeechow.co.kr', '평일 11:00~21:30 (Last order 21:00) 주말 11:30~21:30 (Last order 21:00)', '59호선 여의도역 3번 출구', '머니백 덤플링스 홀리즈 하우스 볶음밥');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11270', '켄싱턴 호텔 뉴욕뉴욕', '영등포구', '서울 영등포구 국회대로76길 16 켄싱턴호텔 1층', '02-6670-7270', 'https://www.kensington.co.kr/hyd/dining/detail?idx=29', '11:30 ~ 21:00', '9호선 국회의사당역1번출구', '러브 인 뉴욕(1인 기준) - 159000원');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14290', '슈치쿠', '영등포구', '서울 영등포구 63로 50 (여의도동 63한화생명빌딩) 58층', '02-789-5751', 'http://www.63restaurant.co.kr/', '월~토 11:30 ~ 15:00 / 17:30 ~ 22:00 일요일 11:30 ~ 15:00 / 17:10 ~ 21:30', '9호선 샛강역 3번 출구', '스시 사시미');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2753', '장원북어국', '영등포구', '서울특별시 영등포구 국제금융로8길 11 (여의도동)', '02-784-0639', NULL, '평일 06:30 ~ 15:00', '9호선 샛강 2번 출구', '북어국 콩나물김칫국 육개장 동태탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3481', '희정식당', '영등포구', '서울 영등포구 여의나루로 117 지하', '02-784-9213', NULL, '월~토 11:30~23:00', '5호선 여의나루역 1번 출구', '특.희정부대찌개 티본모듬스테이크 등심스테이크');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13283', '막내회센타', '영등포구', '서울특별시 영등포구 도신로53길 7 (신길동)', '02-844-6150', 'https://www.siksinhot.com/P/254921', '10:30 - 22:00', '1호선 신길 1번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('38023', '르쁘띠푸 더현대서울점', '영등포구', '서울 영등포구 여의대로 108 (여의도동 파크원) 더현대서울 지하 1층', '02-3277-8510', 'https://lepetitfour.modoo.at/', '평일 10:30 ~ 20:00  금 주말 10:30 ~ 20:30', '5호선 여의나루역 1번 출구에서 427m', '마카롤 7800원 마카롱 2200원');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('38028', '통인스윗 더현대서울점', '영등포구', '서울 영등포구 여의대로 108 (여의도동 파크원) 더현대서울 지하 1층', '02-3277-8513', NULL, '10:30 ~ 20:30', '5호선 여의나루역 1번 출구에서 427m', '에그 타르트 3000원 호두 타르트 3500원 초코 타르트 5500원');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6779', '주빌리쇼콜라띠에', '영등포구', '서울 영등포구 국제금융로2길 24 (삼성생명(주)여의도빌딩)', '02-785-7221', 'http://www.jubileechocolatier.com', '07:00 ~ 21:30 | 토요일 10:00~18:00', '5호선 여의도 34번 출구', '카페');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13808', '덕원꼬리곰탕방치탕', '영등포구', '서울특별시 영등포구 버드나루로6길 6 (영등포동2가)', '02-2634-8663', NULL, '09:00 - 21:00 (Break time 15:30 - 17:00)', '5호선 영등포시장 2번 출구', '꼬리곰탕 소머리수육 중토막 방치탕 우족수육');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('24695', '초록뱀푸드팜', '영등포구', '서울 영등포구 여의대로 24 (여의도동 전국경제인연합회회관) 50층', '02-2055-4440', 'https://www.theskyfarm.co.kr/', '매일 10:00 - 22:00 세상의모든아침 (Break time 16:00 - 17:00)', '5·9호선 여의도역 2번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3349', '구마산', '영등포구', '서울특별시 영등포구 국제금융로 70 (여의도동)', '02-782-3269', NULL, '11:30 ~ 15:00 / 17:00 ~ 21:00', '9호선 샛강역 2번 출구', '소갈비');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3367', '수정생태', '영등포구', '서울 영등포구 국제금융로7길 32 (여의도동 장미아파트) 2층', '02-784-4745', NULL, '평일 10:00 ~ 22:00 토요일 10:00 ~ 15:00', '5호선 여의나루역 4번 출구', '생태찌개백반 제육볶음 오징어볶음');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6343', '한우집위', '영등포구', '서울특별시 영등포구 국제금융로 86 (여의도동)', '02-780-2528', NULL, '11:00 ~ 22:00', '9호선 샛강역 2번 출구', '소고기구이');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12494', '풀향기손칼국수', '영등포구', '서울 영등포구 여의나루로 42 (여의도종합상가)', '02-761-0357', NULL, '매일 10:00~22:00', '9호선 여의도역 5번 출구', '바지락칼국수 해물파전 풀향기보쌈 모둠보쌈');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3439', '소도', '영등포구', '서울 영등포구 의사당대로1길 11 (여의도동 메종리브르오피스텔)', '02-783-3155', NULL, '매일 11:30 ~ 22:30', '9호선 샛강역 1번 출구', '점심회정식 저녁코스');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4519', '백원', '영등포구', '서울 영등포구 여의공원로 101 (여의도동 C.C.M.M빌딩) 12층', '02-784-6161', 'https://www.instagram.com/whitegarden1998/', '평일 11:30 ~ 14:30 / 17:30 ~ 22:00', '9호선 국회의사당역 3번 출구', '불도장 상어지느러미찜 오늘의특선');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6114', '란나타이', '영등포구', '서울 영등포구 국제금융로 86 (여의도동 롯데캐슬 아이비)', '02-782-8284', NULL, '월~토 11:30 ~ 22:00', '9호선 샛강 2번 출구', '팟시유 카오 팟 푸 톰양쿵');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11498', '해동복국', '영등포구', '서울 영등포구 국제금융로8길 11 (여의도동 대영빌딩) 1층', '02-783-6011', NULL, '매일 09:00~22:00', '9호선 샛강역 1번 출구', '복국지리 복국매운탕 복튀김 복수육');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11934', '대동문', '영등포구', '서울 영등포구 국제금융로6길 30 (백상빌딩) 백상빌딩 2층', '02-782-1780', 'http://www.daedongmun.kr/', '평일 10:00~22:00', '5호선 여의도역 5번 출구', '어복쟁반 평양손만두국');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('42267', '[백년가게] 고려정', '영등포구', '서울 영등포구 국제금융로6길 30 (여의도동 백상빌딩) 116호', '02-761-0065', NULL, '09:30 ~ 22:00', NULL, '차돌박이 갈비살');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('42268', '[백년가게] 송죽장', '영등포구', '서울 영등포구 문래로 203 (영등포동4가) 1~3층', '02-2678-1323', NULL, '매일 11:00~22:00', NULL, '짜장 우동 짬뽕 등 중식');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('1598', '대방골 ', '영등포구', '서울 영등포구 국회대로 800 (진미파라곤) 지하 1층', '02-783-4999', 'https://www.instagram.com/daebanggol_official/', '평일 11:00 ~ 22:00 주말 11:00 ~ 21:00', '9호선 국회의사당역 1번 출구', '대방골정식 솔잎찜보리굴비한정식 연포탕한정식 솔잎찜보리굴비매생이정식');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2836', '주빈', '영등포구', '서울특별시 영등포구 의사당대로 127 (여의도동)', '02-782-7970', 'http://www.jubean-coffee.com', '10:00 ~ 20:00', '5호선 여의도역 5번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3272', '가양칼국수버섯매운탕', '영등포구', '서울 영등포구 국제금융로 78 (홍우빌딩) 지하 1층', '02-784-0409', NULL, '매일 11:30 ~ 21:30 (Last order 20:30)', '9호선 샛강역 2번 출구', '가양칼국수버섯매운탕 샤브샤브 버섯초회');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3405', '대여', '영등포구', '서울 영등포구 여의대방로67길 22 (여의도동 태양빌딩)', '02-783-6023', 'http://www.02-783-6023.kti114.net/idx.htm', '평일 07:30 ~ 21:00 주말 08:30 ~ 20:00', '9호선 샛강역 2번 출구', '버섯굴죽 전복죽');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4475', '백리향', '영등포구', '서울 영등포구 63로 50 (63한화생명빌딩) 57층', '02-789-5741', 'http://www.63restaurant.co.kr/introduction/introduction.r63?shop_idrest=31020', '매일 11:30 ~ 15:00 / 17:30 ~ 22:00', '9호선 샛강역 3번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6159', '창고43', '영등포구', '서울 영등포구 국제금융로6길 33 M2층', '02-786-5959', 'http://www.changgo43.co.kr/', '11:30 ~ 22:00', '5호선 여의도역 5번 출구', '소고기구이');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11966', '양마니', '영등포구', '서울 영등포구 국회대로76길 16', '02-784-9282', NULL, '평일 11:30~22:00   토요일 11:30~21:00', '9호선 국회의사당역 2번 출구', '특양구이 대창구이 한우등심');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12851', '여의도따로국밥', '영등포구', '서울 영등포구 여의대방로69길 28 (유성빌딩)', '02-782-0047', NULL, '일요일은 21:00까지', '9호선 여의도역 5번 출구', '따로국밥 콩나물국밥 꼬리국밥 버섯생불고기 꼬리수육 들판수육');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13246', '호수삼계탕', '영등포구', '서울특별시 영등포구 도림로 274-1 (신길동)', '02-848-2440', NULL, '11:00 ~ 21:30 (주문시간 21:00 까지)', '7호선 신풍역 4번 출구', '삼계탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('15860', '좋은세상만들기', '영등포구', '서울 영등포구 선유로 248-13 (양평동4가)', '070-4412-5700', NULL, '17:30 ~ 23:50', '2 9호선 당산역 12번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6582', '단풍나무집(이태원점)', '용산구', '서울특별시 용산구 이태원로27가길 26 (이태원동)', '02-790-7977', NULL, '평일 11:30 ~ 15:00 / 17:00 ~ 22:00 주말 10:00 ~ 22:00', '6호선 이태원역 1번 출구', '1++한우숙성등심 양념갈비 단풍 불고기 우삼겹');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('10297', '정감어린', '용산구', '서울특별시 용산구 후암로 4 (후암동)', '02-754-4389', NULL, '평일 11:30 ~ 14:00 / 17:00 ~ 21:30 토요일 12:00 ~ 21:30 일요일 12:00 ~ 21:00', '4호선 숙대입구역 2번출구', '돼지갈비  소갈비  불고기');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3793', '봉자네', '용산구', '서울특별시 용산구 이촌로 182 (이촌동)', '02-790-8636', NULL, '평일 16:00 ~ 01:00 토요일 16:00 ~ 24:00', '4호선 이촌역 5번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13709', '까치네', '용산구', '서울특별시 용산구 한강대로84길 11-16 (남영동)', '02-798-4668', NULL, '월 수 금 17:00 ~ 23:00 / 일 17:00 ~ 22:00', '4호선 숙대입구역 5번 출구', '닭볶음탕 계란말이 계란범벅 두부김치 김치찌개 동태찌개 참치찌개 부대찌개 오징어볶음 오징어덮채 골뱅이무침 닭볶음탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3175', '초록바구니', '용산구 ', '서울 용산구 이촌로84길 9-18', '02-790-3421', 'http://www.echorok.co.kr/', '매일 11:30~15:00 / 17:30~22:00', '경의중앙선 4호선 이촌역 3-1번 출구', '한정식 테이스팅메뉴 초록정식 채식정식');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3668', '해방촌 노아', '용산구 ', '서울 용산구 신흥로 98 (용산동2가)', '02-796-0804', NULL, '15:30 ~ 22:00', '6호선 녹사평 2번 출구', '진정한 버섯 피자 투뿔 라구 파스타 꽃게 로제 파스타 or 리조또');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3711', '니와', '용산구 ', '서울 용산구 이촌로75길 22', '02-790-0917', NULL, '17:00 ~ 24:00', '4호선 경의중앙선 이촌 3-1번 출구', '오코노미야끼 가오리구이 수제고로케');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4826', '이태원숯불구이', '용산구 ', '서울 용산구 녹사평대로32길 43 (이태원동)', '02-797-7777', NULL, '매일 11:30~22:00', '6호선 녹사평역 3번 출구', '특등심 일반등심 곰탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6602', '비손', '용산구 ', '서울 용산구 이태원로27길 101 (한남동)', '02-790-0479', NULL, '11:30 - 22:00 * Break time 15:00 - 17:00', '6호선 이태원역 2번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12702', '차크라', '용산구 ', '서울특별시 용산구 독서당로 83 (한남동)', '02-796-1149', 'http://www.chakraa.co.kr/', '매일 12:00 ~ 22:00', '경의중앙선 한남역 1번 출구', '치킨 마크니 탄두리 세트 야채 커리');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13804', '아그라', '용산구 ', '서울특별시 용산구 이태원로 153 (이태원동) 지하 1층', '02-797-7262', 'http://agra.co.kr/', '매일 11:30 ~ 15:00 / 17:00 ~ 21:00', '6호선 이태원 1번 출구', '버터치킨마크니 탄두리치킨 안다커리 치킨반달루');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('29721', '김용안과자점', '용산구 ', '서울 용산구 한강대로 155-1 (한강로2가)', '02-796-6345', NULL, '월~토 10:00~21:00', '4·6호선 삼각지역 4번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('29989', '할랄가이즈 이태원점', '용산구 ', '서울 용산구 이태원로 187 (이태원동) 2층', '02-794-8308', 'http://thehalalguys.co.kr/', '일~목 11:00 - 22:00 금~토 11:00 - 23:00', '6호선 이태원역 2번 출구', '콤보 플래터 치킨 플래터 콤보 샌드위치');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3649', '아지겐', '용산구 ', '서울 용산구 이촌로75길 22 (이촌동)', '02-794-8177', NULL, '11:30 ~ 14:30 / 17:30 ~ 21:30', '4호선 경의중앙선 이촌역 3-1번 출구', '게살오믈렛 두부튀김 카타야끼소바 부추고기볶음');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4054', '웨스턴차이나', '용산구 ', '서울 용산구 독서당로 73 (한남동 성아맨숀)', '02-795-3654', NULL, '매일 11:30 ~ 23:30', '6호선 한강진역 3번 출구 경의중앙선 한남역 1번 출구', '깐풍기 찹쌀탕수육 새우수정딤섬 소룡포');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5129', '시화담', '용산구 ', '서울 용산구 이태원로 254 (한남동)', '02-798-3311', 'http://www.siwhadam.com/', '평일 12:00~22:00 토 12:00~22:00 (Break Time 15:00~17:00)', '6호선 이태원역 2번 출구', '해물을 듬뿍 얹은 동래 파전 감칠맛 나는 장모님의 닭튀김 잣 소스에 버무린 코리안 라비올리');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5442', '비스테카', '용산구 ', '서울 용산구 회나무로 49', '02-792-7746', 'http://bistecca.co.kr/ ', '매일 12:00~16:00 / 18:00~22:30', '6호선 녹사평역 2번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('10799', '라쿠치나', '용산구 ', '서울 용산구 회나무로44길 10 (라쿠치나)', '02-794-6006', 'http://www.la-cucina.co.kr', '매일 12:00 ~ 21:30 (Break Time 15:00 ~ 17:30)', '6호선 이태원역 2번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13740', '서지', '용산구 ', '서울특별시 용산구 한강대로84길 11-5 (남영동)', '02-797-8491', 'http://www.02-797-8491.kti114.net/', '평일 11:30 ~ 13:30 / 16:30 ~ 22:00 토 17:00 ~ 23:00', '4호선 숙대입구역 6번 출구', '모듬스테이크 부대전골 부대찌개');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13759', '품서울', '용산구 ', '서울특별시 용산구 두텁바위로60길 49 (후암동)', '02-777-9007', 'http://www.poomseoul.com/', '12:00 - 22:00', '4호선 숙대입구 2번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13944', '팬케이크오리지널스토리', '용산구 ', '서울특별시 용산구 독서당로 67 (한남동)', '02-794-0508', 'https://www.instagram.com/pancakes_original_story/', '평일 08:00~15:00 Last Order 14:20 주말 09:00~16:00 Last Order 15:00 (재료소진 시 조기마감)', '6호선 한강진 2번 출구 경의중앙선 한남 1번 출구', '오리지널버터밀크팬케익 초콜릿이퐁당 초콜릿팬케익 바나나가듬뿍 팬케익');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('20193', '스튜디오 콘크리트', '용산구 ', '서울 용산구 한남대로 162 (한남동)', '02-794-4095', 'http://www.studio-ccrt.com', '11:00 - 20:00', '지하철 6호선 한강진역 2번 출구에서 약 400m', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('27234', '카페 무자비', '용산구 ', '서울 용산구 한강대로84길 11-18 (남영동)', NULL, 'http://www.instagram.com/mujabee_official', '매일 12:00~23:00', '4호선 숙대입구역 5번 출구 도보 3분', '무자비라테 말차라테');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('1055', 'JJ마호니스', '용산구 ', '서울 용산구 소월로 322 (하얏트호텔)', '02-799-8601', 'https://seoul.grand.hyatt.com/ko/hotel/dining/JJMahoneys.html', '월~수  19:00~02:00 목 19:00~03:00 금~토  19:00~04:00', '6호선 한강진역 2번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6294', '나리의집', '용산구 ', '서울 용산구 이태원로 245 (한남동)', '02-793-4860', NULL, '월~토 14:00 ~ 24:00 일요일 16:00 ~ 24:00', '6호선 한강진역 1번 출구', '삼겹살 청국장');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12556', '와플하우스', '용산구 ', '서울 용산구 청파로45길 37 (청파동2가)', '02-711-2649', NULL, '11:00 ~ 23:00', '4호선 숙대입구 10번 출구', '와플');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('18263', '이드', '용산구 ', '서울 용산구 우사단로10길 67 (한남동)', '070-8899-8210', NULL, '매일 12:00 ~ 21:00', '6호선 이태원역 3번 출구 도보 10분', '비빔밥 소불고기 소고기김치볶음밥 오미자차');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('24316', '아르모니움', '용산구 ', '서울 용산구 대사관로 33 (한남동)', '02-792-3972', NULL, '10:00 - 22:00 15:00 - 17:30 (브레이크타임)', '6호선 이태원역 3번출구 도보 12분 6호선 한강진역 3번출구 도보 15분', '무크림 소스의 지중해식 문어구이 이베리코 스테이크');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('29976', '봄베그릴 이태원점', '용산구 ', '서울 용산구 우사단로10길 11 (이태원동)', '02-792-7155', 'http://bombaygrilll.itrocks.kr/', '매일 11:00~22:00', '6호선 이태원역 3번 출구', '치킨마크니 달콤한맛 세트 치킨타카마살라 매콤한맛 세트');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('429', '진풍정 (서울역점) ', '용산구 ', '서울 용산구 후암로 107 (게이트웨이타워)', '02-777-8004', 'http://www.jinpoongjeong.com/poong/main/', '매일 11:30 ~ 22:00 Break time 15:00~17:00', '1호선 서울역 11번 출구 게이트타워 바로 연결 4호선 서울역 11번 출구 게이트타워 바로 연결', '진연코스 진풍정A 진풍정B');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3751', '봉산집', '용산구 ', '서울 용산구 한강대로62나길 24', '02-793-5022', NULL, '11:30 ~ 22:00', '6호선 삼각지 13번 출구', '차돌박이 차돌막장찌개');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4085', '이쯔모', '용산구 ', '서울 용산구 독서당로 67 (한남동)', '02-796-8743', NULL, '평일 11:30 ~ 21:00 토요일 15:00 ~ 21:00', '6호선 한강진역 3번 출구 경의중앙선 한남역 1번 출구', '문어와 마 초미소 무침 모듬회 3점세트');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4426', '라멘81번옥', '용산구 ', '서울 용산구 대사관로34길 74', '070-8119-6770', 'http://blog.naver.com/reddruk/ ', '매일 11:30 ~ 22:00', '경의중앙선 한남역 1번 출구 6호선 이태원역 2번 출구', '차슈라멘 매운돈코츠 소유라멘 돈코츠');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5659', '쟈니덤플링', '용산구 ', '서울 용산구 보광로59길 33 (이태원동)', '02-790-8831', NULL, '매일 11:30 ~ 21:10', '6호선 이태원역 4번 출구', '군만두 반달 송이물만두 새우물만두');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('10696', '갯마을', '용산구 ', '서울 용산구 서빙고로 56 (한강로3가)', '02-795-2277', NULL, '09:30 ~ 15:30 / 17:00 ~ 21:00', '4호선 이촌역 3번 출구', '만두 녹두부침개 만둣국 떡만둣국 모둠전 만두전골');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11141', '일미장어 ', '용산구 ', '서울 용산구 후암로57길 35-15 (부곡목욕탕)', '02-777-4380', 'http://blog.daum.net/ilmijangeo', '월~토 11:30 ~ 13:00 / 17:30~21:00', '1호선 서울역 12번 출구', '장어정식 장어덮밥');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11615', '두바이', '용산구 ', '서울 용산구 이태원로 192', '02-798-9277', NULL, '매일 12:00 ~ 23:00', '6호선 이태원역 3번 출구', '양고기 립 스테이크 쉬시 타욱 양고기 캅사 필라펠');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12675', '쯔꾸시', '용산구 ', '서울 용산구 한강대로76길 3 (남영동)', '02-755-1213', NULL, '평일 11:30~23:00  토요일 11:30~22:00', '4호선 숙대입구 6번 출구 1호선 남영역 1번 출구', '장어덮밥 치라시스시 쯔쿠시 짬뽕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13223', '엔그릴', '용산구 ', '서울 용산구 남산공원길 105 (용산동2가 YTN서울타워) 7층', '02-3455-92979298', 'http://www.ngrill.co.kr/', '평일 13:00 - 15:00 / 17:00 - 22:00 주말 12:00 - 15:00 / 17:00 - 23:00', '4호선 명동역 3번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13371', '페트라', '용산구 ', '서울 용산구 녹사평대로40길 33 (이태원동) 2층', '02-790-4433', NULL, '매일 11:30 ~ 22:00', '6호선 녹사평역 1번 출구', '홈머스 바바가누즈 라바네흐 미자');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13537', '패션파이브', '용산구 ', '서울특별시 용산구 이태원로 272 (한남동)', '02-2071-9505', NULL, '07:30 ~ 22:00', '6호선 한강진 3번 출구', '베이커리');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13716', '동빙고', '용산구 ', '서울 용산구 이촌로 319 (이촌동 현대아파트)', '02-794-7171', NULL, '매일 10:30 ~ 22:00', '4호선 이촌역 3-1번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13749', '술탄케밥', '용산구 ', '서울특별시 용산구 보광로 126 (이태원동)', '02-749-3890', NULL, NULL, '6호선 이태원역 3번 출구', '터키 케밥 치킨 터키 케밥 램 케밥 박스 믹스');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('20051', '장진우식당', '용산구 ', '서울 용산구 회나무로13가길 40 (이태원동 남산탕)', '070-8160-0872', NULL, '월 17:00-24:00  수-일 12:00-24:00', '6호선 녹사평역 2번 출구', '데일리메뉴(변동)');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('22996', '한남동 한방통닭', '용산구 ', '서울 용산구 대사관로34길 38 (한남동)', '02-797-8677', 'https://www.instagram.com/hannamdonghanbangchicken/ ', '월~목 16:10 - 00:30 금~토 16:10 - 01:30', '경의선 한남역 1번 출구에서 600m 이내', '한방통닭 바베큐모듬구이');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('29994', '미스터케밥 이태원2호점', '용산구 ', '서울 용산구 우사단로 42 (이태원동)', '02-794-1997', 'http://www.mrkebab.co.kr/', '매일 00:00~24:00', '6호선 이태원역 3번 출구', '터키케밥양고기 터키케밥닭고기');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('40796', '알페도', '용산구 ', '서울 용산구 이태원로 174 (이태원동) 1층 4-5호', '02-794-1134', 'http://instagram.com/alpedobakery', '매일 8:00 - 23:00', '6호선 이태원역 4번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('41791', '필리스 펍', '용산구 ', '서울 용산구 신흥로 31-1 (용산동2가)', '02-749-0679', 'https://www.facebook.com/philliespub', '화~목 17:00 ~ 24:00 / 금 17:00 ~ 02:00 토 14:00 ~ 02:00 / 일 14:00 ~ 24:00', '6호선 녹사평역 2번출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('1154', '올댓재즈', '용산구 ', '서울 용산구 이태원로27가길 12', '02-795-5701', 'http://www.allthatjazz.kr/indexx.htm', '월~목일 18:00~01:00 금~토 18:00~02:30', '6호선 이태원역 2번 출구', '재즈바');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('1509', '타코아미고', '용산구 ', '서울 용산구 보광로 123', '02-749-5253', NULL, '월 16:00 ~ 22:30 화~목일 11:30 ~ 22:30 금~토  11:30 ~ 23:30', '6호선 이태원역 4번 출구', '타말레 타코도라도 께사디아 파히타');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4608', '금홍 ', '용산구 ', '서울 용산구 이촌로 303 (이촌동 현대아파트) 11동상가 1층', '02-796-0995', NULL, '화~일 11:30 ~ 15:00 / 17:00 ~ 21:00', '4호선 경의중앙선 이촌역 3-1번 출구', '깐쇼새우 사천탕면 유린기');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6476', '도이치하우스', '용산구 ', '서울 용산구 대사관로 46 (한남동 서울빌딩)', '02-794-1313', NULL, '매일 11:30 ~ 02:00', '6호선 이태원역 3번 출구', '예딩거 둔켈 신데렐라 모둠소시지 안심찹스테이크');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6509', '동아냉면', '용산구 ', '서울 용산구 대사관로 45-1 (한남동)', '02-796-7442', NULL, '09:30 ~ 21:00', '6호선 이태원역 3번 출구', '물냉면 비빔냉면 만두');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6861', '스탠딩커피', '용산구 ', '서울특별시 용산구 녹사평대로 224-1 (이태원동)', '02-794-0427', NULL, '평일 07:00 ~ 22:00 주말 09:00 ~ 22:00', '6호선 녹사평역 2번 출구', '커피전문점');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('10580', '부다스벨리', '용산구 ', '서울특별시 용산구 녹사평대로40길 48 (이태원동)', '1666-2753', 'https://www.instagram.com/buddhasbelly_official/', '매일 11:30 ~ 15:30 / 16:30 ~ 22:00', '6호선 녹사평역 1번 출구', '푸님 팟 퐁 커리 팟타이 겡키완');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('10766', '동강', '용산구 ', '서울특별시 용산구 이촌로 182 (이촌동)', '02-794-1033', NULL, '11:30 ~ 14:00 / 17:00 ~ 20:30', '4호선 이촌역 4번 출구', '유린기 게살스프 사품냉채 산라탕 사천탕면');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13974', '삼각정', '용산구 ', '서울 용산구 한강대로 151 (한강로2가)', '02-798-3666', NULL, '월~토 17:00 ~ 22:30', '4호선 삼각지역 4번 출구', '갈매기살 모소리 목살 삼겹살');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14419', '오월의종', '용산구 ', '서울특별시 용산구 이태원로 229 (한남동)', '02-792-5561', NULL, '11:00 ~ 18:00', '6호선 이태원 2번 출구', '베이커리');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14926', '한남북엇국', '용산구 ', '서울특별시 용산구 독서당로 65-7 (한남동)', '02-2297-1988', NULL, '월~토 08:00 ~ 15:00 / 16:00 ~ 23:00 일 08:00 ~ 15:00 / 16:00 ~ 21:00', '6호선 한강진역 2번 출구', '한남북엇국 차림 묵은지돼지찜 민육전 영덕 홍게장 비빔밥 차림');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('29949', '케르반 이태원점', '용산구 ', '서울 용산구 이태원로 192 (이태원동) 혜문빌딩 1층', '02-792-4767', NULL, '매일 11:00~22:00', '6호선 이태원역 3번 출구', '믹스 피데 믹스 싀시 케밥 & 버팔로윙');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('36143', '파파도나스 해방촌점', '용산구 ', '서울 용산구 신흥로 7 (용산동2가)', '02-792-1180', 'http://papadonas.com/', '07:00~21:00', '6호선 녹사평역 2번 출구', '도나스와 앙버터');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('37007', '사유', '용산구 ', '서울 용산구 이태원로54길 5 (한남동)', '02-2289-9050', 'https://www.instagram.com/sayoo.kr/', '11:00 ~ 22:00', '6호선 한강진역 3번 출구', '티라미수 8000원');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('41788', 'The Studio HBC', '용산구 ', '서울 용산구 신흥로7길 1 (용산동2가) 지하', NULL, 'https://www.thestudiohbc.com/', '목 19:00 ~ 01:00 / 금 18:00 ~ 05:00 토 15:00 ~ 05:00 / 일 15:00 ~ 24:00', '6호선 녹사평역 2번출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('1024', '블리스', '용산구 ', '서울 용산구 이태원로 173-7', NULL, NULL, '월~목일 18:00~02:00 금~토 18:00~05:00', '6호선 이태원역 1번 출구', '까르보나라 명란크림파스타');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3084', '곽경찬의 시골밥상', '용산구 ', '서울 용산구 이태원로 235 (한남동)', '02-793-5390', NULL, NULL, '6호선 이태원역 2번 출구', '시골밥상 굴비/갈치 각 게장 뚝불고기');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6096', '바다식당', '용산구 ', '서울 용산구 이태원로 245 2층 (한남동)', '02-795-1317', NULL, '매일 11:30 ~ 22:00', '6호선 한강진역 1번 출구', '존슨탕 돼지갈비바베큐 소갈비바베큐 소고기쏘세지 정통티본스테이크 폭찹');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12767', '우스마니아', '용산구 ', '서울 용산구 우사단로 34 (이태원동)', '02-798-7155', NULL, '매일 11:00 ~ 22:00', '6호선 이태원 3번 출구', '치킨 탄두리 마살라 비프 칠리 드라이 사다난 케밥');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('29988', '하지[임시 휴업]', '용산구 ', '서울 용산구 우사단로10길 39 (한남동)', '+82-2-749-5185', 'https://hajj-korea-halal-food.business.site/', '매일 10:00 - 24:00', '이태원역 6번출구', '불고기 비빔밥');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('41766', '어필남산', '용산구 ', '서울 용산구 회나무로42길 36 (이태원동) 2층', '070-4184-2000', 'https://www.instagram.com/uphill.namsan/', '월 수 목 17:00 ~ 23:00 금 토 일 14:00 ~ 23:00', '6호선 이태원역 2번 출구', '어필 스테이크 트러플 치즈 파스타 팟 카프라오 파스타 그릴드 샐러드');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13396', '평양집', '용산구 ', '서울특별시 용산구 한강대로 186 (한강로1가)', '02-793-6866', NULL, '07:00 ~ 21:30', '6호선 삼각지역 14번 출구', '양곱창');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('30003', '케르반 베이커리', '용산구 ', '서울 용산구 이태원로 208 (제임스클럽)', '02-790-5585', 'https://www.instagram.com/kervanbakery/', '일~목 09:00 ~ 24:00 금 토요일 00:00 ~ 24:00', '6호선 이태원역 3번 출구', '로쿰 바클라바 쿠키 푸딩 ');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('37009', '오빠달걀빵', '용산구 ', '서울 용산구 청파로47가길 5 (청파동3가) 1층 오빠달걀빵', '02-706-7180', NULL, '평일 09:40 ~ 22:00  주말 12:00 ~ 22:00', '4호선 숙대입구역 10번 출구에서 524m', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('42704', '비스트로 멕시 (bistro MEXI)', '용산구 ', '서울 용산구 이태원로 191 (이태원동) 2층', '02-797-6855', 'https://www.instagram.com/mexiseoul/', '일~수 17:00 ~ 02:00 / 목요일 17:00 ~ 03:00 금~토 17:00 ~ 04:00', '6호선 이태원역 2번 출구', 'MEXI SABA (고등어 세비체)  MEXI TRIPLE TACOS (치킨 관자 부채살)');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4320', '원대구탕(삼각지역) ', '용산구 ', '서울 용산구 한강대로62가길 8', '02-797-4488', NULL, '월~토 11:00~22:00', '4호선 삼각지역 1번 출구', '대구탕 내장탕 맑은탕 대가리탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6183', '텐카이', '용산구 ', '서울 용산구 소월로 322 (한남동 하얏트호텔) LL층', '02-799-8274', 'https://seoul.grand.hyatt.com/ko/hotel/dining.html', '매일 18:00 ~ 01:00', '6호선 이태원 2번 출구', '덴카이세트 시그니처 메뉴 야키토리');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6790', '열해', '용산구 ', '서울특별시 용산구 이촌로 248 (이촌동)', '02-793-1188', NULL, '매일 11:30 ~ 14:30 / 17:30 ~ 22:30', '4호선 경의중앙선 이촌역 3-1번 출구', '열해정식 새우튀김정식 모둠생선회 덮밥류');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12884', '청', '용산구 ', '서울특별시 용산구 한남대로20길 47-24 (한남동) 리플레이스 D동 2층', '02-720-3396', NULL, '매일 11:30~15:00 (Last order 14:30) / 17:30~22:00 (Last order 21:30)', '6호선 한강진 23번 출구', '해삼탕 왕새우 삼선 자장면');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12989', '와세다야', '용산구 ', '서울특별시 용산구 이촌로88길 3  (이촌동)', '02-796-0608', NULL, '매일 16:00 ~ 22:00', '4호선 경의중앙선 이촌역 3-1번 출구', '특상우설 천엽사시미 안심 항정살소금구이');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13046', '은성집', '용산구 ', '서울특별시 용산구 한강대로84길 11-16 (남영동)', '02-797-2855', NULL, '11:30 ~ 13:30 / 16:30 ~ 22:00', '4호선 숙대입구역 4번 출구', '스테이크부대찌개');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('18251', '마칸 [임시휴업]', '용산구 ', '서울 용산구 우사단로10길 52 (한남동)', '02-6012-2231', NULL, '매일 10:30-22:00', '6호선 이태원역 3번 출구 도보 5분', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('23674', '지노스 뉴욕 피자', '용산구 ', '서울 용산구 녹사평대로40길 46 (이태원동) 2층', '02-792-2234', 'https://www.instagram.com/ginospizza/', '평일 11:30 - 15:00 / 17:00 - 22:00 토요일 11:30 - 22:00 / 일요일 11:30 - 21:00', '6호선 녹사평역 1번 출구', '브루클린스베스트 시금치 알프레도 뉴욕슈프림');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('28687', '샘라이언스', '용산구 ', '서울 용산구 이태원로27가길 50 (이태원동) 2층', '02-749-7933', 'https://www.facebook.com/SamryansItaewon/', '18:00 - 익일 05:00', '6호선 이태원역 1번 출구', '페퍼로니 피자 마르게리따 피자');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('29956', 'PB플러스', '용산구 ', '서울 용산구 우사단로 19-1 1층', '070-4203-5455', 'https://halal-restaurant-186.business.site/?utm_source=gmb&utm_medium=referral', '매일 12:00~22:30', '6호선 이태원역 3번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('29979', '미스터케밥 이태원본점', '용산구 ', '서울 용산구 이태원로 192 (이태원동)', '02-792-1997', 'http://www.mrkebab.co.kr/', NULL, '6호선 이태원역 3번 출구', '닭고기 터키 케밥 양고기 터키 케밥');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('40794', '더베이커스테이블 (The Baker''s Table)', '용산구 ', '서울 용산구 녹사평대로 244-1 (이태원동)', '070-7717-3501', 'http://www.thebakerstable.co.kr ', '월~토 08:00 ~ 21:00 일요일 08:00 ~ 20:00', '6호선 녹사평역 2번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('41789', '부기우기', '용산구 ', '서울 용산구 회나무로 21 (이태원동) 2층', NULL, 'https://www.instagram.com/boogiewoogieseoul/', '17:00 ~ 02:00', '6호선 녹사평역 2번출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('41790', '펫사운즈', '용산구 ', '서울 용산구 회나무로 21 (이태원동) 3층', '070-8648-3650', 'https://www.instagram.com/petsoundsmusicpub/', '월~목 17:30 ~ 02:00 금~일 17:00 ~ 03:00', '6호선 녹사평역 2번출구', '피자 칠리치즈프라이 치킨텐더');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('42317', '[백년가게] 진미식당 ', '용산구 ', '서울 용산구 백범로90길 46 (문배동)', '02-703-6842', 'https://munbaejinmi.modoo.at', NULL, NULL, '콩국수 청국장 등');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4549', '청일집', '은평구 ', '서울 은평구 통일로 850 (불광동 연서시장) 연서시장 A동 1층 24호', '02-732-2626', NULL, '평일 10:00~23:00 주말 11:00~23:00', '3 6호선 연신내역 2번 출구', '빈대떡');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('42103', '1인1잔', '은평구 ', '서울 은평구 연서로 534 (진관동)', '02-355-1111', 'https://www.instagram.com/1in_official/', '1 2 3 6층 10:00 ~ 21:00 4 5층 11:00 ~ 20:00', '3호선 6호선 연신내역 3번출구에서 100m 직진- 7211 701번 버스 승차- ''하나고 진관사 삼천사 입구''에서 하차 후 도보 150m', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('42321', '[백년가게] 시골감자국', '은평구 ', '서울 은평구 응암로 174 (응암동) 1층 2층', '02-302-8484', 'https://www.instagram.com/sigol.gamjatang', NULL, NULL, '감자탕 뼈찜 등');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('42367', '[백년가게] 싸리골', '은평구 ', '서울 은평구 서오릉로 160 (갈현동) 1층', '02-355-3086', NULL, '월 ~ 토 11:30 ~ 22:30 일요일 16:00 ~ 22:30', '구산역 4번출구', '생삼겹살 국물돼지갈비');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11880', '부산식당', '종로', '서울특별시 종로구 인사동11길 12 (관훈동)', '02-733-5761', NULL, '11:30 ~ 22:00', '3호선 안국역 6번 출구', '생대구탕 생두부');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11960', '뽐모도로', '종로', '서울특별시 종로구 새문안로9길 19-1 (당주동)', '02-722-4675', NULL, '평일 11:20 ~ 21:00 (Break Time 15:00 ~ 17:00)', '5호선 광화문역 7번 출구', '로마풍 스파게티 새우와 마늘 크림소스의 스파게티');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13132', '깃대봉냉면', '종로구', '서울특별시 종로구 지봉로12길 3 (숭인동)', '02-762-4407', NULL, '10:30 ~ 20:30', '6호선 창신역 4번 출구', '냉면 만두');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13086', '평안도만두집', '종로구', '서울특별시 종로구 새문안로3길 30 (내수동)', '02-723-6592', NULL, '11:00 ~ 21:30', '5호선 광화문역 1번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14116', '나무사이로', '종로구', '서울특별시 종로구 사직로8길 21', '070-7590-0885', 'https://www.namusairo.com/', '매일 11:00~21:00', '3호선 경복궁 7번 출구', '흑당카푸치노 잠이 솔솔 숙면차 티라미수');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11357', '깡장집', '종로구', '서울특별시 종로구 새문안로5길 19 (당주동) 지하 1층 57 58호', '02-720-8688', NULL, '09:00 ~ 22:00', '5호선 광화문역 1번 출구', '일반한식 깡장 청국장 보쌈정식 모둠전');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12460', '소선재', '종로구', '서울특별시 종로구 삼청로 113-1 (삼청동)', '02-730-7002', NULL, '11:30 ~ 14:30 / 17:00 ~ 21:00', '3호선 안국역 1번 출구', '떡갈비와 식사 장아찌 보쌈과 식사 보리굴비와 식사 간장게장과 식사');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12743', '혜화칼국수', '종로구', '서울특별시 종로구 창경궁로35길 13 (혜화동)', '02-743-8212', NULL, '11:00 ~ 14:40 / 16:00 ~ 22:00', '4호선 혜화역 4번 출구', '녹두빈대떡 국시 문어');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14698', '만수의정원', '종로구', '서울특별시 종로구 북촌로5가길 35-2 (소격동)', '02-720-8900', NULL, '11:00 ~ 21:00', '3호선 안국역 1번 출구', '일반한식');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12189', '삼청동수제비', '종로구', '서울특별시 종로구 삼청로 101-1  (삼청동)', '02-735-2965', 'http://www.삼청동수제비.kr', '11:00 ~ 21:00', '3호선 안국 1번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12288', '서린낙지', '종로구', '서울특별시 종로구 종로 19 (종로1가)', '02-735-0670', NULL, '11:30 ~ 15:00 / 17:00 ~ 22:00', '5호선 광화문역 34번 출구 1호선 종각역 1번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13081', '명륜손칼국수', '종로구', '서울특별시 종로구 혜화로 45-5 (명륜1가)', '02-742-8662', NULL, '11:30 - 13:30', '4호선 한성대입구 5번 출구', '손칼국수 수육 문어 설렁탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13105', '어바웃샤브', '종로구', '서울특별시 종로구 대학로12길 61 (동숭동)', '02-747-7730', 'http://www.shabu.co.kr', '10:30 ~ 22:00 (Last Order 21:00까지)', '4호선 혜화 2번 출구', '쇠고기샤브칼국수 쇠고기샤브세트 우삼겹철판구이');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14148', '반짝반짝빛나는', '종로구', '서울특별시 종로구 인사동길 28-1 (관훈동)', '02-738-4525', NULL, '10:00 - 23:00', '1호선 종각 3번 출구', '카페');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6383', '마미청국장', '종로구', '서울특별시 종로구 동숭4나길 2 (동숭동)', '02-765-0842', 'http://cityfood.co.kr/h9/mamicheonggugjang', '07:30 ~ 22:30', '4호선 혜화 1번 출구', '청국장 버섯청국장 김치청국장 버섯불고기 버섯모둠');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6156', '뉘조', '종로구 ', '서울 종로구 인사동14길 27', '02-730-9301', 'http://www.newijo.com/', '평일 11:30 ~ 21:30 주말 11:30 ~ 21:00', NULL, '우슬초 익모초 구절초 싱아');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6808', '감촌', '종로구 ', '서울특별시 종로구 종로 19 (종로1가)', '02-733-7035', NULL, '09:30~22:00', '5호선 광화문 4번 출구', '순두부찌개 굴순두부 순두부찌개특 차돌순두부 해물된장찌개 버섯김치찌개');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12010', '처마끝하늘풍경', '종로구 ', '서울특별시 종로구 인사동14길 24-2 (관훈동)', '02-734-3337', NULL, '10:00 ~ 15:00 / 17:00 ~ 22:00', '3호선 안국역 6번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12725', '두레', '종로구 ', '서울 종로구 인사동4길 5-24', '02-732-2919', 'http://www.foodsidae.com/dure', '매일 12:00~22:00 Break Time 16:00~17:00', '3호선 안국역 6번출구 인사동방향 10분거리', '작은두레상 큰두레상 으뜸두레상');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13863', '파올로데마리아', '종로구 ', '서울 종로구 자하문로 242 (부암동) 1층', '02-599-9936', 'https://blog.naver.com/paolodemaria3', '화~일 11:30 ~ 15:00 / 17:30 ~ 22:30', NULL, '레몬크림 새우 가레띠 생면파스타 갑오징어 딸리아텔레 카라바조코스');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('1211', '로마네꽁띠', '종로구 ', '서울 종로구 북촌로5나길 83-6', '02-722-1633', NULL, '월~금 11:30~22:30 (매일 15:00~17:00 Break time) 토요일 17:00~22:00', '3호선 안국역 2번 출구', '알리오올리오 파스타 꼬꼬뱅 등심스테이크');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('1629', '송죽헌 ', '종로구 ', '서울 종로구 율곡로6길 17', '02-763-4234', NULL, '평일 12:00~22:00 (Break time 14:00~18:00)', '3호선 안국역 4번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4310', '동북화과왕', '종로구 ', '서울 종로구 종로46길 11', '02-745-5168', NULL, '매일 11:00~24:00', '1호선 동대문역 56번 출구', '양꼬치 양갈비살 훠궈');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5652', '하누소(인사점)', '종로구 ', '서울 종로구 인사동4길 18 (낙원동 로담코 인사빌딩)', '02-739-9990', 'http://www.hanuso.com', '11:00 - 22:00', '3호선 안국역 5번 출구 5호선 종로3가역 5번 출구', '왕갈비탕 한우왕양념갈비 한우꽃등심');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6830', '손칼국수', '종로구 ', '서울 종로구 혜화로 10-5', '02-764-7947', NULL, '월~목 12:00~14:00 / 18:00~21:00 금요일 12:00~14:00', '4호선 혜화역 4번 출구', '칼국수 생선전 고추전 빈대떡');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('7434', '하나로회관', '종로구 ', '서울 종로구 인사동5길 25 (인사동 하나로빌딩)', '02-732-7451', 'http://www.하나로회관.kr/', '11:30 ~ 15:00 / 17:00 ~ 21:30', '1호선 종각 3번출구 도보3분', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('10200', '단풍나무집', '종로구 ', '서울 종로구 삼청로 130', '02-730-7461', 'http://www.mapletreehouse.co.kr/', '매일 11:30~22:00 (Last Order 21:30)', '1호선 시청역 4번 출구 직진 서울신문사 앞에서 마을버스 11번버스 승차 후 교육과정평가원 하차', '한우 숙성 등심 양념갈비 단풍 불고기 오겹살');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11691', '안집', '종로구 ', '서울 종로구 북촌로 6-6', '02-3672-7070', NULL, '10:00 ~ 23:00 (KST)', '3호선 안국역 3번 출구', '점심정식 저녁정식 청국장정식 된장찌개정식');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12731', '우정낙지', '종로구 ', '서울 종로구 삼일대로17길 46 (관철동 신양빌딩) 2층', '02-720-7991', NULL, '10:00 ~ 22:30', '1호선 종각역 4번 출구', '낙지');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13886', '두오모', '종로구 ', '서울특별시 종로구 자하문로16길 5 (효자동)', '02-730-0902', 'https://www.instagram.com/hyojadongduomo/', '월~토 12:00~14:30 / 18:00~21:30', '3호선 경복궁역 3번 출구', '두오모수프 실버니들 티 제주 레몬 소금의 담백한 하얀콩 새우 파스타');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13922', '유림낙지', '종로구 ', '서울특별시 종로구 종로 24-8  (서린동)', '02-723-1741', NULL, '11:00 - 02:00', '5호선 광화문 5번 출구  1호선 종각 6번 출구', '낙지');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('26190', '낙원떡집', '종로구 ', '서울 종로구 삼일대로 438', '02-732-5579', NULL, '매일  08:00 - 22:00', '135호선 종로3가역 5번출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('27206', '능라밥상', '종로구 ', '서울 종로구 사직로2길 14 (행촌동 권율장군집터)', '02-747-9907', 'https://blog.naver.com/reeran2000', '10:30 - 22:30', '3호선 독립문역 3번 출구', '평양냉면 평양온반 어복쟁반');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('30870', '별난오리', '종로구 ', '서울 종로구 종로46길 12 (창신동) 2층', '+82-2-765-5292', 'http://instagram.com/ddmspecialduck', '월~토 11:00 ~ 23:00', '14호선 동대문역 7번 출구', '오리구이 별난오리탕 전기훈제오리구이');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('30871', ' 발우공양', '종로구 ', '서울 종로구 우정국로 56 (견지동)', '02-733-2081', 'http://balwoo.or.kr/', '매일 11:30 ~ 15:00 / 18:00 ~ 21:30', '3호선 안국역 6번 출구', '선식 원식 마음식');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('31013', '두르가 본점 ', '종로구 ', '서울 종로구 종로 19 (종로1가 르메이에르종로타운1)', '02-733-4786', 'http://www.durga.co.kr/', '매일 10:00 ~ 14:00 / 17:00 ~ 21:00', '1호선 종각역 1번 출구 5호선 광화문역 4번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('31015', '두르가 종각점', '종로구 ', '서울 종로구 종로8길 5 (관철동) 2층', '02-720-4786', 'http://www.durga.co.kr/', '10:30 ~ 23:00', '1호선 종각역 4번 출구  2호선 을지로입구역 3번 출구', '난 2000 ~ 4000원 커리 10000 ~ 13000원');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('38558', '하이버 (HIVER)', '종로구 ', '서울 종로구 옥인6길 2 (누상동) 1층 HIVER', '02-6015-7988', 'http://www.instagram.com/hiver.breadandcoffee', '11:00 ~ 18:00', '3호선 경복궁역 5호선 광화문역 1호선 시청역 종로 09번 마을버스 종점에서 하차', '앙버터 3500원 꿀바게트 3500원 무화과 깜빠뉴 3600원 버터프레첼 3800원');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('39310', '서울 커피 익선점', '종로구 ', '서울 종로구 수표로28길 33-3 (익선동)', '02-6085-4890', 'https://www.instagram.com/seoulcoffee1945/', '11:00 ~ 22:00', '135 호선 종로 3가역 4번 출구에서 150m', '앙버터식빵 4500원 초코 꽈배기 2500원 비엔나 밀크티 6500원 인절미티라미수 7500원 큐브 아이스크림 2000원');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('42309', '[백년가게] 종가집', '종로구 ', '서울 종로구 인사동길 15-13 (인사동)', '02-734-0987', 'https://www.instagram.com/insajonggajib/', '11:00 ~ 22:00', NULL, '한우등심 곱창구이 곱창전골 등');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('42371', '[백년가게] 포도나무', '종로구 ', '서울 종로구 사직로 108-3 (내자동)', '02-732-1220', NULL, '10:00 ~ 22:00 14:30 ~ 17:30 (브레이크타임)', '경복궁역 7번 출구', '짱뚱어탕 매생이+낙지 낙지전 등');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2495', '대장장이화덕피자집', '종로구 ', '서울 종로구 북촌로 42-4 (가회동)', '02-765-4298', NULL, '매일 11:30 ~ 21:30', '3호선 안국역 2번 출구', '마르게리따 고르곤졸라 루꼴라 피자 감베리 피자');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2663', '궁나라냉면묵밥', '종로구 ', '서울 종로구 지봉로12길 6 (숭인동 등원빌딩)', '02-744-4701', NULL, '10:00 ~ 21:00', '6호선 창신역 4번 출구', '묵밥 물냉면 왕만두');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2793', '석파랑', '종로구 ', '서울특별시 종로구 자하문로 309 (홍지동)', '02-395-2500', 'http://www.seokparang.co.kr', '12:00 ~ 15:00 / 18:00 ~ 22:00', '3호선 경복궁역 3번출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4225', '다락정', '종로구 ', '서울 종로구 삼청로 131-1', '02-725-1697', NULL, '매일 11:00~21:30', '3호선 안국역 1번 출구', '김치만두전골 토장만두전골 만두국 비지정식');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5504', '큰기와집', '종로구 ', '서울 종로구 북촌로5길 62 (소격동)', '02-722-9024', 'https://keunkiwajip.modoo.at/', '11:30 - 21:00  15:00 - 17:00 (브레이크타임)', '3호선 안국역 1번 출구', '간장게장 양념게장 꽃게장 비빔밥 인삼 갈비찜');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6223', '카페테라스', '종로구 ', '서울 종로구 삼청로 102-2 (삼청동)', '02-723-8250', NULL, '11:00 ~ 23:30', '3호선 안국 2번 출구', '커피 와플');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('7241', '클럽에스프레소', '종로구 ', '서울 종로구 창의문로 132', '02-764-8719', 'http://www.clubespresso.co.kr/', '매일 09:00 ~ 22:00', '3호선 경복궁역 2번 출구', '에스프레소 드립커피 에스프레소베리에이션');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('10728', '나마스테', '종로구 ', '서울특별시 종로구 지봉로 18 (숭인동)', '02-2232-2286', NULL, '매일 11:00 ~ 23:00', '16호선 동묘앞역 5번 출구', '커리 탄두리치킨 라씨 램마크니 달밧탈커리 ');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('10934', '광화문집', '종로구 ', '서울특별시 종로구 새문안로5길 12 (당주동)', '02-739-7737', NULL, '09:00 ~ 22:00', '5호선 광화문역 1번 출구', '김치찌개 계란말이 김치찌개 제육볶음');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11450', '남도식당', '종로구 ', '서울 종로구 종로3길 42', '02-734-0719', NULL, '10:00 ~ 14:00 / 16:00 ~ 22:00', '5호선 광화문역 4번 출구', '연탄삼겹살 연탄소불고기 육회 병어찜 김치전골 ');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11706', '유진식당', '종로구 ', '서울 종로구 종로17길 40 탑골공원 정문 반대편(북문) 앞', '02-764-2835', NULL, '11:30~14:30 / 16:00~21:00', '1호선 종로3가역 5번 출구', '설렁탕 돼지머리국밥 물냉면 비빔냉면');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13209', '목포집', '종로구 ', '서울 종로구 삼일대로32길 55-4 (운니동)', '02-722-0976', NULL, '10:00 - 22:00', '1 3 5호선 종로3가역 6번 출구', '삼합 홍어회 홍어튀김');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13649', '할머니칼국수', '종로구 ', '서울특별시 종로구 돈화문로11다길 14-2 (돈의동)', '02-744-9548', NULL, '11:00 ~ 20:00 (재료 소진 시 마감)', '1호선 종로3가역 6번출구', '칼국수');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13678', '한라의집', '종로구 ', '서울특별시 종로구 새문안로9길 29-1 (당주동)', '02-737-7484', NULL, '11:30 ~ 22:00', '5호선 광화문역 1번 출구', '생선회');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('20006', '서촌전통순대국', '종로구 ', '서울 종로구 사직로9가길 8 (필운동)', '02-735-0122', NULL, '평일 10:30 - 21:00 / 주말 10:30 - 20:00 * Break time 15:00 - 17:00', '3호선 경복궁역 1번 출구에서 도보 약 7분', '순대국 뼈해장국 모듬순대 모듬전골');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('25377', '학림다방', '종로구 ', '서울 종로구 대학로 119 (명륜4가) 2층', '02-742-2877', 'http://hakrim.pe.kr/', '매일 10:00 - 23:00', '4호선 혜화역 3번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('26193', '순희네 반찬', '종로구 ', '서울 종로구 창경궁로 88 (예지동)', '02-2279-1885', NULL, '매일 08:00 - 20:00', '1호선 종로5가역8번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('30887', '깔리', '종로구 ', '서울 종로구 대학로11길 43 (명륜4가) 2층', '02-747-5050', NULL, '매일 11:30 ~ 15:00 / 17:00 ~ 21:10', '4호선 혜화역 4번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('30894', '꾸스꾸스', '종로구 ', '서울 종로구 자하문로5길 16-2 (체부동)', '02-6357-5762', NULL, '매일 11:30 - 23:00', '3호선 경복궁역 2번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3188', '아따블르 ', '종로구 ', '서울 종로구 팔판길 29', '02-736-1048', NULL, '월~토 12:00 ~ 15:00 / 18:00 - 22:30', '3호선 안국역 2번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3282', '지화자', '종로구 ', '서울 종로구 자하문로 125 (청운동)', '02-2269-5834', 'http://www.jihwajafood.co.kr/', '10:00 - 21:30', '3호선 경복궁역 3번출구 1711 7016 7018번 버스 이용', '● 풀코스       -장금만찬     - 진어별만찬     - 진어만찬  ● 세트메뉴     - 소갈비수라     - 전복초수라     - 해물신선로수라');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3496', '황생가칼국수', '종로구 ', '서울 종로구 북촌로5길 78 (소격동)', '02-739-6334', 'http://황생가칼국수.com/', '매일 11:00 ~ 21:30', '3호선 안국역 2번 출구', '사골칼국수 버섯전골 왕만두국 왕만두');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4951', '로씨니', '종로구 ', '서울 종로구 북촌로 18', '02-766-8771', NULL, '평일 12:00 ~ 15:00 / 17:00 ~ 22:00', '3호선 안국역 2번 출구', '안심스테이크 양갈비석쇠구이');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6805', '자하손만두', '종로구 ', '서울 종로구 백석동길 12', '02-379-2648', NULL, '매일 11:00~21:30', '3호선 경복궁역 3번 출구', '만두국 떡만두국 만두전골');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6307', '신안촌', '종로구 ', '서울특별시 종로구 사직로12길 8 (내자동)', '02-725-7744', 'http://www.신안촌.kr/', '평일 11:30 ~ 15:00 / 17:00 ~ 22:00 토요일 11:30 ~ 20:00', '3호선 경복궁역 7번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6822', '사발', '종로구 ', '서울특별시 종로구 사직로8길 34 경희궁의아침3단지 1층 142호 (내수동)', '02-720-4845', 'http://sabal.modoo.at/', '평일 11:30 ~ 21:00  주말 공휴일 11:30 ~ 20:00', '3호선 경복궁역 7번 출구', '퓨전한식( 능이버섯닭곰탕 흑임자 콩국수 닭국수) ');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('7890', '뿌자', '종로구 ', '서울 종로구 종로 327 (창신동)', '02-744-2199', NULL, '매일 11:00 ~ 23:00', '1호선 동묘앞역 8번 출구', '버터치킨 치킨티카 마살라 머턴 마살라');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('8008', '일품당', '종로구 ', '서울 종로구 세종대로23길 25', '02-733-4949', 'https://ilpumdang.modoo.at/', '매일 11:30~15:00 / 17:00~22:00', '5호선 광화문역 7번 출구', '일품샤브샤브 일품스키야끼 해물샤브샤브 일품와규샤브샤브');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('10259', '온마을', '종로구 ', '서울 종로구 삼청로 127 (삼청동)', '02-738-4231', NULL, '매일 11:00~21:00', '3호선 안국역 1번 출구', '두부버섯전골 두부김치전골 콩두부젓국찌개 제육볶음');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('10878', '경인미술관 전통다원', '종로구 ', '서울특별시 종로구 인사동10길 11-4 (관훈동) 경인미술관', '02-730-6305', 'http://www.kyunginart.co.kr', '매일 11:00 ~ 21:20', '3호선 안국역 6번 출구', '전통차 잎차 건강차 미용차');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11529', '산모퉁이 ', '종로구 ', '서울 종로구 백석동길 153', '02-391-4737', 'http://www.sanmotoonge.co.kr ', '평일 11:00 ~ 19:00 주말 11:00 ~ 21:00', '3호선 경복궁역 3번 출구', '음료(7천원~9천원) 쿠키(7천원) 조각케이크(7천원)');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12120', '열차집 ', '종로구 ', '서울 종로구 종로7길 47 (공평동)', '02-734-2849', 'http://trainhouse.blogspot.kr/ ', '평일 11:00~23:00   토요일 14:00~22:00', '1호선 종각역 2번 출구 도보 5분 소요', '원조빈대떡 굴전 해물파전 조개탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13236', '눈나무집', '종로구 ', '서울특별시 종로구 삼청로 136-1 (삼청동)', '02-739-6742', NULL, '11:00 ~ 21:00', '3호선 안국역 1번 출구', '떡갈비 녹두빈대떡 두부김치 평양만두 김치말이국수');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13252', '차마시는뜰', '종로구 ', '서울특별시 종로구 북촌로11나길 26 (삼청동)', '02-722-7006', NULL, '평일 10:00 ~ 21:00 주말 10:00 ~ 21:30', '3호선 안국 1번 출구', '전통 한옥을 개조');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13622', '안성또순이', '종로구 ', '서울특별시 종로구 경희궁길 18 (신문로2가)', '02-733-5830', NULL, '평일 : 11:00 ~ 22:00 주말 : 11:00 ~ 21:00', '5호선 광화문 1번 출구', '일반한식');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13896', '여자만', '종로구 ', '서울특별시 종로구 인사동14길 13 (관훈동)', '02-723-1238', 'http://www.여자만미래.com', '평일 : 11:00 ~ 22:00 주말 : 11:00 ~ 21:30', '1호선 종각 3번 출구', '벌교참꼬막 양념참꼬막 정식 모둠전');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13910', '피아자도르', '종로구 ', '서울특별시 종로구 새문안로 68 (신문로1가)', '02-2122-2692', NULL, '08:00 ~ 20:00', '5호선 광화문역 6번 출구', '샌드위치 ');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14336', '포항식당', '종로구 ', '서울 종로구 돈화문로5가길 31-1 (돈의동)', '02-765-6487', NULL, '15:00 ~ 24:00', '1호선 종로3가역 4번 출구', '일반한식');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14492', '커피투어', '종로구 ', '서울특별시 종로구 경희궁2길 12 (내수동)', '02-733-6611', 'http://www.coffeetour.co.kr/', '월~금 08:00 ~ 17:00 / 일 10:00 ~ 18:00', '5호선 광화문역 1번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14630', '원조할머니떡볶이집', '종로구 ', '서울특별시 종로구 자하문로15길 13 (통인동)', '02-725-4870', 'https://mo1067.modoo.at/', '매일 08:00~20:00', '3호선 경복궁 2번 출구', '기름떡볶이 빈대떡 모둠전');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('23442', '뎁짜이', '종로구 ', '서울 종로구 대학로11길 41-4 (명륜4가)', '02-763-1915', 'https://www.instagram.com/dep_trai_korea/', '매일 11:00 - 22:00', '4호선 혜화역 4번출구', '하노이쌀국수 직화분짜 반미 샌드위치');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('31927', '감꽃당', '종로구 ', '서울 종로구 돈화문로11다길 38 (익선동) 감꽃당', '02-747-3999', NULL, '10:30 ~ 22:00', '135호선 종로3가역 4번 출구', '에그타르트 3500원');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('38096', '루프트 커피 광화문점', '종로구 ', '서울 종로구 종로 33 (청진동 그랑서울) 1층', '02-2158-7945', 'http://luft.kr', '평일 08:00 ~ 20:30 주말 10:00 ~ 18:00', '1호선 종각역 1번 출구에서 92m', '아메리카노 (루프트 서울 6500원 하와이 카우 6500원) 카페라떼 7000원 카페 바닐라 7000원');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('38318', '카페 레이어드 안국점', '종로구 ', '서울 종로구 북촌로2길 2-3 (재동)', NULL, 'https://www.instagram.com/cafe_layered', '평일 08:00 ~ 22:00 주말 10:00 ~ 22:00', '3호선 안국역 2번 출구에서 103m', '플레인 홈메이드 스콘 4800원 딸기 스콘 5200원 얼그레이 스콘 5200원 블루베리 스콘 5200원');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('38783', '카페 하이웨스트 익선점', '종로구 ', '서울 종로구 돈화문로11다길 18 (돈의동)', NULL, 'https://instagram.com/cafe_highwaist?utm_medium=copy_link', '11:00 ~ 22:00', '135호선 종로 3가역 6번 출구에서 119m', '클래식 버터 스콘 4500원 더블 초콜릿 스콘 5500원 딸기 스콘 5500원 솔티카라멜 브라운 치즈스콘 5500원 바질페스토 크림 스콘 5500원 퍼피 케이크 7500원 리치 초코 케이크 8000원');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('39729', '더숲 초소책방', '종로구 ', '서울 종로구 인왕산로 172', '02-735-0206', 'https://chosobooks.com/', '08:00 ~ 22:00', '1020 7022 7212 버스 ''윤동주문학관'' 에서 하차 후 도보 15분 마을버스 09번 종점 ''수성동계곡'' 에서 하차 후 도보 20분', '아메리카노 4900원 에스프레소 4900원 카페라떼 5900원');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('1714', '최대감네', '종로구 ', '서울 종로구 인사동8길 12-3 (경운동)', '02-733-9355', NULL, '매일 11:30 ~ 21:30', '3호선 안국역 56번 출구', '연잎쌈정식 상추쌈밥 연잎 불고기 정식');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3191', '호면당', '종로구 ', '서울 종로구 새문안로 91 (신문로1가 광화문 고려빌딩)', '02-511-9517', 'http://www.homyeondang.com/', '매일 11:00~15:00 / 16:00~21:00', '5호선 광화문역 7번 출구', '호바뤄우 장터라면 비프쌀국수 호탕면');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6880', '인사동 뽕다방', '종로구 ', '서울 종로구 인사동길 30-10', '02-737-5019', NULL, '매일 10:00 - 23:00', '3호선 안국역 5번 출구', '전통 찻집');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6948', '산골막국수', '종로구 ', '서울 종로구 종로56길 5-7', '+82-2-749-6033', NULL, '11:30 ~ 21:00', '1 6호선 동묘앞역 3번 출구', '막국수 만둣국 만두 감자전 모둠전 파전 막국수무침 막국수쟁반 닭무침 닭볶음탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('10754', '더레스토랑', '종로구 ', '서울특별시 종로구 삼청로 54 (소격동)', '02-735-8441', 'http://therestaurant.co.kr/', '매일 10:00 ~ 22:00 1F 카페 매일 12:00 ~ 15:00 / 18:00 ~ 22:00 2F 레스토랑', '3호선 안국역 12번 출구', '시푸드토마토파스타 그린티케이크');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12478', '조금', '종로구 ', '서울특별시 종로구 인사동길 62-4 (관훈동)', '02-734-0783', NULL, '매일 10:30~21:00', '3호선 안국역 6번 출구', '조금솥밥 전복솥밥 양송이솥밥 숯불꼬치구이');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12508', '지리산', '종로구 ', '서울 종로구 북촌로11나길 21 (삼청동)', '02-723-4696', NULL, '매일 11:30~22:00', '3호선 안국역 2번 출구', '삼신봉 정식 노고단 정식 두부전골 평양식콩비지');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13183', '베이징코야', '종로구 ', '서울특별시 종로구 율곡로2길 29-1 (수송동)', '02-313-5292', 'http://www.베이징코야.com/', '매일 11:30 ~ 22:00', '5호선 광화문 2번 출구 3호선 안국역 6번 출구', '북경오리구이 오리고기 마늘소스 볶음 돼지고기 탕수육');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13258', '이조 ', '종로구 ', '서울 종로구 인사동3길 8 (인사동)', '02-730-7610', NULL, '매일 09:00~22:00', '5호선 종로3가역 5번 출구', '점심한정식 저녁한정식 이조한정식 연잎밥정식');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13733', '빈스빈스', '종로구 ', '서울 종로구 삼청로9길 3-1 (삼청동)', '02-736-7799', 'http://www.beansbins.com', '일~목 :09:30~22:30  금 토 : 09:30~23:00', '3호선 안국 1번 출구', '커피');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14169', '옴', '종로구 ', '서울 종로구 새문안로 103 (신문로1가 선광빌딩)', '02-723-4848', 'http://www.omfood.kr', '매일 11:00 ~ 22:00', '5호선 광화문역 7번 출구', '모듬탄두리바비큐 옴미니세트 양고기티카 치킨멀라이케밥');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14509', '중국', '종로구 ', '서울특별시 종로구 자하문로33길 2 (청운동)', '02-737-8055', NULL, '월~토 10:00 ~ 13:00', '3호선 경복궁역 2번 출구', '짜장면 짬뽕 탕수육 짬뽕밥');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14546', '가스트로통', '종로구 ', '서울특별시 종로구 자하문로6길 11-36 (통의동)', '02-730-4162', 'https://www.gastrotong.com/', '11:30~15:00  (Last order 14:00) 17:30~22:30  (Last order 21:00)', '3호선 경복궁 3번 출구', '유럽식');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14605', '인사동 항아리수제비', '종로구 ', '서울특별시 종로구 인사동8길 14-1 (관훈동)', '02-735-3361', 'http://cityfood.co.kr/h.php?id=32026', '매일 11:30 ~ 21:00 Break Time 평일 15:30~17:00', '3호선 안국역 6번 출구 5호선 종로3가역 5번 출구', '항아리수제비 해물파전 골뱅이');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('26191', '동양방아간', '종로구 ', '서울 종로구 자하문로40길 77 (부암동)', '02-379-6987', NULL, '09:00 ~ 17:00', '홍제역 2번 출구', '흑임자인절미 3000원 쑥인절미 3000원');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('38570', '서촌 대하식당', '종로구 ', '서울 종로구 자하문로7길 27 (체부동)', '02-734-9503', NULL, '16:00 ~ 22:00 (마지막 주문 21:00)', '3호선 경복궁역 2번 출구에서 353m', '삼겹살 600g 36000원');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('1097', '커피방앗간', '종로구 ', '서울 종로구 북촌로5가길 8-11', '02-732-7656', NULL, '매일 08:30~23:00', '3호선 안국역 2번 출구에서 약 600m', '커피(4천원~6천원) 핸드드립커피(6천원~7천원) 토스트(5천원) 와플(9천원)');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3630', '비원손칼국수', '종로구 ', '서울 종로구 창덕궁1길 9-1', '02-744-4848', NULL, '매일 11:00 ~ 21:00', '3호선 안국역 3번 출구', '칼국수 떡만두국 왕만두 만두전골');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4214', '된장예술과술', '종로구 ', '서울 종로구 삼일대로15길 20 (관철동)', '02-733-4516', NULL, '매일 11:00 ~ 23:00', '1호선 종각역 4번 출구', '된장정식 순녹두빈대떡 간장게장정식 양념게장정식');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4459', '잔치집', '종로구 ', '서울 종로구 인사동12길 12-3', '02-732-0322', NULL, '매일 11:00~22:00', '3호선 안국역 6번 출구', '잔치상 소담밥상 베플상');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4912', '돈화문칼국수', '종로구 ', '서울 종로구 돈화문로 60', '02-743-7339', NULL, '평일 11:00~19:00 토 11:00~15:00', '1호선 종로3가역 7번 출구', '해물칼국수 사골칼국수 검은콩국수 사골만둣국');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6591', '두가헌', '종로구 ', '서울특별시 종로구 삼청로 14 (사간동)', '02-3210-2100', 'http://www.dugahun.com', '12:00 ~ 22:00', '3호선 안국역 6번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12404', '영춘옥', '종로구 ', '서울 종로구 돈화문로5가길 13 (돈의동)', '02-765-4237', NULL, NULL, '1호선 종로3가역  2-1번 출구', '꼬리곰탕 곰탕 해장국 편육');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13220', '까델루뽀', '종로구 ', '서울 종로구 자하문로16길 5-5 (효자동)', '02-734-5233', 'https://blog.naver.com/zerv0', '월~토 12:00~15:00 (Last Order 13:30) / 18:00~22:00 (Last Order 20:20)', '3호선 경복궁역 3번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13362', '알바이신', '종로구 ', '서울 종로구 혜화로 18 (혜화동)', '02-741-5841', NULL, '17:00 ~ 21:00', '4호선 혜화역 4번 출구', '빠에야 마리스코스 아로스 네그로 엔살라다 데 알바이신 알본디가스');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14223', '한국문화정품관', '종로구 ', '서울 종로구 돈화문로11가길 99 (운니동 한국문화정품관)', '02-765-5634', NULL, '10:30 ~ 18:30', '3호선 안국역 4번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('39309', '갤러리소연카페', '종로구 ', '서울 종로구 서순라길 149 (권농동) 1층', '02-546-2498', NULL, '평일 10:00 ~ 22:00 토요일 11:00 ~ 22:00 일요일 11:00 ~ 19:00', '135 호선 종로 3가역 7번 출구에서 527m', '소연팥빙수 12000원 소연자몽실론티 6500원 소연단팥죽(계절메뉴) 8000원 아메리카노 5000원');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('39733', '어쩌다 산책', '종로구 ', '서울 종로구 동숭길 101 (동숭동 현대엘리베이터 빌딩) 지하 1층', '02-747-7147', 'https://www.instagram.com/ujd.promenade/', '12:00 ~ 21:00', '4호선 혜화역 1번 출구에서 227m', '에스프레소 5000원 아메리카노 5500원 라떼 6500원 플랫 화이트 6500원');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('42312', '[백년가게] 옛날집낙원아구찜', '종로구 ', '서울 종로구 삼일대로 436 (낙원동)', '02-741-3621', NULL, '11:30 ~ 22:00', NULL, '아귀찜 아귀탕 해물찜 해물탕 등');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('1779', '한옥 카페 연(緣) ', '종로구 ', '서울 종로구 삼청로 84-3 (삼청동)', '02-734-3009', 'http://instagram.com/cafeyeon', '13:00 ~ 22:30', '3호선 안국역 1번 출구 도보 20분', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2747', '북악정(이상갈비)', '종로구 ', '서울 종로구 평창36길 6 (북악정)', '02-394-2340', NULL, '매일 11:00 ~ 22:00', '4호선 길음 5번출구 버스환승', '북악정 양념갈비 생갈비 한우 꽃등심');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4486', '스시미치루', '종로구 ', '서울 종로구 종로1길 42 (수송동 이마빌딩) 지하 1층', '02-761-4090', NULL, '월~토 12:00 ~ 15:00 / 17:30 ~22:00', '5호선 광화문역 2번 출구', '오마카세 후토마키');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4494', '장원족발', '종로구 ', '서울 종로구 종로 19 (르메이에르종로타운) 1층', '02-734-7230', NULL, '매일 07:00~24:00', '1호선 종각역 1번 출구', '돌솥비빔밥 오징어볶음 떡만두국 족발 감자탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6218', '진아춘 광화문점', '종로구 ', '서울 종로구 새문안로 92 (신문로1가 광화문오피시아)', '02-720-0688', NULL, '월~토 11:00 ~ 14:30 / 17:00 ~ 21:30', '5호선 광화문 6번 출구', '짜장면 고추간짜장 삼선짜장 볶음짜장');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6847', '대련집', '종로구 ', '서울특별시 종로구 종로16길 37 (관수동)', '02-2265-5349', NULL, '11:00 ~ 22:00', '1호선 종로3가 15번 출구', '칼국수 생배추보쌈 모듬전 홍오찜');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11977', '사동면옥', '종로구 ', '서울 종로구 인사동8길 9 (관훈동)', '02-725-1211', NULL, '10:00 ~ 22:00', '5호선 종로3가 5번 출구  1호선 종각 33-1번 출구', '회냉면 만둣국 녹두전 해물파전 모둠전');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12396', '송백식당', '종로구 ', '서울특별시 종로구 새문안로5길 37 (도렴동)', '02-738-1386', NULL, '매일 11:00 ~ 21:30', '3호선 경복궁 6번 출구', '부대찌개 모듬 철판요리 스테이크');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12454', '오수흑두부', '종로구 ', '서울 종로구 인사동8길 12-2 (관훈동)', '02-735-5255', NULL, '매일 12:00 ~ 22:00', '3호선 안국역 5번 출구', '흑두부 보쌈 오수한정식');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12850', '[백년가게] 이문설렁탕', '종로구 ', '서울 종로구 우정국로 38-13 (견지동)', '02-733-6526', 'http://imun.modoo.at/', '08:00 ~ 21:00 일요일 08:00 ~ 20:00', '지하철 1호선 종각역에서 3-1번 출구로 나와서 정면으로 약 200m 걷고 우측 농협 옆 골목으로 30m 앞에 위치', '설렁탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13365', '페르시안궁전', '종로구 ', '서울특별시 종로구 성균관로6길 9 (명륜2가)', '02-763-6050', 'http://www.persianpalace.com', '매일 11:00 ~ 22:00 (라스트오더 21:30)', '4호선 혜화역 4번 출구', '통닭카레정식 페르시안케밥 양갈비카레 데히지킨카레');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13462', '선천', '종로구 ', '서울특별시 종로구 인사동14길 5 (관훈동)', '02-734-5674', NULL, '11:30 ~ 21:00', '3호선 안국역 6번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14522', '산촌', '종로구 ', '서울특별시 종로구 인사동길 30-13 (관훈동)', '02-735-0312', 'http://www.sanchon.com/index.php', '매일 12:00 ~ 20:30', '3호선 안국역 6번 출구', '사찰음식(채식)');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14801', '레트로나파이', '종로구 ', '서울특별시 종로구 팔판길 39 (팔판동)', '02-735-5668', NULL, '11:00 ~ 22:00', '3호선 안국 1번 출구', '디저트카페');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('19415', '통인시장 기름떡볶이', '종로구 ', '서울 종로구 자하문로15길 13 (통인동)', '02-725-4870', 'https://mo1067.modoo.at/', '08:00 ~ 20:00 (점포별 상이)', '3호선 경복궁역 2번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('19657', '효자베이커리', '종로구 ', '서울 종로구 필운대로 54 (통인동)', '02-736-7629', NULL, '08:00 ~ 20:20', '3호선 경복궁역 3번 출구', '콘브래드 어니언크림치즈소보로');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('24706', '만나분식', '종로구 ', '서울 종로구 필운대로1길 4 (필운동)', '02-732-5101', NULL, '10:00 - 20:00', '3호선 경복궁역 1번 출구', '떡볶이 튀김');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('24905', '손맛김밥', '종로구 ', '서울 종로구 자하문로15길 18 (통인동)', '02-722-8389', NULL, '매일 07:00 - 18:00', '3호선 경복궁역 2번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('26192', '비원떡집', '종로구 ', '서울 종로구 북촌로 33-1 (가회동)', '02-765-4928', 'http://www.biwon.net/', '월~토 10:00 - 16:00 일 09:00 - 12:00', '3호선 안국역 2번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('36692', '르블란서', '종로구 ', '서울 종로구 수표로28길 25', '02-766-9951', NULL, '화~토 12:00 - 22:00 / 일 12:00 - 21:30 (break 16:00-17:00)', '135호선 종로 3가역 4번 출구', '로스티드 치킨 (24000) 항정살 스테이크 (23000)');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('281', '통인시장', '종로구 ', '서울 종로구 자하문로15길 18', '02-722-0911', 'http://tonginmarket.co.kr', '통인시장 영업시간 : 7:00 ~ 21:00 ※ 상점에 따라 상이하며 정확한 개점 폐점 시간은 없음  도시락 카페 영업시간 11:00 ~ 17:00 ※ 도시락 카페 엽전 판매는 평일 11:00 ~ 15:00 주말 11:00 ~ 16:00까지', '3호선 경복궁역 2번 출구 → 2번 출구와 3번 출구 사이 도로를 따라 직진', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('1670', '오세계향', '종로구 ', '서울 종로구 인사동12길 14-5 (관훈동)', '02-735-7171', 'http://www.go5.co.kr/', '평일 11:30~21:00 (Break time 15:30 ~ 17:00) 주말 11:30~21:00 (Break time 16:00 ~ 17:00)', '3호선 안국역 6번 출구', '불구이쌈밥 두개장정식 중화볶음우동 순두부강된장비빔밥');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3013', '가화당', '종로구 ', '서울 종로구 삼청로4길 16-1', '02-738-2460', NULL, '평일 13:00~20:00 주말 13:00~21:00', '3호선 안국역 1번 출구', '차 가래떡구이 약과');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4178', '디마떼오', '종로구 ', '서울특별시 종로구 동숭길 29 (동숭동)', '02-747-4444', NULL, '평일 11:30 ~ 15:00 / 16:30 ~ 21:00 주말 11:30 ~ 21:00', '4호선 혜화역 2번 출구', '스페셜 피자 아로또라따 피자');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4250', '영일식당', '종로구 ', '서울 종로구 삼일대로26길 11', '02-742-3213', NULL, '17:00 ~ 22:00', '3호선 종로3가역 6번 출구', '생선회(잡어회백고동구이과매기)');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4537', '청진옥 ', '종로구 ', '서울 종로구 종로3길 32 (청진동 청진빌딩) 1층', '02-735-1690', 'http://www.cheongjinok.com/', NULL, '1호선 종각역 1번 출구', '해장국 안주국 모듬수육');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4813', '포탈라', '종로구 ', '서울 종로구 청계천로 99 (관철동 수표교빌딩)', '02-318-0094', 'http://www.potala.co.kr/', '매일 11:00 ~ 22:00', '23호선 을지로3가 2번 출구', '툭빠 데룩 탈라 누들 덴툭 초우만');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5128', '봉추찜닭 대학로점', '종로구 ', '서울 종로구 대학로11길 27 (명륜4가)', '02-745-6981', 'http://www.bongchu.com/', '매일 11:00~22:00', '4호선 혜화역 4번 출구', '봉추찜닭');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6756', '연지얼큰한동태국', '종로구 ', '서울특별시 종로구 종로31길 8-1 (종로5가)', '02-763-9397', NULL, '11:00 ~ 22:00', '1호선 종로5가역 1번 출구', '한식(동태국) ');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11075', '들풀', '종로구 ', '서울 종로구 대명1길 24 (들풀)', '02-745-9383', NULL, '매일 11:30~15:00 / 16:30~21:30', '4호선 혜화역 4번 출구', '들풀정식 달맞이정식');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11334', '한과채  ', '종로구 ', '서울 종로구 인사동10길 13', '02-720-2802', 'http://blog.naver.com/kts1403', '매일 11:30~14:30 / 17:00~21:00', '3호선 안국역 6번 출구', '채식뷔페');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12282', '놋그릇가지런히 놋이', '종로구 ', '서울특별시 종로구 자하문로13길 3 (통인동)', '02-736-6262', 'http://www.noshi.co.kr/', '10:00 ~ 19:00', '3호선 경복궁역 2번출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12561', '카페 로쏘', '종로구 ', '서울 종로구 삼청로 81-12', '02-722-2622', NULL, '11:30 ~ 21:00', '3호선 안국역 2번 출구', '디저트카페');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13228', '신옛찻집 ', '종로구 ', '서울 종로구 인사동길 47-8 (관훈동)', '02-732-5257', 'http://www.menupan.com/Restaurant/onepage.asp?acode=D102893', '화 - 일 11:00 - 21:00 / 월 10:00 - 19:00', '3호선 안국역 6번 출구', '전통차 전통술 안주');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13324', '타셴', '종로구 ', '서울 종로구 동숭길 113 (동숭동)', '02-3673-4115', 'https://www.instagram.com/cafe_taschen/', '매일 11:00 ~ 22:00', '4호선 혜화역 1번 출구', '샌드위치');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13755', '지대방', '종로구 ', '서울 종로구 인사동길 33 (관훈동)', '02-738-5379', NULL, '10:30 ~ 24:00', '3호선 안국역 6번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13934', 'MK2', '종로구 ', '서울특별시 종로구 자하문로10길 17 (창성동)', '02-730-6420', NULL, '매일 12:00 - 21:00', '3호선 경복궁역 3번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14616', '모녀김밥', '종로구 ', '서울특별시 종로구 동호로 403-23 (예지동)', '02-2264-7668', NULL, '09:30 ~ 21:00', '1호선 종로5가 8번 출구', '김밥');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('24904', '내자땅콩', '종로구 ', '서울 종로구 사직로 111 (내자동)', '02-730-7239', NULL, '11:00 - 18:00 (Break time 12:30 - 13:30)', '3호선 경복궁역 1번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('40936', '천년동안도', '종로구 ', '서울 종로구 수표로 134 (낙원동) 2층', NULL, 'http://www.chunnyun.com/', '매일 18:00 ~ 24:00', '5호선 종로3가역 5번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4273', '오장동흥남집', '중구', '서울 중구 마른내로 114 (흥남집)', '02-2266-0735', 'http://www.xn--q20bn4dn1w9mbrxe3z4a.com/', '11:00~20:30', '2호선 을지로4가역 8번 출구', '회 비빔냉면 고기비빔냉면 섞임냉면 물냉면');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4324', '현대칼국수', '중구', '서울 중구 세종대로 76 (청남빌딩)', '02-752-9504', 'http://02-752-9504.kti114.net/', '평일 09:00~21:00 토  09:00~19:00', '1호선 시청역 7번 출구', '칼국수 섞어칼국수 물만두 현대 콩국수');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6214', '부산복집', '중구', '서울 중구 마른내로2길 14 (초동)', '02-2266-3236', NULL, '평일 11:00 ~ 22:00 토요일 11:30 ~ 21:00', '3호선 2호선 을지로3가역 9번 출구', '복매운탕 복지리 복불고기');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6248', '명동해물탕', '중구', '서울 중구 명동8길 11-6 (명동2가)', '02-776-3896', NULL, '10:00 ~ 24:00', '4호선 명동역 6번 출구', '해물탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6987', '황소집', '중구', '서울특별시 중구 충무로2길 2 (충무로3가)', '02-2273-0969', NULL, '매일 11:00 ~ 22:00', '3호선 충무로역 8번 출구', '도가니탕 도가니찜 숯불 생등심 ');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('8646', '고려삼계탕', '중구', '서울 중구 서소문로11길 1 (서소문동)', '02-752-9376', 'http://www.krsamgyetang.com', '매일 10:30 ~ 21:30', '1 2호선 시청역 10번 출구', '삼계탕 산삼삼계탕 전복삼계탕 오골계탕 ');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('29047', '장충동 족발골목', '중구', '서울 중구 장충단로 175 (장충동1가)', NULL, NULL, NULL, '3호선 동대입구역 3번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3211', '우래옥', '중구', '서울 중구 창경궁로 62-29 (우래옥)', '02-2265-0151', NULL, '11:20 ~ 21:00', '2 5호선 을지로4가역 4번 출구', '평양냉면 순면 불고기(150g)');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4698', '오우가', '중구', '서울 중구 명동8가길 42 (충무로2가)', '02-753-7533', NULL, '매일 11:30~00:00', '4호선 명동역 9번 출구', '대나무쌈밥 정식 녹차대나무식사 생갈비정식 삼겹살정식');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('7853', '진사댁', '중구', '서울특별시 중구 명동길 30-1 (명동2가)', '02-774-9605', NULL, '11:00 ~ 22:00', '4호선 명동역 6번 출구', '한정식');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('7925', '사마리칸트', '중구', '서울 중구 마른내로 159-10', '02-2277-4261', NULL, '매일 11:00 ~ 23:00', '245호선 동대문역사문화공원역 5번 출구', '양고기꼬치 양고기샤브샤브');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11806', '보건옥', '중구', '서울특별시 중구 창경궁로8길 12(주교동)', '02-2275-3743', NULL, '10:00 ~ 22:00', '2호선 을지로4가 4번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11947', '오다리집', '중구', '서울특별시 중구 명동8나길 28 (충무로1가)', '02-778-6767', 'http://www.odarijip.com', '10:00 ~ 23:00', '4호선 명동역 5번 출구 300m', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12582', '진고개', '중구', '서울특별시 중구 충무로 19-1 (충무로3가)', '02-2267-0955', NULL, '평일 11:00 ~ 15:00 / 17:00 ~ 21:30 주말 11:00 ~ 15:00 / 17:00 ~ 21:00', '3호선 충무로역 6번 출구', '갈비모듬 산적구이 불고기 불갈비 생등심');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12657', '진주회관', '중구', '서울특별시 중구 세종대로11길 26 (서소문동)', '02-753-5388', NULL, '평일 11:00 ~ 21:00 토요일 11:00 ~ 20:00', '1호선 시청역 9번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12801', '유림면', '중구', '서울 중구 서소문로 139-1 (서소문동)', '02-755-0659', NULL, '매일 11:00 ~ 21:00', '12호선 시청역 12번 출구', '메밀국수 냄비국수');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13036', '꽁시면관', '중구', '서울특별시 중구 명동2길 45 (충무로1가)', '02-778-8863', NULL, '10:30 ~ 21:00', '4호선 명동 5번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13174', '파주옥', '중구', '서울특별시 중구 마른내로2길 23 (초동)', '02-2267-6149', NULL, '11:00 ~ 22:00', '3호선 충무로역 6번 출구', '꼬리곰탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13316', '충무로돼지갈비', '중구', '서울특별시 중구 수표로6길 39 (충무로3가)', '02-2272-6428', NULL, '11:30 ~ 23:00  일요일 11:30 ~ 22:00', '3호선 충무로 6번 출구', '돼지갈비');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13321', '청송옥', '중구', '서울 중구 서소문로11길 14 (서소문동)', '02-754-1547', NULL, '10:00 ~ 22:00', '1호선 시청역 10번 출구', '소고기국밥');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13587', '오후청', '중구', '서울특별시 중구 남대문로1길 26-10 (북창동)', '02-777-0342', NULL, '10:00 ~ 15:00 / 17:00 ~  22:00', '1호선 시청역 7번 출구', '샤부샤부');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13599', '틈새라면', '중구', '서울특별시 중구 명동10길 19-10 (명동2가)', '02-756-5477', 'http://www.teumsae.com', '평일 10:00 ~ 20:00  주말 11:00 ~ 20:00', '4호선 명동역 8번 출구', '빨계떡 계떡 치즈빨계떡 빨부대');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14258', '춘천손칼국수', '중구', '서울특별시 중구 마른내로 23 (저동2가)', '02-2279-9885', NULL, '11:00 ~ 21:00', '2호선 을지로3가역 11번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14357', '나인스게이트그릴', '중구', '서울특별시 중구 소공로 106  (소공동)', '02-317-0366', 'https://twc.echosunhotel.com/dining/gateGrille.do?rstrntCode=NINTHGATE&wbOutlet=001', '평일 : 07:00 ~ 09:30 / 12:00 ~ 14:30 / 18:00 ~ 21:30 주말공휴일 : 12:00 ~ 15:00 / 18:00 ~ 22:00', '12호선 시청역 6번 출구', '블랙트러플로 향을 낸 포치니 버섯 소스의 카바텔리 허브와 레드 와인에 숙성한 양갈비 구이와 작두콩');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('10846', '명동돈가스', '중구 ', '서울특별시 중구 명동3길 8 (명동1가)', '02-775-5300', NULL, '11:00 ~ 21:00', '2호선 을지로입구역 6번 출구', '돈가스');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('10848', '무교동북어국집', '중구 ', '서울특별시 중구 을지로1길 38 (다동)', '02-777-3891', NULL, '평일 07:00~20:00  주말 공휴일 07:00~15:00', '1호선 시청 4번 출구', '북어해장국');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('10908', '루이키친M', '중구 ', '서울 중구 세종대로21길 40', '02-736-8889', NULL, '일~금 11:30~14:30 / 17:30~21:30', '5호선 광화문역 6번 출구', '삼선자장면 삼선짬뽕 팔진탕면 한알탕수육');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12841', '안동장', '중구 ', '서울특별시 중구 을지로 124 (을지로3가)', '02-2266-3814', NULL, '평일 11:30 ~ 21:30 주말 11:30 ~ 20:00', '3호선 2호선 을지로3가역 10번 출구', '굴짬뽕 삼선짬뽕 기스면');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13412', '필동면옥', '중구 ', '서울특별시 중구 서애로 26 (필동3가)', '02-2266-2611', NULL, '11:00 ~ 21:00', '3호선 충무로 1번 출구', '냉면');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13567', '마산집', '중구 ', '서울특별시 중구 세종대로14길 22-5 (북창동)', '02-752-2415', NULL, '11:30 ~ 14:30 / 17:00 ~ 22:00', '1호선 시청 7번 출구', '소고기국밥');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13930', '부산갈비', '중구 ', '서울특별시 중구 마른내로 107-1  (오장동)', '02-2279-5821', NULL, '11:00 ~ 22:00', '2호선 을지로4가 8번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14209', '더킹스', '중구 ', '서울 중구 동호로 287 (장충동2가 그랜드앰배서더서울)', '02-2270-3121', 'https://grand.ambatel.com/seoul/dining/diningInfo.amb?brand_code=M0452&gnbCode=020000&lnbCode=020200&menu_se=M1242', '아침 06:30 ~ 10:00 점심 11:30 ~ 14:30 저녁 18:00 ~ 21:30 토요일 디너 1부 17:30 ~ 19:30  2부 20:00 ~ 22:00', '3호선 동대입구역 12번 출구 4호선 충무로역 1번 출구', '뷔페');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('29098', '루프트 커피 명동점', '중구 ', '서울 중구 삼일대로 308 (조양빌딩본관) 1층', '02-2277-0872', 'https://luft.kr/index.html', '평일 08:00 ~ 19:30  주말 09:30 ~ 17:30', '4호선 명동역 10번 출구', '아메리카노 (루프트 서울 4900원 하와이 카우 5900원) 카페라떼 5900원 카페 바닐라 5900원');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('30911', '일도씨닭갈비 광화문점', '중구 ', '서울 중구 세종대로 136 (태평로1가 파이낸스빌딩) 지하 2층', '+82-2-3789-9007', NULL, '매일 10:00 - 22:00', '5호선 광화문역 5번 출구 1 2호선 시청역 4번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('38472', '한국의집 고호재', '중구 ', '서울 중구 퇴계로 지하 214 (충무로역 34호선) 한국의집 문향루', '02-2266-9101(3)', 'https://booking.naver.com/booking/12/bizes/375663/items/3492155', '- 1부 : 09:30 ~ 11:00(90분) 주문마감 10:00 - 2부 : 11:30 ~ 13:00(90분) 주문마감 12:00 - 3부 : 13:30 ~ 15:00(90분) 주문마감 14:00 - 4부 : 16:00 ~ 17:30(90분) 주문마감 16:30 - 5부 : 18:30 ~ 20:00(90분) 주문마감 19:00', '34호선 충무로역 3번 출구', '1인 다과상 16000원');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3714', '레더라', '중구 ', '서울 중구 세종대로 136 (파이낸스빌딩) 지하 1층', '02-3789-3245', 'http://www.laderach.co.kr/', '평일 9:00~22:00 주말공휴일 11:30~22:00', '5호선 광화문역 5번 출구', '초콜릿');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4541', '장수갈비집본가', '중구 ', '서울 중구 명동2길 54-1 (충무로1가)', '02-775-9292', NULL, '11:00 ~ 22:00 (Last order 21:15)', '4호선 명동역 5번 출구', '한식(장수갈비장수국밥)');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6028', '세림', '중구 ', '서울 중구 남대문로9길 24 (다동)', '02-319-4603', NULL, '11:00 ~ 15:00 / 17:00 ~ 22:00', '2호선 을지로입구역 2번 출구', '국수전골(1만5천원) 곱창전골 (1만 5천원)');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6438', '내고향식당', '중구 ', '서울특별시 중구 남대문시장길 18-3 (남창동)', '02-752-7954', NULL, '매일 07:00 ~ 19:30', '4호선 회현역 5번 출구', '갈치조림');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('9493', '아리랑', '중구 ', '서울 중구 남대문로7길 23 (소공동 전통한국식당)', '02-752-1342', NULL, '11:30 ~ 22:00', '2호선 을지로입구역 7번 출구', '숯불왕생갈비 숯불왕양념갈비 꽃등심 육회');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('10830', '막내횟집', '중구 ', '서울특별시 중구 남대문시장2가길 2 (남창동)', '02-755-5115', NULL, '10:00 ~ 23:30', '4호선 회현 5번 출구', '생선회');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12341', '란주라미엔', '중구 ', '서울 중구 소공로 64 (충무로1가 동남빌딩)', '02-779-4800', NULL, '매일 11:00 ~ 21:30', '4호선 명동역 5번 출구', '해물자장도삭면 사천짬뽕도삭면 해물볶음도삭면 사천탕수육');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12402', '무궁화 ', '중구 ', '서울 중구 을지로 30 (소공동 롯데호텔) 38층', '02-317-7061', 'http://www.lottehotel.com/seoul/ko/dining/resturants.asp?type=RE&seq=6&diningCd=KM', '매일 11:30~14:30 / 18:00~22:00', '2호선 시청역 8번 출구', '굴비구이반상 전복구이반상 한우등심구이반상 보양식 런치 ');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12637', '왕성식당', '중구 ', '서울 중구 남대문시장길 18-2 (남창동)', '02-752-9476', NULL, '07:00 ~ 19:00', '4호선 회현역 6번 출구', '생선조림');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13153', '타지', '중구 ', '서울특별시 중구 명동길 73 (명동1가)  YWCA연합회 B1', '02-776-3463', 'http://taj.co.kr/', '평일 11:30 ~ 15:00 / 17:00 ~ 22:00  주말 11:30 ~ 22:00', '23호선 을지로3가역 12번 출구', '치킨커리 오늘의채식커리');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13389', '평양면옥', '중구 ', '서울특별시 중구 장충단로 207 (장충동1가)', '02-2267-7784', 'https://pyungyangmyunok.modoo.at/', '매일 11:00 ~ 21:30', '2호선 동대문 역사 문화공원 4번 출구', '편육 제육 냉면');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13638', '홍연', '중구 ', '서울특별시 중구 소공로 106  (소공동)', '02-317-0494', 'https://www.marriott.co.kr/hotels/hotel-information/restaurant/selwi-the-westin-chosun-seoul/', '매일 12:00 ~ 15:00 / 18:00 ~ 22:00', '1호선 시청역 6번 출구', '런치코스 디너코스 딤섬');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13967', '만족오향족발', '중구 ', '서울특별시 중구 서소문로 134-7 (서소문동)', '02-753-4755', 'http://www.manjok.net/', '평일 11:30 ~ 22:00 주말 12:00 ~ 22:00', '1호선 시청역 8번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13993', '잼배옥', '중구 ', '서울특별시 중구 세종대로9길 68-9 (서소문동)', '02-755-8106', NULL, '09:00 ~ 22:00', '1호선 시청역 9번 출구', '설렁탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('25376', '을지다방', '중구 ', '서울 중구 을지로 124-1 (을지로3가) 2층', '02-2272-1886', NULL, '매일 06:00 - 21:00', '2호선 을지로3가역 10번 출구 3호선 을지로3가역 10번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('29991', '하이비스', '중구 ', '서울 중구 통일로 102 (의주로1가 바비엥-1) 2층', '02-577-3434', 'https://www.hibis.co.kr/', '06:30~22:00', '5호선 서대문역 6번 출구 1·2호선 시청역 10번 출구 2·5호선 충정로역 3번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('42098', '챔프커피 제3작업실', '중구 ', '서울 중구 을지로 157 (산림동 대림상가) 라열 3층 381호', NULL, NULL, '11:30 ~ 20:00', '2호선 5호선 을지로4가역 1번출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6016', '리북손만두', '중구 ', '서울 중구 무교로 17-13 (무교동)', '02-776-7361', NULL, '평일 11:00 ~ 16:00 / 17:00 ~ 21:00  토요일 11:00 ~ 16:00 / 17:00 ~ 20:00', '1호선 시청역 4번 출구', '만두국 접시만두 김치말이밥 김치말이국수');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6075', '문화옥', '중구 ', '서울 중구 창경궁로 62-5 (주교동)', '02-2265-0322', NULL, '06:00 ~ 21:00', '5호선 을지로4가역 4번 출구', '설렁탕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6851', '명화당', '중구 ', '서울특별시 중구 명동4길 30 (명동2가)', '02-777-7317', NULL, '09:00 ~ 22:30', '4호선 명동역 6번 출구', '쫄볶이 냄비국수 비빔쫄면 손만두 김밥');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6970', '조선옥', '중구 ', '서울 중구 을지로15길 6-5', '02-2266-0333', NULL, '매일 11:30~21:30', '2호선 을지로3가역 6번 출구', '양념소갈비 갈비탕 대구탕 장국밥');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('8570', '명동교자', '중구 ', '서울 중구 명동10길 29', '02-776-5348', 'http://www.mdkj.co.kr', '평일 10:30~20:30 주말공휴일 10:30~21:30', '4호선 명동역 8번 출구 을지로 방향으로 150m', '칼국수 비빔국수 만두 ');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12354', '속초생태집', '중구 ', '서울특별시 중구 남대문로 25-17 (북창동)', '02-753-8944', NULL, '월~ 금 10:30 ~ 21:30 토요일 10:30 ~ 20:30', '1호선 시청역 7번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12375', '영양센터', '중구 ', '서울 중구 명동2길 52 (충무로1가 대용빌딩)', '02-776-2015', NULL, '10:30 ~ 22:30', '4호선 명동역 5번 출구', '전기구이통닭');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12424', '정원순두부', '중구 ', '서울 중구 세종대로11길 33 (서소문동)', '02-755-7139', NULL, '평일 10:00 ~ 16:00 / 17:00 ~ 22:00 토요일 10:30 ~ 15:00', '1호선 시청역 9번 출구', '굴순두부 순두부 소고기순두부');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12430', '명동부대찌개', '중구 ', '서울 중구 명동길 25-7 (명동1가)', '02-752-6800', NULL, '매일 10:00 ~ 22:00', '2호선 을지로입구역 6번 출구', '사골부대찌개');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14047', '남산설렁탕', '중구 ', '서울특별시 중구 소파로 91 (예장동)', '02-777-3959', NULL, '06:00 ~ 22:00', '4호선 명동역 3번 출구', '설렁탕 ');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14102', '정동국시', '중구 ', '서울특별시 중구 정동길 5 (정동)', '02-732-0114', NULL, '평일 11:30 ~ 14:00 / 16:00 ~ 21:00 토요일 11:30 ~ 20:00', '5호선 서대문역 5번 출구', '국수');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('30957', '강가 무교점', '중구 ', '서울 중구 세종대로 136 (태평로1가 파이낸스빌딩)', '02-3783-0610', 'http://www.ganga.co.kr', '11:30 ~ 14:30 / 17:00 ~ 21:00', '5호선 광화문역 5번 출구 1 2호선 시청역 4번 출구', '탄두리 치킨 26500원 팔락 파니르 24500원 치킨 마크니 23500원 프로운 칠리 25500원');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('42306', '[백년가게] 풍남골뱅이', '중구 ', '서울 중구 수표로 50-1 (을지로3가)', '02-2265-2336', NULL, '15:30 ~ 23:00', NULL, '골뱅이 계란말이 등');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2876', '미성옥 ', '중구 ', '서울 중구 명동길 25-11', '02-776-8929', NULL, '매일 06:00 ~ 21:00', '2호선 을지로입구역 6번 출구', '설렁탕 수육');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3426', '너비집', '중구 ', '서울 중구 명동9길 37-8 (을지로2가)', '02-756-4084', NULL, '10:00 ~ 22:00', '2호선 을지로입구역 5번 출구', '생왕갈비 매운갈비찜');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6397', '개화', '중구 ', '서울 중구 남대문로 52-5 (명동2가)', '02-776-0508', NULL, '11:30 ~ 23:00', '4호선 명동역 5번 출구 4호선 회현역 7번 출구', '짜장면 짬뽕 볶음밥 탕수육');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('10737', '남매집', '중구 ', '서울특별시 중구 남대문로1길 41 (북창동)', '02-777-0735', NULL, '매일 12:30 ~ 23:00', '1 2호선 시청역 7번 출구', '곰장어구이 돼지고추장구이');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11581', '콩두', '중구 ', '서울 중구 덕수궁길 116-1 서울 역사박물관 1층', '02-722-7002', 'https://congdu.modoo.at/', '매일 11:30~15:00 / 18:00~22:00', '5호선 광화문역 6번 출구', '초록빛 코스 햇빛 코스 물빛 코스');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12136', '도원 ', '중구 ', '서울 중구 소공로 119 (서울프라자호텔) 더플라자호텔 3층', '02-310-7300', 'https://www.hoteltheplaza.com/kr/dining/taoyuen.jsp', '매일 11:30~14:30 / 18:00~22:00', '1 2호선 시청역 6번 출구', '약식동원 츄셩뤄 수석 셰프 특선');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12137', '도향촌', '중구 ', '서울 중구 명동2길 26 (명동2가)', '02-776-5671', 'http://www.dhcmooncake.com', '월~토 10:00 ~ 20:30 일 11:00 ~ 18:00', '4호선 명동역 5번 출구', '편로수 장원병 산동팔보 지마병 천층수 십경월병');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('30866', '구르카 인도레스토랑', '중구 ', '서울 중구 명동10길 16-1 5층', '050-7458-8860', NULL, '10:30 - 22:30', '4호선 명동역 8번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('39727', '더 스팟 패뷸러스', '중구 ', '서울 중구 명동2길 22 (명동2가) 12층', '02-779-1981', 'https://www.instagram.com/the_spot_fabulous_/', '10:00 ~ 22:30', '4호선 명동역 5번 출구에서 311m', '흑임자 슈페너 6800원 수제 바닐라 라떼 6500원 씨트러스 펀치 에이드 7500원');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('39732', '무네이 카페', '중구 ', '서울 중구 마른내로4길 11 (인현동1가)', '070-7769-0331', 'http://munei.co.kr/', '월~토 12:00 ~ 22:00 일요일 12:00 ~ 21:00', '2호선 3호선 을지로 3가역 8번 출구에서 226m', '무네이라떼 6500원 아이스톤 7000원 브루잉 6000원');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3164', '남포면옥(중구)', '중구 ', '서울특별시 중구 을지로3길 24 (다동)', '02-777-3131', NULL, '월 ~ 금 11:30 ~ 22:00<br>토 ~ 일 11:30 ~ 21:00', '2호선 을지로입구역 1 2번 출구', '냉면 갈비탕 어복쟁반');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4409', '비꼴로', '중구 ', '서울 중구 명동10길 7-3 (명동2가)', '02-756-0908', NULL, '11:30 ~ 22:30', '4호선 명동역 8번 출구 2호선 을지로입구역 56번 출구', '까르보나라 리키토니 크림파스타 루꼴라 프루슈토 피자');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5614', '하동관 ', '중구 ', '서울 중구 명동9길 12 (명동1가)', '02-776-5656', 'http://www.hadongkwan.com/', '매일 07:00~16:00', '2호선 을지로입구역 5번 출구', '곰탕 수육');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12492', '오장동함흥냉면', '중구 ', '서울 중구 마른내로 108 (오장동 오장동함흥냉면)', '02-2267-9500', 'https://ojangmyeonok.modoo.at/', '11:00 ~ 20:00 (Break Time 15:30 ~ 17:00)', '2호선 을지로4가역 8번 출구', '냉면');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13594', '죽향', '중구 ', '서울특별시 중구 마른내로 14 (저동2가)', '02-2265-1058', NULL, '평일 08:00~21:00 일 08:00~19:00', '2호선 을지로3가 12번 출구', '전복죽 바지락 순두부죽 토종닭죽 낙지김치죽');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13997', '레오니다스초콜릿카페', '중구 ', '서울특별시 중구 명동길 62  (명동1가)', '02-318-1312', 'http://leonidas.kr', '08:00~23:00', '4호선 명동 8번 출구', '초콜릿');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14038', '소공죽집', '중구 ', '서울 중구 서소문로 139', '02-752-6400', NULL, '평일 08:00 ~ 21:00 주말 08:00 ~ 17:00', '1호선 시청역 7번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14767', '목멱산방', '중구 ', '서울 중구 퇴계로20길 71 (남산동2가)', '02-318-4790', 'https://mmmroom.co.kr/', '11:00 ~ 20:00', '4호선 명동역 2번 출구', '일반한식');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14919', '안즈', '중구 ', '서울 중구 을지로5길 19 (수하동 FERRUM TOWER) 지하1층', '02-726-4057', NULL, '평일 10:30 ~ 14:20 / 16:30 ~ 21:30 주말 11:00 ~ 14:20 / 16:30 ~ 21:00', '2호선 을지로입구역 3번 출구', '로스카츠정식 긴죠 특로스 카츠정식 새우후라이히레정식');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('30808', '함초간장게장', '중구 ', '서울 중구 명동8가길 27 (충무로2가) 지하 1층', '02-318-1624', NULL, '매일 11:30 ~ 22:00', '4호선 명동역 8번 출구', '전복장 간장게장정식');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('41666', '구정옥', '중구 ', '서울 중구 세종대로14길 28 (북창동)', '02-775-3337', 'instagram.com/gujeongok', '11:00 ~ 14:00 / 17:00 ~ 22:00', '1호선 시청역 7번 출구', '한우숙성등심 한우차돌박이 모듬수육 한우해장전골');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2486', '팔선', '중구 ', '서울 중구 동호로 249 (신라호텔) 2층', '02-2230-3366', 'http://www.shilla.net/seoul/dining/viewDining.do?contId=PAL#', '매일 12:00 ~ 14:30 / 17:30 ~ 21:30', '3호선 동대입구역 5번 출구', '정 세트 가 세트 삼선짜장');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2704', '컨퍼런스하우스달개비', '중구 ', '서울특별시 중구 세종대로19길 16 (정동)', '02-765-2035', NULL, '평일 07:30 ~ 21:30 토요일 10:00 ~ 21:30', '1호선 시청역 3번출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2877', '한국회관', '중구 ', '서울 중구 을지로3길 30-5', '02-753-9292', NULL, '매일 11:30 ~ 22:00', '2호선 을지로입구역 2번 출구', '꽃등심 오겹살 김치전골');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3432', '아리아께', '중구 ', '서울 중구 동호로 249 (신라호텔) 2층', '02-2230-3356', 'http://www.shilla.net/seoul/dining/viewDining.do?contId=ARI#ad-image-0', '매일 12:00 ~ 14:30 / 17:30 ~ 21:30', '3호선 동대입구역 5번 출구', '스키야키 사치 스시 코스');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4596', '행화촌', '중구 ', '서울 중구 남대문로 52-5 (대한문화예술공사)', '02-771-0172', 'http://henghwachon.cityfood.co.kr/', '월~토 11:00 ~ 22:00', '4호선 명동역 5번 출구', '탕수육 간짜장 양장피');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11007', '마복림 할머니 막내 아들네 떡볶이', '중구 ', '서울특별시 중구 다산로 221  (신당동)', '02-962-8288', 'http://xn--220b9hl7b09cc7ibcj00gh4p49w8p4b.com/', '24시간', '2 6호선 신당역 8번 출구 300m 직진', '떡볶이');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12034', '송옥', '중구 ', '서울 중구 남대문로1길 11', '02-752-3297', NULL, '평일 11:00 ~ 20:30   주말 11:00 ~ 20:00', '4호선 회현 56번 출구', '메밀국수 유부우동 튀김우동 돌냄비우동 메밀비빔국수 메밀송옥국수');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12175', '야래향', '중구 ', '서울특별시 중구 퇴계로10길 14 (회현동1가)', '02-752-3991', NULL, '매일 11:30 ~ 22:00', '4호선 회현역 1번 출구', '광동식하얀굴짬뽕 탕수육 오향장육 해삼전복 전가복 깐풍가지 유니간짜장');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('24556', '이비스스타일 앰배서더 명동 르스타일 레스토랑&바', '중구 ', '서울 중구 삼일대로 302 (충무로2가) 21층', '02-6020-8880', 'https://www.ambatel.com/ibisstyles/myeongdong/ko/main.do', '중식 12:00 ~ 14:30 석식 18:00 ~ 22:30 바 18:00 ~ 22:30  일요일 12:00 ~ 17:00 까지만 운영', '4호선 명동역 10번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('25748', '씨제이더마켓 제일제당센터점', '중구 ', '서울 중구 동호로 330 (쌍림동 씨제이제일제당센터) 지하1층', '02-6740-7952', 'https://www.instagram.com/CJOlivemarket/', '평일 09:00 - 21:00 주말 11:00 - 21:00', '동대문역사문화공원역 24호선 5번 출구 5호선 6번 출구', '비비고 닭한마리 죽 제주 오겹살과 멜젓소스가 만난 고기 쌈밥정식 문어랑 해초랑 비빔밥');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('28174', '명동 오리엔탈 힐링카페', '중구 ', '서울 중구 퇴계로14길 1 (회현동3가 뉴오리엔탈호텔) 2층', '02-752-4066', 'https://www.instagram.com/orientalhealing/', '매일 10:00 - 23:00', '4번 명동역 4번 출구', '아메리카노 시그니처 아인슈페너 한라봉차 오미자차 딸기요거트스무디');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('1465', '장추 민물장어', '중구 ', '서울 중구 수표로4길 7 (충무로3가)', '02-2274-8992', NULL, '평일 11:30 ~ 22:00', '34호선 충무로역 6번 출구', '장어구이 장어정식 장어덮밥');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2436', '부민옥', '중구 ', '서울 중구 다동길 24-12 (다동)', '02-777-2345', NULL, '월~토 11:00 ~ 14:00 / 17:00 ~ 22:00', '2호선 을지로입구역 1번 출구', '육개장 양곰탕 복국 선지국 양무침');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('3122', '남문토방', '중구 ', '서울 중구 남대문시장길 45-3 (남창동) 지하 1층', '02-778-6727', NULL, '10:00 ~ 22:00', '4호선 회현 7번출구 신세계백화점 골목 도보 3분거리', '유황오리훈제샤브샤브 유황오리더덕주물럭 추어탕 미꾸라지튀김');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4852', '헤르지아', '중구 ', '서울 중구 소파로 97 (예장동)', '02-319-5150', NULL, '매일 10:30 ~ 21:00', '4호선 명동역 4번 출구', '베이컨 까르보나라 왕돈까스 매운치즈돈까스 함박스테이크');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5228', '명동함흥면옥', '중구 ', '서울 중구 명동10길 35-19 (명동2가)', '02-776-8430', NULL, '매일 10:30 ~ 20:00', '4호선 명동역 8번 출구', '회냉면 물냉면 비빔냉면 홍어회');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6054', '충무김밥', '중구 ', '서울 중구 명동10길 8 (명동2가)', '02-755-8488', NULL, '평일 09:30 ~ 22:00 주말 09:00 ~ 22:00', '4호선 명동역 8번 출구', '충무김밥 ');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6962', '강서면옥 ', '중구 ', '서울 중구 세종대로11길 35', '02-752-1945', NULL, '매일 11:00~22:00', '2호선 시청역 9번출구 중앙일보방향 외환은행 골목 50m    1호선 시청역 9번출구 중앙일보방향 외환은행 골목 50m', '평양물냉면 함흥비빔냉면 삼겹살');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('8613', '쯔루하시 후게츠', '중구 ', '서울 중구 명동8길 21-5 (명동2가) 2층', '02-3789-5920', 'http://www.fugetsu.co.kr ', '매일 11:30 ~ 21:00', '4호선 명동역 6번 출구', '오코노미야키 야끼소바 일품요리');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11702', '라칸티나 ', '중구 ', '서울 중구 을지로 19 (을지로1가 삼성빌딩) 삼성빌딩 지하 1층', '02-777-2579', NULL, '매일 11:30 ~ 15:00 / 17:00 ~ 22:00 공휴일 17:00 ~ 22:00', '2호선 을지로입구역 1-1번 출구', '쇠고기 소스 파스타 버터와 로마노 치즈 파스타 버섯소스 파스타');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11853', '부산갈매기', '중구 ', '서울특별시 중구 남대문로 25-20 (북창동)', '02-773-8146', NULL, '평일 11:00 ~ 21:30 토요일 11:00 ~ 21:00', '1호선 시청역 7번 출구', '생대구탕 생태매운탕 홍어무침');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12060', '송죽', '중구 ', '서울 중구 수표로2길 26 (필동1가)', '02-2265-5129', NULL, '평일 07:00 - 20:00 주말 07:00 - 14:00 공휴일 07:00 - 14:00', '3호선 충무로 6번 출구', '죽');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12080', '음악의 숲', '중구 ', '서울 중구 동호로 192 (신당동)', '02-2274-2254', NULL, '18:00 ~ 24:00', '3 6호선 약수역 2번출구', '테마카페');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12295', '영덕회식당', '중구 ', '서울특별시 중구 창경궁로1길 6 (충무로4가)', '02-2267-0942', NULL, '평일 12:00 ~ 22:00   토요일 12:00 ~ 17:00', '3호선 충무로 8번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13122', '충무로쭈꾸미불고기', '중구 ', '서울특별시 중구 퇴계로31길 11 (필동1가)', '02-2279-0803', 'https://jjubulgogi.modoo.at/', '12:00 ~ 22:00 토요일 12:00 ~ 21:30', '3호선 충무로역 5번 출구', '주꾸미');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('26194', '태극당', '중구 ', '서울 중구 동호로24길 7 (장충동2가 태극당)', '02-2279-3152', 'http://www.taegeukdang.com/', '매일 08:00~22:00', '3호선 동대입구역 3번출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('8782', '원할머니본가 본점', '중구 ', '서울 중구 난계로 201 (황학동 황학동 원할머니보쌈 사옥)', '02-2232-3232', 'http://www.bossam.co.kr ', '매일 11:30~22:30', '1호선 신설동역 6번 출구 2호선 신당역 2번 출구', '한돈 맛보쌈 한돈 모둠보쌈 한바탕 세트 부드러운 족발');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('8058', '일품향', '중구 ', '서울 중구 남대문로 52-13', '02-753-6928', NULL, '매일 11:00~15:00 / 16:30~22:00', '4호선 명동역 5번 출구', '잡채밥 삼선우동 짬뽕');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('28279', '남대문 한옥카페', '중구 ', '서울 중구 남대문로 11 (남대문로4가)', '070-4509-9100', 'http://www.hanok-cafe.co.kr/', '평일 8:00 ~ 21:00 주말 10:00 ~ 19:00', '4호선 회현역 6번 출구에서 413m', '인절미블랜디드 5500원 히비수정과 6500원 에스프레소 3500원 룽고 4000원');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6070', '타니넥스트도어', '중구 ', '서울 중구 남대문로 73 (AVENUEL) 9층', '02-2118-6100', 'http://www.taninextdoor.com/', '매일 12:00 ~ 14:30 / 17:00 ~ 22:00', '2호선 을지로입구역 7번 출구', '런치세트 디너코스');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('1005', '가무', '중구 ', '서울 중구 명동4길 16', '02-776-3141', NULL, '매일 11:00 ~ 23:00', '4호선 명동역 5번 출구', '비엔나 커피 (6천원)');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6284', '동표골뱅이', '중구 ', '서울 중구 명동9길 43 (을지로2가)', '02-778-1322', NULL, '평일 16:00 - 01:00 토 16:00 - 23:30', '2호선 을지로입구 5번 출구', '골뱅이 계란말이 노가리 먹태');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6152', '백제삼계탕', '중구 ', '서울 중구 명동8길 8-10 (명동2가)', '02-776-3267', NULL, '09:00 ~ 22:00', '2호선 을지로입구역 6번 출구', '삼계탕 통닭 전복죽');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12045', '산동교자', '중구 ', '서울 중구 명동2길 26 (명동2가)', '02-778-4150', NULL, '매일 11:00 ~ 21:30', '4호선 명동역 5번 출구', '오향장육 짜장면 탕수육 물만두');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14938', '사프란', '중구 ', '서울 중구 삼일대로 362 (장교동 롯데시티호텔 명동) 2층', '02-6361-8644', NULL, '11:30 ~ 22:00', '23호선 을지로3가역 1번 출구', '치킨한디 램브한디 홈모스');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('6191', '카페마마스 서소문점', '중구 ', '서울 중구 서소문로 81 (순화동 혜명빌딩)', '02-776-1046', 'http://cafemamas.co.kr/', '매일 10:30 ~ 20:00 (Last Order 19:30)', '12호선 시청 10번 출구', '모짜렐라 토마토 파니니 쇠고기가지 파니니 리코타 샐러드');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('5661', '스시조', '중구 ', '서울 중구 소공로 106 (소공동 서울 웨스틴조선호텔)', '02-317-0314', 'https://www.josunhotel.com/hotel/westinSeoul.do', '매일 12:00~14:30 / 17:30~21:30', '12 호선 시청역 6번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('12335', '영락골뱅이', '중구 ', '서울 중구 수표로 52 (을지로3가)', '02-2264-9489', NULL, '매일 13:00 ~ 02:00', '3호선 을지로3가역 12번 출구', '골뱅이무침');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('11594', '오구반점 ', '중구 ', '서울 중구 수표로 60', '02-2267-0516', NULL, '월~토 11:00 ~ 15:00 / 17:00 ~ 21:30 (Last order 21:00)', '3 2호선 을지로3가역 2번 출구', '짜장면 짬뽕 간짜장 울면');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('14778', '라세느', '중구 ', '서울특별시 중구 을지로 30 (소공동) 롯데호텔서울 본관 1층', '02-317-7171', 'http://www.lottehotel.com/seoul/ko/dining/resturants.asp?type=RE&seq=3&diningCd=LA', '<평일> 월~목 11:30~14:30 / 18:00~21:30 금 11:30~14:30 / 18:00~22:00  <주말> 11:30~14:00 (점심 1부) 14:00~16:00 (점심 2부) 17:30~19:30 (저녁 1부) 20:00~22:00 (저녁 2부)', '2호선 을지로입구 7번 출구', NULL);
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('42370', '[백년가게] 뚱뚱이할머니집', '중구 ', '서울 중구 장충단로 174-1 (장충동1가)', '02-2279-2714', 'https://blog.naver.com/kimsh00921', '10:00 ~ 23:30', NULL, '족발 쟁반국수 파전 등');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13454', '평안도 족발집', '중구 ', '서울특별시 중구 장충단로 174-6 (장충동1가)', '02-2279-9759', NULL, '일~토 12:00 ~ 22:00', '3호선 동대입구 3번 출구', '족발 녹두빈대떡 막국수');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13743', '은주정', '중구 ', '서울 중구 창경궁로8길 32 (주교동)', '02-2265-4669', NULL, '11:30 ~ 22:00', '2호선 을지로4가역 4번 출구', '삼겹살 생고기김치찌개 생삼겹살');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('13141', '서대문곱창', '중구 ', '서울 중구 충무로2길 35 (충무로4가)', '02-2266-4345', NULL, '17:00 ~ 24:00', '3호선 충무로역 8번 출구', '양곱창');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('8564', '사랑방칼국수', '중구 ', '서울 중구 퇴계로27길 46', '02-2272-2020', NULL, '평일 10:30~21:40 토 10:30~21:00 일 10:30~16:00', '3호선 충무로역 6번 출구', '칼국수 닭곰탕 백숙백반 통닭 백숙');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('4149', '만복림', '중구 ', '서울 중구 후암로 98 (남대문로5가 LG서울역빌딩)', '02-753-5693', 'http://www.manbokrim.co.kr/', '매일 11:30 ~ 22:00', '4호선 1호선 공항철도 경의중앙선 서울역 10번 출구', '팔진초면 청경채소고기야채볶음 닭고기캐슈넛 새우칠리소스');
INSERT INTO RESTRAUNT (RES_NO, RES_NAME, STATE, ADDRESS, RES_PHONE, WEBSITE, RES_TIME, TRASPORT, RES_FOOD)
VALUES ('2714', '채선당(신내점)', '중랑구 ', '서울 중랑구 용마산로 623 (신내동 삼부그린스포츠센터)', '02-3421-0313', 'http://www.chaesundang.co.kr ', '매일 11:00 ~ 22:00', '7호선 상봉역 2번 출구 240 260번 버스를 타고 신내초등학교 앞 하차. 도보 1분', '월남쌈샤브 월남쌈한우샤브 해물샤브 스페셜모듬샤브');

