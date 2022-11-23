show tables;

create table guest(
	-- 고유번호
	idx int not null auto_increment primary key,
	-- 방문자 성명
	name varchar(20) not null,
	-- 이메일 주소
	email varchar(60),
	-- 홈페이지 주소
	homePage varchar(60),
	-- 방문 날짜
	visitDate datetime default now(),
	-- 방문자 아이피주소
	hostIp varchar(50) not null, 
	-- 글 내용
	content text not null
);

desc guest;

insert into guest values (default,'관리자','yooheez@naver.com','op.gg',default,'192.168.50.218','방명록 서비스를 개시합니다.');

select * from guest;