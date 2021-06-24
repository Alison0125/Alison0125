

select PF.PropertyId,PF.Yield
from dbo.PropertyFinance As PF
INNER Join OwnerProperty as OP
ON PF.PropertyId=OP.PropertyId
where OwnerId = 1426
