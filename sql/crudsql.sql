-- test sql

--insert 
insert into GUESTBOOK VALUES(guestbook_seq.nextval, '둘리', '하하하하하하', '123', sysdate);
insert into GUESTBOOK VALUES(guestbook_seq.nextval, '마이콜', '라면은', '123', sysdate);

--delete
delete from guestbook where no = 2 and password='1234';

commit;

--select
select no, name , content,password, to_char(req_date,'yyyy-mm-dd hh:mi:ss') from GUESTBOOK order by req_date  desc;

