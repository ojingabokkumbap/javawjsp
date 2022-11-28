show tables;

create table member (
 -- 회원 고유 번호
 idx int not null auto_increment,
 -- 회원 아이디 (중복 불허)
 mid varchar(20) not null,
 -- 비밀번호(SHA암호화 처리 -> 무조건 100byte 이상 줘야 함)
 pwd varchar(100) not null,
 -- 닉네임 (중복 불허 , 닉네임 변경은 가능)
 nickName varchar(20) not null,
 -- 이름
 name varchar(20) not null,
 -- 성별
 gender varchar(5) default '남자',
 -- 생일
 birthday datetime default now(),
 -- 전화번호(선택 사항 예. 010-1234-1234)
 tel varchar(15), 
 -- 주소(상품 배달 시 기본주소로 사용처리)
 address varchar(100),
 -- 이메일 (아이디/비밀번호 분실 시 사용) 형식체크필수
 email varchar(50) not null,
 -- 홈페이지(블로그) 주소
 homePage varchar(50) not null,
 -- 직업(회원 직업)
 job varchar(20),
 -- 취미(2개 이상은 '/'로 구분 처리)
 hobby varchar(20),
 -- 사진
 photo varchar(100) default 'noimage.jpg', 
 -- 자기소개
 content text, 
 -- 유저 정보 공개여부(공개/비공개)
 userInfor char(10) default '공개',
 -- 탈퇴신청여부(OK:탈퇴 신청한 회원 / NO:현재 가입 중인 회원)
 userDel char(2) default 'NO',
 -- 회원 포인트(가입 시 기본 100p 증정, 방문 시마다 1회 10p 증정, 최대 일일 50포인트 까지)
 point int default 100,
 -- 회원등급(0:관리자 / 1:준회원 / 2:정회원 / 3:우수회원 / 4:운영자)
 level int default 1, 
 -- 방문횟수
 visitCnt int default 0,
 -- 최초 가입 날짜
 startDate datetime default now(),
 -- 마지막 접속 날짜
 lastDate datetime default now(),
 -- 오늘 방문한 횟수
 todayCnt int default 0,
 
 -- 주키 : idx(고유번호), mid(아이디) 테이블 연동용흠..........
 primary key(idx,mid)
);

desc member;

drop table member;

insert into member values(default,'admin','1234','관리맨','관리자',default,default,'010-1234-5678','충북 청주서 서원구 사운로93','yoohee@naver.com','op.gg','프리랜서','게임/등산',default,'관리자입니다.',default,default,default,0,default,default,default,default);

select * from member;