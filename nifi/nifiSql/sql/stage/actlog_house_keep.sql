use stage;

select top 1 * from stage..actlog;

select count(*) countall
, min(invTm) min_invtm
, max(invTm) max_invtm
-- delete
from stage..actlog
--where invtm between '2013-01-01 00:00:00' and '2017-12-31 23:59:59'
where invtm between '2013-01-01 00:00:00' and '2017-12-31 23:59:59'
;

