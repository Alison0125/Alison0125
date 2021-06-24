
select * 
from dbo.job
INNER JOIN dbo.JobStatus
ON job.Id=JobStatus.Id
where status = 'open'
