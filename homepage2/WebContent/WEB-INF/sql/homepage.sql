drop table homepage--테이블 삭제
select *from member
delete MEMBER
create table homepage(
	id varchar(30) not null, -- 아이디
	no number(7) default 0,--글번호
	passwd varchar(30) not null, --비밀번호
	email varchar(50) not null unique, --이메일
	pfname varchar(50)  DEFAULT 'pfname.jpg', --프로필사진
	mdate date not null, --날짜
	grade char(1) DEFAULT 'H', --회원등급
	fname varchar(50) null, --업로드사진
	Nationality varchar(20) not null, --국적
	likecnt number(7), --좋아요
	PRIMARY KEY (id)
)


INSERT INTO homepage(id, passwd, email, zipcode,  
address1,address2, job, mdate, fname, grade) 
VALUES('admin', '1234', '관리자', '123-1234', 'admin@mail.com',  
'123-123','인천시', '남동구' ,'A01', sysdate, 'member.jpg', 'A'); 
       
INSERT INTO member(id, passwd, mname, tel, email, zipcode,  
address1,address2, job, mdate, fname, grade) 
VALUES('user1', '1234', '개발자1', '123-1234', 'email1@mail.com',  
'123-123','인천시', '남동구' ,'A01', sysdate, 'man.jpg', 'H'); 