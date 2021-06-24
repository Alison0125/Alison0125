
select  P.name,P.Id
from dbo.ownerproperty AS OP
INNER Join dbo.Property AS P 
ON OP.PropertyId=P.Id
WHERE OP.OwnerId=1426
