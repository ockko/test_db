use sqldb;

select *
from usertbl;

show index from usertbl;

show table status like 'usertbl';

create index idx_usertbl_addr
    on usertbl (addr);

show index from usertbl;

show table status like 'usertbl';

analyze table usertbl;

show table status like 'usertbl';

create index idx_usertbl_birtyYear
    on usertbl (birthYear);

create index idx_usertbl_name
    on usertbl (name);

show index from usertbl;

drop index idx_usertbl_name
    on usertbl;

create index idx_usertbl_name_birtyYear
    on usertbl (name, birthYear);

show index from usertbl;

drop index idx_usertbl_addr
    on usertbl;

drop index idx_usertbl_birtyYear
    on usertbl;

drop index idx_usertbl_name_birtyYear
    on usertbl;

show index from usertbl;