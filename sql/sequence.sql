--sequence

drop SEQUENCE EMAILLIST_SEQ;

create SEQUENCE guestbook_seq
start with 1
INCREMENT by 1
MAXVALUE 9999999999;


select * from GUESTBOOK g;