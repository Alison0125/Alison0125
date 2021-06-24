
select PV.PropertyId, PV.Value 
from dbo.PropertyHomeValue AS PV
INNER JOIN dbo.OwnerProperty AS OP
ON PV.PropertyId = OP.PropertyId
where OwnerId = 1426
