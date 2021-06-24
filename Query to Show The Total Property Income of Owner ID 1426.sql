
select sum(datediff(day, Startdate, Enddate)/7/FrequencyType * Amount) as TotalPayment
from dbo.PropertyRepayment AS Pay
INNER Join dbo.OwnerProperty AS OP
ON Pay.PropertyId = OP.PropertyId
where op.OwnerId = 1426
GROUP By OP.OwnerId
