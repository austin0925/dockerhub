use data;

select top 1 * from data..actlogamount;

select count(*) countall
, min(invTm) min_invtm
, max(invTm) max_invtm
-- delete
from data..actlogamount
--where invtm between '2013-01-01 00:00:00' and '2017-12-31 23:59:59'
where invtm between '2013-01-01 00:00:00' and '2017-12-31 23:59:59'
;

