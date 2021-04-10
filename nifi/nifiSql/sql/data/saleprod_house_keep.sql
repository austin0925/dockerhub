use data;

select top 1 * from data..saleprod;

select count(*) countall
, min(logdate) min_logdate
, max(logdate) max_logdate
-- delete
from data..saleprod
--where logdate between '2013-01-01 00:00:00' and '2017-12-31 23:59:59'
;



|countall   |min_logdate|max_logdate|
|-----------|-----------|-----------|
|11325703   |2018-01-01 |2021-03-31 |
