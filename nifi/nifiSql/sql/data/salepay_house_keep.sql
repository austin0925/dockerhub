use data;

select top 1 * from data..salepay;

select count(*) countall
, min(logdate) min_logdate
, max(logdate) max_logdate
-- delete
from data..salepay
--where logdate between '2013-01-01 00:00:00' and '2017-03-31 23:59:59'
;


|countall   |min_logdate|max_logdate|
|-----------|-----------|-----------|
|12870464   |2017-01-01 |2021-03-31 |
